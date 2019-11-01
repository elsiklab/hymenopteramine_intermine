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

import java.lang.System;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.net.URLDecoder;
import org.intermine.bio.io.gff3.GFF3Record;
import org.intermine.metadata.Model;
import org.intermine.metadata.StringUtil;
import org.intermine.xml.full.Item;
import java.util.Map;
import java.util.Map.Entry;
import java.util.HashMap;
import java.util.HashSet;

/**
 * A converter/retriever for the OgsGff dataset via GFF files.
 */

public class OgsGffGFF3RecordHandler extends GFF3RecordHandler
{
    /**
     * Create a new OgsGffGFF3RecordHandler for the given data model.
     * @param model the model for which items will be created
     */
    Map<String,String> geneToRefId = new HashMap<String,String>();
    Map<String,String> xRefToRefId = new HashMap<String,String>();
    Map<String,String> geneIdentifierToDatabaseIdentifierMap = new HashMap<String,String>();
    Map<String,String> crossReferenceIdentifierToDatabaseIdentifierMap = new HashMap<String,String>();
    public OgsGffGFF3RecordHandler (Model model) {
        super(model);
        refsAndCollections.put("MRNA", "gene");
        refsAndCollections.put("Exon", "transcripts");
        refsAndCollections.put("CDS", "transcript");
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void process(GFF3Record record) {
        Item feature = getFeature();
        String clsName = feature.getClassName();
        String name = "";
        String source = "";
        String description = "";
        String primaryIdentifier = "";
        feature.setAttribute("source", record.getSource());

        if( clsName.equals("Gene") ) {
            if(record.getAttributes().get("ID") != null){
                primaryIdentifier = record.getAttributes().get("ID").iterator().next();
                feature.setAttribute("primaryIdentifier", primaryIdentifier);
            }
            if(record.getAttributes().get("Name") != null){
                name = record.getAttributes().get("Name").iterator().next();
                feature.setAttribute("name", name);
            }
            if(record.getAttributes().get("description") != null){
                description = record.getAttributes().get("description").iterator().next();
                feature.setAttribute("description", description);
            }

            

            if (record.getAttributes().get("xRef") != null) {
                List<String> xRefList = record.getAttributes().get("xRef");
                Iterator<String> xRefIterator = xRefList.iterator();
                while (xRefIterator.hasNext()) {
                    setCrossReference(xRefIterator.next());
                }
            }

            feature.removeAttribute("symbol");

        }
        else if( clsName.equals("MRNA") || clsName.equals("Polypeptide") ) {
            if(record.getAttributes().get("ID") != null){
                primaryIdentifier = record.getAttributes().get("ID").iterator().next();
                feature.setAttribute("primaryIdentifier", primaryIdentifier);
            }
            if(record.getAttributes().get("Note") != null){
                description = record.getAttributes().get("Note").iterator().next();
                feature.setAttribute("description", description);
            }
            if(record.getAttributes().get("source") != null){
                source = record.getAttributes().get("source").iterator().next();
                feature.setAttribute("source", source);
            }
            if(record.getAttributes().get("Name") != null){
                name = record.getAttributes().get("Name").iterator().next();
                feature.setAttribute("name", name);
            }
            feature.removeAttribute("symbol");
        }
        else if( clsName.equals("StartCodon") || clsName.equals("StopCodon") ) {
            // Do nothing
        }
    }

    /**
     * Method parses the alias string, creates an AliasName item and sets the necessary references and collections
     * @param alias
     */    /**
     * Method parses the xRef string, creates a xRef item, creates a Gene item and sets the necessary references and collections
     * @param xRef
     */
        public void setCrossReference(String xRef) {
        Item feature = getFeature();
        List<String> xRefPair = new ArrayList<String>(Arrays.asList(StringUtil.split(xRef, ":")));
        if (xRefPair.size() == 0) { return; }
        if (xRefPair.size() != 2) {
            System.out.println("Ambiguous xRef: " + xRefPair);
            System.out.println("Expected xRef format is '<XREF_ID>:<XREF_SOURCE>'");
            System.out.println("Note: XREF_SOURCE should match column 2 of the alternate GFF3 (if any)");
            System.exit(1);
        }
        String crossReferenceIdentifier = xRefPair.get(0);
        String crossReferenceSource = xRefPair.get(1);
        if (crossReferenceIdentifierToDatabaseIdentifierMap.containsKey(crossReferenceIdentifier)) {
            // if xRefIdentifier has been seen before, simply set 'Gene -> dbCrossReferences' collection
            feature.addToCollection("dbCrossReferences", crossReferenceIdentifierToDatabaseIdentifierMap.get(crossReferenceIdentifier));
        } else {
            // else create a 'xRef' item
            Item xRefItem = converter.createItem("xRef");
            xRefItem.setAttribute("refereeSource", crossReferenceSource);
            // set 'xRef -> organism' reference
            xRefItem.setReference("organism", getOrganism());
            // getting the database ID for the newly created 'xRef' item
            // We keep track of the database ID because that is the only value needed for setting references and collections
            String xRefDbIdentifier = xRefItem.getIdentifier();
            // set 'Gene -> dbCrossReferences' collection
            feature.addToCollection("dbCrossReferences", xRefDbIdentifier);
            // keep track of this newly created 'xRef' item
            crossReferenceIdentifierToDatabaseIdentifierMap.put(crossReferenceIdentifier, xRefDbIdentifier);
            // Since this crossReferenceIdentifier was never seen before,
            // create a 'Gene' item with crossReferenceIdentifier as its primaryIdentifier
            Item geneItem = converter.createItem("Gene");
            geneItem.setAttribute("primaryIdentifier", crossReferenceIdentifier);
            geneItem.setAttribute("source", crossReferenceSource);
            // set 'Gene -> organism' reference
            geneItem.setReference("organism", getOrganism());
            // keep track of this newly created 'Gene' item
            geneIdentifierToDatabaseIdentifierMap.put(crossReferenceIdentifier, geneItem.getIdentifier());
            // set 'xRef -> referrer' reference
            xRefItem.setReference("referrer", feature.getIdentifier());
            // set 'xRef -> referee' reference
            xRefItem.setReference("referee", geneItem.getIdentifier());
            // store the 'Gene' item
            addItem(geneItem);
            // store the 'xRef' item
            addItem(xRefItem);
        }
    } 
}
