package org.intermine.bio.dataconversion;

/*
 * Copyright (C) 2002-2015 FlyMine
 *
 * This code may be freely distributed and modified under the
 * terms of the GNU Lesser General Public Licence.  This should
 * be distributed with the code.  See the LICENSE file for more
 * information or http://www.gnu.org/copyleft/lesser.html.
 *
 */

import java.io.File;
import java.io.Reader;
import java.lang.Exception;
import java.lang.String;
import java.lang.System;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

import org.intermine.dataconversion.ItemWriter;
import org.intermine.metadata.Model;
import org.intermine.xml.full.Item;
import org.apache.log4j.Logger;
import org.intermine.util.FormattedTextParser;


/**
 * 
 * @author
 */
public class AmelExpressionMetadataConverter extends BioFileConverter
{
    //
    protected static final Logger LOG = Logger.getLogger(AmelExpressionMetadataConverter.class);
    private String orgRefId;
    private HashMap<String,Item> publicationItems = new HashMap<String, Item>();

    private static final String DATASET_TITLE = "Apis mellifera RNASeq Expression dataset";
    private static final String DATA_SOURCE_NAME = "Apis mellifera RNASeq Expression dataset from NCBI SRA

    /**
     * Constructor
     * @param writer the ItemWriter used to handle the resultant items
     * @param model the Model
     */
    public AmelExpressionMetadataConverter(ItemWriter writer, Model model) {
        super(writer, model, DATA_SOURCE_NAME, DATASET_TITLE);
    }

    /**
     * 
     *
     * {@inheritDoc}
     */
    public void process(Reader reader) throws Exception {
        // assumes that the metadata file has unique entries
        Iterator<String[]> lineIter = FormattedTextParser.parseTabDelimitedReader(reader);

        while (lineIter.hasNext()) {
            String[] line = lineIter.next();
            if (Pattern.matches("Run", line[0])) {
                // skipping header
                continue;
            }
            System.out.println(line.toString());
            String sraRunId = line[0];
            System.out.println(sraRunId);
            String avgReadLength = line[6];
            String sraExperimentId = line[10];
            String name = line[11];
            String libraryStrategy = line[12];
            String librarySelection = line[13];
            String libraryLayout = line[15];
            String platform = line[18];
            String instrument = line[19];
            String readType = line[47];
            String spots = line[3];
            String bases = line[4];
           String ftpLocation = line[9];
            String libraryName = line[11];
            String insertSize = line[16];
            String insertStdDev = line[17];
            String sex = line[34];
            String tumor = line[36];
            String pubmedId = line[57];
            String sraStudyId = line[20];
            String bioProjectId = line[21];
            String projectId = line[23];
            String sraSampleId = line[24];
            String bioSampleId = line[25];
            String sampleTaxon = line[27];
            String scientificName = line[28];
            String sampleName = line[29];
            String centerName = line[41];
             String submissionId = line[42];
            String beeType = line[48];
           String sampleType = line[49];
          String treatment = line[50];
          String stage = line[51];
            String tissueType = line[53];
             String results = line[54];
            String objective = line[55];
            String sequencedStructure = line[56];
            String projectGoal = line[59];
            String experimentAbstract = line[62];

            Item item = createItem("ExpressionMetadata");
            if (!sraRunId.isEmpty()) {
                item.setAttribute("sraRunAccession", sraRunId);
            }
            else {
                System.out.println("sraRunAccession cannot be empty as it serves as a primaryIdentifier");
                System.exit(1);
            }

            if (!sraExperimentId.isEmpty()) { item.setAttribute("sraExperimentAccession", sraExperimentId); }
            if (!avgReadLength.isEmpty()) { item.setAttribute("averageReadLength", avgReadLength); }
            if (!sraStudyId.isEmpty()) { item.setAttribute("sraStudyAccession", sraStudyId); }
            if (!sraSampleId.isEmpty()) { item.setAttribute("sraSampleAccession", sraSampleId); }
            if (!projectId.isEmpty()) { item.setAttribute("projectId", projectId); }
           if (!bioProjectId.isEmpty()) { item.setAttribute("bioProjectId", bioProjectId); }
            if (!bioSampleId.isEmpty()) { item.setAttribute("bioSampleId", bioSampleId); }
            if (!sampleTaxon.isEmpty()) { item.setAttribute("sampleTaxon", sampleTaxon); }
            if (!scientificName.isEmpty()) { item.setAttribute("scientificName", scientificName); }
            if (!sampleName.isEmpty()) { item.setAttribute("sampleName", sampleName); }
            if (!name.isEmpty()) { item.setAttribute("name", name); }
            if (!platform.isEmpty()) { item.setAttribute("platform", platform); }
            if (!instrument.isEmpty()) { item.setAttribute("instrument", instrument); }
            if (!spots.isEmpty()) { item.setAttribute("spots", spots); }
            if (!bases.isEmpty()) { item.setAttribute("bases", bases); }
            if (!ftpLocation.isEmpty()) { item.setAttribute("ftpLocation", ftpLocation); }
            if (!libraryName.isEmpty()) { item.setAttribute("libraryName", libraryName); }
            if (!insertSize.isEmpty()) { item.setAttribute("insertSize", insertSize); }
            if (!insertStdDev.isEmpty()) { item.setAttribute("insertSizeStandardDeviation", insertStdDev); }
            if (!sex.isEmpty()) { item.setAttribute("sex", sex); }
            if (!tumor.isEmpty()) { item.setAttribute("tumor", tumor); }
            if (!libraryStrategy.isEmpty()) { item.setAttribute("libraryStrategy", libraryStrategy); }
            if (!librarySelection.isEmpty()) { item.setAttribute("librarySelection", librarySelection); }
            if (!libraryLayout.isEmpty()) { item.setAttribute("libraryLayout", libraryLayout); }
            if (!tissueType.isEmpty()) { item.setAttribute("tissueType", tissueType); }
            if (!centerName.isEmpty()) { item.setAttribute("centerName", centerName); }
            if (!submissionId.isEmpty()) { item.setAttribute("sraSubmissionAccession", submissionId); }
            if (!beeType.isEmpty()) { item.setAttribute("beeType", beeType); }
            if (!sampleType.isEmpty()) { item.setAttribute("sampleType", sampleType); }
            if (!treatment.isEmpty()) { item.setAttribute("treatment", treatment); }
            if (!stage.isEmpty()) { item.setAttribute("stage", stage); }
            if (!results.isEmpty()) { item.setAttribute("results", results); }
            if (!objective.isEmpty()) { item.setAttribute("objective", objective); }
            if (!sequencedStructure.isEmpty()) { item.setAttribute("design", sequencedStructure); }
            if (!projectGoal.isEmpty()) { item.setAttribute("projectGoal", projectGoal); }
            if (!experimentAbstract.isEmpty()) { item.setAttribute("experimentAbstract", experimentAbstract); }
            
            String TAXON_ID = sampleTaxon;
            orgRefId = getOrganism(TAXON_ID);
            item.setReference("organism", getOrganism(TAXON_ID));
            
            if (!pubmedId.isEmpty()) {
                if (publicationItems.containsKey(pubmedId)) {
                    item.addToCollection("publications", publicationItems.get(pubmedId).getIdentifier());
                }
                else {
                    Item pubItem = createItem("Publication");
                    pubItem.setAttribute("pubMedId", pubmedId);
                   item.addToCollection("publications", pubItem.getIdentifier());
                    publicationItems.put(pubmedId, pubItem);
                }
            }

            try {
                store(item);
            } catch(Exception e) {
                System.out.println("Error while storing ExpressionMetadata item: " + item + "\nStacktrace: " + e);
            }
        }
    }

    /**
     *
     * {@inheritDoc}
     */
    @Override
    public void close() throws Exception {
        for (String key : publicationItems.keySet()) {
            store(publicationItems.get(key));
        }
    }
}
