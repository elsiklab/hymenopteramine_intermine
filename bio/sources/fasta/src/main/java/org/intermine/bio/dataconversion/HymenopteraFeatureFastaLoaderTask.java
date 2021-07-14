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

import java.util.HashMap;
import java.util.Map;
//import java.util.regex.Matcher;
//import java.util.regex.Pattern;

import org.biojava.nbio.core.sequence.template.Sequence;
import org.intermine.metadata.Model;
import org.intermine.model.InterMineObject;
//import org.intermine.model.bio.Chromosome;
import org.intermine.model.bio.Gene;
//import org.intermine.model.bio.Location;
import org.intermine.model.bio.Organism;
import org.intermine.objectstore.ObjectStoreException;

/**
 * Code for loading fasta for HymenopteraMine, setting feature attribute from the FASTA header
 * @author
 */
public class HymenopteraFeatureFastaLoaderTask extends FastaLoaderTask
{
    //private Map<String, Chromosome> chrMap = new HashMap<String, Chromosome>();
    private Map<String, Gene> geneMap = new HashMap<String, Gene>();
    private Map<String, InterMineObject> mrnaMap = new HashMap<String, InterMineObject>();
    //protected static final String HEADER_REGEX = "^\\s\\S+:\\d+\\s\\S+:(\\S+):(\\S+):(\\d+-\\d+)\\s(\\S+)\\s+\\S+\\s+\\S+=\\S+$";

    /**
     * Return an MRNA for the given item or return null if MRNA is not in the data model.
     * @param mrnaIdentifier primaryIdentifier of MRNA to create
     * @param source gene source
     * @param organism orgnism of MRNA to create
     * @param model the data model
     * @return an InterMineObject representing an MRNA or null if MRNA not in the data model
     * @throws ObjectStoreException if problem fetching mrna
     */
    protected InterMineObject getMRNA(String mrnaIdentifier, String source, Organism organism, Model model) 
        throws ObjectStoreException {
        InterMineObject mrna = null;
        if (model.hasClassDescriptor(model.getPackageName() + ".MRNA")) {
            @SuppressWarnings("unchecked") Class<? extends InterMineObject> mrnaCls =
                (Class<? extends InterMineObject>) model.getClassDescriptorByName("MRNA").getType();
            if (mrnaMap.containsKey(mrnaIdentifier)) {
                return mrnaMap.get(mrnaIdentifier);
            }
            mrna = getDirectDataLoader().createObject(mrnaCls);
            mrna.setFieldValue("primaryIdentifier", mrnaIdentifier);
            mrna.setFieldValue("source", source);
            mrna.setFieldValue("organism", organism);
            getDirectDataLoader().store(mrna);
            mrnaMap.put(mrnaIdentifier, mrna);
        }
        return mrna;
    }

    /**
     * Return a Gene object for the given item.
     * @param identifier id for gene
     * @param source gene source
     * @param organism the Organism to reference from the gene
     * @return the Gene
     * @throws ObjectStoreException if problem fetching gene
     */
    protected Gene getGene(String identifier, String source, Organism organism)
        throws ObjectStoreException {
        if (geneMap.containsKey(identifier)) {
            return geneMap.get(identifier);
        }
        Gene gene = getDirectDataLoader().createObject(Gene.class);
        gene.setPrimaryIdentifier(identifier);
        gene.setSource(source);
        gene.setOrganism(organism);
        getDirectDataLoader().store(gene);
        geneMap.put(identifier, gene);
        return gene;
    }

    /**
     * For the given BioJava Sequence object, return an identifier to be used when creating
     * the corresponding BioEntity.
     * @param bioJavaSequence the Sequenece
     * @return an identifier
     */
    @Override
    protected String getIdentifier(Sequence bioJavaSequence) {
        // For this file format identifier is first ID in sequence header
        String name = getFeatureFastaHeaderAttribute(bioJavaSequence, 1);
        String suffix = getIdSuffix();
        // Append ID suffix if not already present
        if ( !(name.endsWith(suffix)) ) {
            name = name + suffix;
        }
        return name;
    }

    /**
     * Return string in the position of the sequence header or null if not found
     * @param bioJavaSequence the Sequenece
     * @param position position in header to return
     * @return the header attribution at the position or null if not found
     */
    protected String getFeatureFastaHeaderAttribute(Sequence bioJavaSequence, Integer position) {
        String attribute = null;
        String header = bioJavaSequence.getAccession().getID();
        Integer idx = position-1;
        if (header.contains(" ")) {
            String[] attributes = header.split(" ");
            if ( (idx >= 0) && (attributes.length > idx) ) {
                attribute = attributes[idx];
            }
        } else {
            // Something is wrong with the header, which means the fasta file needs to be checked
            // before proceeding with the load.
            throw new RuntimeException("Sequence header '" + header + "' is not in expected format.");
        }
        return attribute; 
    }

    // Functions no longer used:
    // getChromosome()
    // getLocationFromHeader()
    // isComplement()
    // getMin()
    // getMax()
    // See older versions of HymenopteraMine for code; functions would need to be updated to be
    // compatible with newer version if needed in a future HymenopteraMine version.
}
