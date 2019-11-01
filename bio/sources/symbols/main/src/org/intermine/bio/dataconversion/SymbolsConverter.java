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
public class SymbolsConverter extends BioFileConverter
{
    //
    protected static final Logger LOG = Logger.getLogger(SymbolsConverter.class);
    private String orgRefId;
    private static final String DATASET_TITLE = "Symbols for Drosophila melanogaster";
    private static final String DATA_SOURCE_NAME = "Symbols for Drosophila melanogaster";
    private static final String TAXON_ID = "7227";

    /**
     * Constructor
     * @param writer the ItemWriter used to handle the resultant items
     * @param model the Model
     */
    public SymbolsConverter(ItemWriter writer, Model model) {
        super(writer, model, DATA_SOURCE_NAME, DATASET_TITLE);
        orgRefId = getOrganism(TAXON_ID);
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
            String geneid = line[0];
            System.out.println(geneid);
            String symb = line[1];
            System.out.println(symb);

            Item item = createItem("Gene");
            if (!geneid.isEmpty()) {
                item.setAttribute("primaryIdentifier", geneid.trim());
            }
            else {
                System.out.println("GeneID cannot be empty as it serves as a primaryIdentifier");
                System.exit(1);
            }

            if (!symb.isEmpty()) { item.setAttribute("symbol", symb.trim()); }
            item.setReference("organism", getOrganism(TAXON_ID));

            try {
                store(item);
            } catch(Exception e) {
                System.out.println("Error while storing ExpressionMetadata item: " + item + "\nStacktrace: " + e);
            }
        }
    }
}
