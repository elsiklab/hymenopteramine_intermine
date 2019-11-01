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
public class GeoMetadataConverter extends BioFileConverter
{
    //
    protected static final Logger LOG = Logger.getLogger(GeoMetadataConverter.class);
    private String orgRefId;
    private HashMap<String,Item> publicationItems = new HashMap<String, Item>();
    private static final String DATASET_TITLE = "Geo MetaData";
    private static final String DATA_SOURCE_NAME = "GEO";

    /**
     * Constructor
     * @param writer the ItemWriter used to handle the resultant items
     * @param model the Model
     */
    public GeoMetadataConverter(ItemWriter writer, Model model) {
        super(writer, model, DATA_SOURCE_NAME, DATASET_TITLE);
    }

    /**
     * 
     *
     * {@inheritDoc}
     */
    public void process(Reader reader) throws Exception {
       Iterator<String[]> lineIter = FormattedTextParser.parseTabDelimitedReader(reader);

        while (lineIter.hasNext()) {
            String[] line = lineIter.next();
            if (Pattern.matches("Series", line[0])) {
                // skipping header
                continue;
}
      System.out.println(line.toString());
            String series = line[0];
            System.out.println(series);
            String title = line[1];
            String experiment = line[3];
            String summary = line[4];
            String design = line[5];
            String contributor = line[6];
            String contact = line[10];
            String platform = line[13];
            String platformDesign = line[14];
            String samples = line[15];
            String pubmedId = line[7];
            String sampleTaxon = line[2];

           Item item = createItem("GeoMetadata");
            if (!series.isEmpty()) {
                item.setAttribute("series", series);
            }
            else {
                System.out.println("series cannot be empty as it serves as a primaryIdentifier");
                System.exit(1);
            } 
           
            if (!title.isEmpty()) { item.setAttribute("title", title); }
            if (!experiment.isEmpty()) { item.setAttribute("experiment", experiment); }
            if (!summary.isEmpty()) { item.setAttribute("summary", summary); }
            if (!design.isEmpty()) { item.setAttribute("design", design); }
            if (!contributor.isEmpty()) { item.setAttribute("contributor", contributor); }
           if (!contact.isEmpty()) { item.setAttribute("contact", contact); }
            if (!platform.isEmpty()) { item.setAttribute("platform", platform); }
            if (!platformDesign.isEmpty()) { item.setAttribute("platformDesign", platformDesign); }
            if (!samples.isEmpty()) { item.setAttribute("samples", samples); }

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
                System.out.println("Error while storing GeoMetadata item: " + item + "\nStacktrace: " + e);
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







