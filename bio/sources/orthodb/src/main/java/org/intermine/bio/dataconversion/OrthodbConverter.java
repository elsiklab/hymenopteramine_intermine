package org.intermine.bio.dataconversion;

/*
 * Copyright (C) 2002-2021 FlyMine
 *
 * This code may be freely distributed and modified under the
 * terms of the GNU Lesser General Public Licence.  This should
 * be distributed with the code.  See the LICENSE file for more
 * information or http://www.gnu.org/copyleft/lesser.html.
 *
 */

import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;

import org.apache.commons.collections.keyvalue.MultiKey;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.intermine.bio.util.OrganismData;
import org.intermine.bio.util.OrganismRepository;
import org.intermine.dataconversion.ItemWriter;
import org.intermine.metadata.Model;
import org.intermine.objectstore.ObjectStoreException;
import org.intermine.util.FormattedTextParser;
import org.intermine.metadata.StringUtil;
import org.intermine.xml.full.Item;

/**
 * Orthodb data Converter
 *
 * @author Julie Sullivan
 */
public class OrthodbConverter extends BioFileConverter
{
    private static final Logger LOG = Logger.getLogger(OrthodbConverter.class);

    // Get these from project.xml instead:
    //private static final String DATASET_TITLE = "OrthoDB data set";
    //private static final String DATA_SOURCE_NAME = "OrthoDB";
    private String dataSourceName = null;
    private String dataSetTitle = null;
    private Item dataSource = null;
    private Item dataSet = null;

    private static final String PROP_FILE = "orthodb_config.properties";
    private static final String DEFAULT_IDENTIFIER_TYPE = "primaryIdentifier";

    private Set<String> taxonIds = new HashSet<String>();
    private Set<String> homologueTaxonIds = new HashSet<String>();

    private static final String ORTHOLOGUE = "orthologue";
    private static final String PARALOGUE = "paralogue";

    private static final String EVIDENCE_CODE_ABBR = "AA";
    private static final String EVIDENCE_CODE_NAME = "Amino acid sequence comparison";

    private Properties props = new Properties();
    private Map<String, String> config = new HashMap<String, String>();
    private static String evidenceRefId = null;
    // Not used in hymenopteramine:
    //protected String version = null;

    // geneToHomologues keeps track of all homologues per gene to avoid repeats in the
    // Homologue table. But now that we are adding in clusterId and lastCommonAncestor,
    // there is no need to group by gene, as the clusterId will result in a unique row
    // in the table.
    //private Map<GeneHolder, Set<GeneHolder>> geneToHomologues = new HashMap<GeneHolder,
    //        Set<GeneHolder>>();
    // identifierToGene maps gene IDs (from the data file) to their resolved IDs
    // We are not using the ID Resolver, so this map is no longer needed.
    //private Map<MultiKey, GeneHolder> identifierToGene = new HashMap<MultiKey, GeneHolder>();
    // Again, no ID Resolver, so not needed:
    //protected IdResolver rslv;
    // We are not doing lookups by organism string, so this is not needed:
    //private static final OrganismRepository OR = OrganismRepository.getOrganismRepository();
    private String clusterId = null;
    private String lastCommonAncestor = null;
    // Not used in hymenopteramine:
    //private String geneSource = null;
    // Keep track of gene refs
    private HashMap<String,String> geneIdToRef = new HashMap<String, String>();

    /**
     * Constructor
     * @param writer the ItemWriter used to handle the resultant items
     * @param model the Model
     */
    public OrthodbConverter(ItemWriter writer, Model model) {
        //super(writer, model, DATA_SOURCE_NAME, DATASET_TITLE);
        super(writer, model);
        readConfig();
    }

    /**
     * Data source name from project.xml
     * @param dataSourceName name of datasource for items created
     */
    public void setDataSourceName(String dataSourceName) {
        this.dataSourceName = dataSourceName;
    }

    /**
     * Data set title from project.xml
     * @param dataSetTitle the title of the DataSets
     */
    public void setDataSetTitle(String dataSetTitle) {
        this.dataSetTitle = dataSetTitle;
    }

    /**
     * Sets the list of taxonIds that should be processed.  All genes will be loaded.
     *
     * @param taxonIds a space-separated list of taxonIds
     */
    public void setOrthodbOrganisms(String taxonIds) {
        this.taxonIds = new HashSet<String>(Arrays.asList(StringUtil.split(taxonIds, " ")));
        System.out.println("Setting list of organisms to " + taxonIds);
    }

    /*
    public void setGeneSource(String geneSource) {
        this.geneSource = geneSource;
    }

    public String getGeneSource() {
        return this.geneSource;
    }
    */


    /**
     * Sets the list of taxonIds of homologues that should be processed.  These homologues will only
     * be processed if they are homologues for the organisms of interest.
     *
     * @param homologues a space-separated list of taxonIds
     */
    public void setOrthodbHomologues(String homologues) {
        this.homologueTaxonIds = new HashSet<String>(Arrays.asList(
                StringUtil.split(homologues, " ")));
        System.out.println("Setting list of homologues to " + homologues);
    }

    ///**
    // * Set the version for OrthoDB. This value is used in 'source' attribute
    // * of Gene for integration
    // * @param version the version
    // */
    /*
    public void setOrthodbVersion(String version) {
        this.version = version;
    }
    */

    /**
     * {@inheritDoc}
     */
    @Override
    public void process(Reader reader) throws Exception {
        /*
            OrthoDB6_ALL_* are delimited files containing the following
            columns:

            0) Level
            1) OG_ID - OrthoDB group id
            2) Protein_ID
            3) Gene_ID, e.g. FBgn0162343(fly), ENSMUSG00000027919(mouse)
            4) Organism - full name
            5) UniProt_Species
            6) UniProt_ACC
            7) UniProt_Description
            8) InterPro_domains
        */

        // No longer using ID Resolver
        //createIDResolver();

        String previousGroup = null;
        Set<GeneHolder> homologues = new HashSet<GeneHolder>();

        if (taxonIds.isEmpty()) {
            LOG.warn("orthodb.organisms property not set in project XML file, processing all data");
        }

        /*
        if (version == null) {
            throw new IllegalArgumentException("No version provided for Ensembl");
        }
        */

        Iterator<String[]> lineIter = FormattedTextParser.parseTabDelimitedReader(reader);
        while (lineIter.hasNext()) {
            String[] bits = lineIter.next();
            if (bits.length < 9) {
                continue;
            }
            // ignore header (Level is an integer)
            if (bits[0] != null && bits[0].startsWith("OD")) {
                continue;
            }
            String clusterId = bits[1];
	    String lastCommonAncestor = bits[6];

            // at a different groupId, process previous homologue group
            if (previousGroup != null && !clusterId.equals(previousGroup)) {
                processHomologueGroup(homologues);
                homologues = new HashSet<GeneHolder>();
            }

            // Changing this to get taxonId from 5th column rather than looking it up from its string in the
            // previous column - e.g., B. bubalis is not in the lookup file.
            //String taxonId = getTaxon(bits[4]); // bits[4] is the long string of taxon Ids
            String taxonId = bits[5]; // bits[5] is the taxon ID

            if (taxonId != null && isValid(taxonId)) {
                String proteinId = bits[2];
                String geneId = bits[3];
                // protein is default
                String identifier = proteinId;
                if (config.get(taxonId) != null) {
                    identifier = geneId;
                }

                // No longer using ID resolver
                //String resolvedIdentifier = resolveGene(identifier, taxonId);
                //if (resolvedIdentifier == null) {
                //    // bad gene, keep going
                //    System.out.println("BAD GENE, ignoring: " + identifier);
                //    continue;
                //}
                // Keeping old variable name to avoid changing elsewhere in code,
                // but without the resolver, resolved ID will always be the ID itself.
                String resolvedIdentifier = identifier;

                // No longer needed because we aren't keeping a giant list of genes -> homologues anymore:
                //MultiKey key = new MultiKey(resolvedIdentifier, taxonId);
                //GeneHolder gene = identifierToGene.get(key);
                //if (gene == null) {
                //    gene = new GeneHolder(resolvedIdentifier, taxonId, clusterId,lastCommonAncestor);
                //    identifierToGene.put(key, gene);
                //}

                // Create a new GeneHolder for this row
                // Note that it's called "GeneHolder" but really think of it as holding homologue row info 
                // now that cluster ID and LCA are also stored.
                GeneHolder gene = new GeneHolder(resolvedIdentifier, taxonId, clusterId,lastCommonAncestor);
                homologues.add(gene);
            }
            previousGroup = clusterId;
        }
        // parse the last group of the file
        processHomologueGroup(homologues);

        // Instead of processing all homologues at the end, create them as we go in processHomologueGroup() 
        // after we've seen all homologues in a cluster.
        // store genes, set relationships
        //processHomologues();
    }

    private void readConfig() {
        try {
            props.load(getClass().getClassLoader().getResourceAsStream(
                    PROP_FILE));
        } catch (IOException e) {
            throw new RuntimeException("Problem loading properties '"
                    + PROP_FILE + "'", e);
        }

        for (Map.Entry<Object, Object> entry : props.entrySet()) {
            String key = (String) entry.getKey(); // e.g. 10090.geneid
            String value = ((String) entry.getValue()).trim(); // e.g. symbol

            String[] attributes = key.split("\\.");
            if (attributes.length == 0) {
                throw new RuntimeException("Problem loading properties '" + PROP_FILE
                        + "' on line " + key);
            }
            String taxonId = attributes[0];
            config.put(taxonId, value);
        }
    }

    // This function verifies that the genes are valid homologues and does additional 
    // processing before creating the homologue object in the database.
    private void processHomologuePair(GeneHolder gene1, GeneHolder gene2)
        throws ObjectStoreException {

        String gene1TaxonId = gene1.getTaxonId();
        String gene2TaxonId = gene2.getTaxonId();

        // at least one of these pair have to be from an organism of interest
        if (!isValidPair(gene1TaxonId, gene2TaxonId)) {
            return;
        }

        final String refId1 = getGene(gene1);
        final String refId2 = getGene(gene2);

        // The IDs shouldn't be null, nor should they be equal to each other
        if (refId1 == null || refId2 == null || refId1.equals(refId2)) {
            System.out.println("******BAD: Skipping due to null value(s) or refId1 = refId2");
            System.out.println("gene1 id: " + gene1.getIdentifier() + ", gene2 id: " + gene2.getIdentifier() 
                  + ", gene1 cluster id: " + gene1.getClusterId() + ", gene2 cluster id: " + gene2.getClusterId());
            return;
        }
        final String type = (gene1TaxonId.equals(gene2TaxonId) ? PARALOGUE : ORTHOLOGUE);
        createHomologue(refId1, refId2, type, gene1.getClusterId(), gene1.getlastCommonAncestor());
    }


    // no longer needed because we will create Homologue objects directly after
    // processing a cluster instead of waiting to the end of the file.
    /*
    private void processHomologues() throws ObjectStoreException {
        for (Entry<GeneHolder, Set<GeneHolder>> entry : geneToHomologues.entrySet()) {
            GeneHolder gene = entry.getKey();
            Set<GeneHolder> homologues = entry.getValue();
            for (GeneHolder homologue : homologues) {
                processHomologuePair(gene, homologue);
            }
        }
    }
    */

    // no longer using maps to prevent duplicates now that cluster ID and LCA info added
    // to a Homologue row in the table.
    // Instead, generate all of the n*(n-1) pairs (with symmetry) of the cluster of size n and
    // add to the Homologue table as we go.
    private void processHomologueGroup(Set<GeneHolder> homologueList)
        throws ObjectStoreException {

        //for (GeneHolder geneHolder : homologueList) {
        //    Set<GeneHolder> homologues = new HashSet(homologueList);
        //    Set<GeneHolder> previousHomologues = geneToHomologues.get(geneHolder);
        //    if (previousHomologues != null && previousHomologues.size() > 0) {
        //        homologues.addAll(previousHomologues);
        //    }
        //    geneToHomologues.put(geneHolder, homologues);
        //}
        //
        
        // Iterate through homologue list twice to generate all n*(n-1) pairs and
        // add homologues to database.
        for (GeneHolder gene1 : homologueList) {
            for (GeneHolder gene2 : homologueList) {
                // Exclude identity pairs (don't put a row in the table that a gene is a homologue of itself)
                if (!gene1.equals(gene2)) {
                    processHomologuePair(gene1, gene2);
                }
            }
        }
    }

    private void createHomologue(String gene1, String gene2, String type, String clusterId, String lastCommonAncestor)
        throws ObjectStoreException {
        Item homologue = createItem("Homologue");
        homologue.setReference("gene", gene1);
        homologue.setReference("homologue", gene2);
        homologue.addToCollection("evidence", getEvidence());
        homologue.setAttribute("type", type);
        homologue.setAttribute("clusterId", clusterId);
        homologue.setAttribute("lastCommonAncestor", lastCommonAncestor);
        homologue.addToCollection("dataSets", getDataSet());
        store(homologue);
    }

    private Item getDataSet() throws ObjectStoreException {
        if (dataSet == null) {
            dataSet = createItem("DataSet");
            if (StringUtils.isEmpty(dataSetTitle)) {
                throw new RuntimeException("Data set title not set in project.xml");
            }
            dataSet.setAttribute("name", dataSetTitle);
            dataSet.setReference("dataSource", getDataSourceRefId());
            try {
                store(dataSet);
            } catch (ObjectStoreException e) {
                throw new RuntimeException("failed to store DataSet with name: " + dataSetTitle, e);
            }
        }
        return dataSet;
    }

    private String getDataSourceRefId() throws ObjectStoreException {
        if (dataSource == null) {
            dataSource = createItem("DataSource");
            if (StringUtils.isEmpty(dataSourceName)) {
                throw new RuntimeException("Data source name not set in project.xml");
            }
            dataSource.setAttribute("name", dataSourceName);
            try {
                store(dataSource);
            } catch (ObjectStoreException e) {
                throw new RuntimeException("failed to store DataSource with name: " + dataSourceName, e);
            }
        }
        return dataSource.getIdentifier();
    }

    // genes (in taxonIDs) are always processed
    // homologues are only processed if they are of an organism of interest
    private boolean isValid(String taxonId) {
        if (taxonIds.isEmpty() || taxonIds.contains(taxonId)) {
            // either this is an organism of interest or we are processing everything
            return true;
        }
        if (homologueTaxonIds.isEmpty()) {
            // no config for homologues. since this taxon has failed the previous test, it's
            // not an organism of interest
            return false;
        }
        if (homologueTaxonIds.contains(taxonId)) {
            // in config, so we want it
            return true;
        }
        // not found in config
        return false;
    }

    // genes (in taxonIDs) are always processed
    // homologues are only processed if they are of an organism of interest
    private boolean isValidPair(String geneTaxonId, String homologueTaxonId) {
        if (taxonIds.isEmpty()) {
            // we are processing everything
            return true;
        }
        if (taxonIds.contains(geneTaxonId) && taxonIds.contains(homologueTaxonId)) {
            // both genes are valid
            return true;
        }
        if (!taxonIds.contains(geneTaxonId) && !taxonIds.contains(homologueTaxonId)) {
            // neither genes are valid
            return false;
        }
        if (homologueTaxonIds.contains(geneTaxonId)
                || homologueTaxonIds.contains(homologueTaxonId)) {
            // at least one of the genes is valid (because it passed the last test)
            // and one gene is in the list of homologues
            return true;
        }
        return false;
    }

    // Creates the Gene objects referred to in the Homologue table.
    // The refIds keep track of whether a Gene object has been created for a gene identifier
    // so that we don't create duplicates.
    private String getGene(GeneHolder holder) throws ObjectStoreException {
        String geneId = holder.getIdentifier();
        String refId = geneIdToRef.get(geneId);

        if (refId == null) {
            // Haven't created Gene yet, create it now and store ref
            String taxonId = holder.getTaxonId();
            String identiferType = config.get(taxonId);
            if (StringUtils.isEmpty(identiferType)) {
                identiferType = DEFAULT_IDENTIFIER_TYPE;
            }
            Item gene = createItem("Gene");
            gene.setAttribute(identiferType, geneId);
	    /*
            if("9913".equals(taxonId) || "9940".equals(taxonId) || "9925".equals(taxonId)){
                gene.setAttribute("source", version);
            }
	    */
	    //gene.setAttribute("source", this.geneSource);
            gene.setReference("organism", getOrganism(taxonId));
            gene.addToCollection("dataSets", getDataSet());
            refId = gene.getIdentifier();
            geneIdToRef.put(geneId, refId);
            store(gene);
        }
        return refId;
    }

    // No longer needed
    /*
    private static String getTaxon(String speciesString) {
         //could be a long string like this or just the name. check for both
         //Bacillus cereus E33L species:288681;genus:1386:Bacillus;family:186817:Bacillaceae;order:
         //1385:Bacillales;class:91061:Bacilli;phylum:1239:Firmicutes
         //
        if (speciesString.contains(":")) {
            String[] firstSplit = speciesString.split(":");
            if (firstSplit == null || firstSplit.length < 2) {
                return null;
            }
            String[] secondSplit = firstSplit[1].split(";");
            return secondSplit[0];
        }
        String[] split = speciesString.split(" ");
        if (split == null || split.length != 2) {
            return null;
        }
        OrganismData od = OR.getOrganismDataByGenusSpecies(split[0], split[1]);
        if (od == null) {
            return null;
        }
        return String.valueOf(od.getTaxonId());
    }
    */

    private String getEvidence() throws ObjectStoreException {
        if (evidenceRefId == null) {
            Item item = createItem("OrthologueEvidenceCode");
            item.setAttribute("abbreviation", EVIDENCE_CODE_ABBR);
            item.setAttribute("name", EVIDENCE_CODE_NAME);
            try {
                store(item);
            } catch (ObjectStoreException e) {
                throw new ObjectStoreException(e);
            }
            String refId = item.getIdentifier();

            item = createItem("OrthologueEvidence");
            item.setReference("evidenceCode", refId);
            try {
                store(item);
            } catch (ObjectStoreException e) {
                throw new ObjectStoreException(e);
            }

            evidenceRefId = item.getIdentifier();
        }
        return evidenceRefId;
    }


    // No longer needed
    /*  
    private void createIDResolver() {
        Set<String> allTaxonIds = new HashSet<String>();
        allTaxonIds.addAll(taxonIds);
        allTaxonIds.addAll(homologueTaxonIds);
        if (rslv == null) {
            rslv = IdResolverService.getIdResolverByOrganism(allTaxonIds);
        }
        System.out.println("Taxons in resolver:" + rslv.getTaxons());
    }
    private String resolveGene(String identifier, String taxonId) {
        if (rslv == null || !rslv.hasTaxon(taxonId)) {
            // no id resolver available, so return the original identifier
            System.out.println("No resolver available for gene: " + identifier);
            return identifier;
        }
        int resCount = rslv.countResolutions(taxonId, identifier);
        if (resCount != 1) {
            System.out.println("RESOLVER: failed to resolve gene to one identifier, ignoring gene: "
                     + identifier + " count: " + resCount + " Resolved: "
                     + rslv.resolveId(taxonId, identifier));
            return null;
        }
        return rslv.resolveId(taxonId, identifier).iterator().next();
    }
    */

    // Class that keeps track of gene info and corresponding homologue info (cluster ID and LCA)
    // Keeping name as "GeneHolder" but it's really holding homologue info from one line of the OrthoDB file
    private class GeneHolder
    {
        private String identifier;          // gene identifier
        private String taxonId;             // gene taxon ID
	private String clusterId;           // cluster ID for this homologue entry
	private String lastCommonAncestor;  // LCA for this homologue entry

        protected GeneHolder(String identifier, String taxonId, String clusterId, String lastCommonAncestor) {
            this.identifier = identifier;
            this.taxonId = taxonId;
	    this.clusterId = clusterId;
	    this.lastCommonAncestor = lastCommonAncestor;
        }
        protected String getClusterId() {
            return clusterId;
        }
        protected String getlastCommonAncestor() {
            return lastCommonAncestor;
        }

        protected String getTaxonId() {
            return taxonId;
        }

        protected String getIdentifier() {
            return identifier;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj instanceof GeneHolder) {
                GeneHolder gh = (GeneHolder) obj;
                return identifier.equals(gh.identifier)
                    && taxonId.equals(gh.taxonId)
                    && clusterId.equals(gh.clusterId)
                    && lastCommonAncestor.equals(gh.lastCommonAncestor);
            }
            return false;
        }

        @Override
        public String toString() {
            return "(" + identifier + ", " + taxonId + ", " + clusterId + ", " + lastCommonAncestor + ")";
        }
    }
}
