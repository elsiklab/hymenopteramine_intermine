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

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.intermine.bio.io.gff3.GFF3Record;
import org.intermine.metadata.Model;
import org.intermine.metadata.StringUtil;
import org.intermine.xml.full.Item;

/**
 * A converter/retriever for the OgsGff dataset via GFF files.
 */

public class OgsGffGFF3RecordHandler extends GFF3RecordHandler
{
    protected Map<String,String> crossReferenceIdentifierToDatabaseIdentifierMap = new HashMap<String,String>();
    protected Map<String,String> crossRefSourceIdentifierToDatabaseIdentifierMap = new HashMap<String,String>();

    /**
     * Create a new OgsGffGFF3RecordHandler for the given data model.
     * @param model the model for which items will be created
     */
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

        if ( clsName.equals("Gene") ) {
            if (record.getAttributes().get("ID") != null){
                primaryIdentifier = record.getAttributes().get("ID").iterator().next();
                feature.setAttribute("primaryIdentifier", primaryIdentifier);
            }
            if (record.getAttributes().get("Name") != null){
                name = record.getAttributes().get("Name").iterator().next();
                feature.setAttribute("name", name);
            }
            if (record.getAttributes().get("description") != null){
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
        else if ( clsName.equals("MRNA") || clsName.equals("Polypeptide") ) {
            if (record.getAttributes().get("ID") != null){
                primaryIdentifier = record.getAttributes().get("ID").iterator().next();
                feature.setAttribute("primaryIdentifier", primaryIdentifier);
            }
            if (record.getAttributes().get("Note") != null){
                description = record.getAttributes().get("Note").iterator().next();
                feature.setAttribute("description", description);
            }
            if (record.getAttributes().get("source") != null){
                source = record.getAttributes().get("source").iterator().next();
                feature.setAttribute("source", source);
            }
            if (record.getAttributes().get("Name") != null){
                name = record.getAttributes().get("Name").iterator().next();
                feature.setAttribute("name", name);
            }
            feature.removeAttribute("symbol");
        }
        else if ( clsName.equals("StartCodon") || clsName.equals("StopCodon") ) {
            // Do nothing
        }
    }

    /**
      * Method parses the xRef string, creates a CrossReference item, creates a Gene item and sets the necessary references and collections
      * @param xRef
      */
        public void setCrossReference(String xRef) {
        Item feature = getFeature();
        List<String> crossRefPair = new ArrayList<String>(Arrays.asList(StringUtil.split(xRef, ":")));
        if (crossRefPair.size() == 0) { return; }
        if (crossRefPair.size() != 2) {
            System.out.println("Ambiguous xRef: " + crossRefPair);
            System.out.println("Expected xRef format is '<XREF_ID>:<XREF_SOURCE>'");
            System.out.println("Note: XREF_SOURCE should match column 2 of the alternate GFF3 (if any)");
            System.exit(1);
        }
        String crossReferenceIdentifier = crossRefPair.get(0);
        String crossReferenceSource = crossRefPair.get(1);
        if (!crossReferenceIdentifierToDatabaseIdentifierMap.containsKey(crossReferenceIdentifier)) {
            // Create a CrossReference item
            Item crossRefItem = converter.createItem("CrossReference");
            String crossRefSourceId;
            if (crossRefSourceIdentifierToDatabaseIdentifierMap.containsKey(crossReferenceSource)) {
                crossRefSourceId = crossRefSourceIdentifierToDatabaseIdentifierMap.get(crossReferenceSource);
            } else {
                Item crossRefSourceItem = converter.createItem("DataSource");
                crossRefSourceId = crossRefSourceItem.getIdentifier();
                crossRefSourceIdentifierToDatabaseIdentifierMap.put(crossReferenceSource, crossRefSourceId); 
            }
            crossRefItem.setReference("source", crossRefSourceId);
            crossRefItem.setAttribute("identifier", crossReferenceIdentifier);
            // getting the database ID for the newly created CrossReference item
            // We keep track of the database ID because that is the only value needed for setting references and collections
            String crossRefDbIdentifier = crossRefItem.getIdentifier();
            crossReferenceIdentifierToDatabaseIdentifierMap.put(crossReferenceIdentifier, crossRefDbIdentifier);
            // Since this crossReferenceIdentifier was never seen before,
            // create a 'Gene' item with crossReferenceIdentifier as its primaryIdentifier
            Item geneItem = converter.createItem("Gene");
            geneItem.setAttribute("primaryIdentifier", crossReferenceIdentifier);
            geneItem.setAttribute("source", crossReferenceSource);
            // set 'Gene -> organism' reference
            geneItem.setReference("organism", getOrganism());
            // set 'CrossReference -> subject' reference
            crossRefItem.setReference("subject", feature.getIdentifier());
            // set 'CrossReference -> target' reference
            crossRefItem.setReference("target", geneItem.getIdentifier());
            // store the 'Gene' item
            addItem(geneItem);
            // store the 'CrossReference' item
            addItem(crossRefItem);
        }
    }
}
