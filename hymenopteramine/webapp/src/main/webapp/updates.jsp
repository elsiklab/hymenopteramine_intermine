<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="im"%>
<%@ taglib uri="/WEB-INF/functions.tld" prefix="imf" %>
 
<!DOCTYPE html>
<html>
  <head>
    <style>
    #release-updates {
      margin: 10px 20px 10px 20px;
    }
    #new-release-note {
      font-size:15px;
    }
    .note_header {
      line-height: 1.8;
      margin-bottom: 10px;
    }
    .note_header h5 {
      font-style: italic;
    }
    .note_desc {
      font-size: 13px;
      margin-left: 20px;
    }
    </style>
  </head>
  <body>
    <div id="content-wrap">
      <div id="release-updates">
        <div id="new-release-note">
          <p>HymenopteraMine has been updated to the latest version 1.5. Please see the data sources page for a full list of data and their versions.</p>
          <p>If you have any questions, please see our docs and youtube videos. Please do not hesitate to contact us should you require any further assistance. For all types of help and feedback email hymenopteragenomedatabase@gmail.com.</p>
        </div>
        <br/>
        <div class="note_header">
          <h3>HymenopteraMine v1.5 release</h3>
          <h5>June 2021</h5>
        </div>
        <div class="note_desc">
          <h4>New species</h4>
          <ul>
            <li>Belonocnema treatae</li>
            <li>Bombus bifarius</li>
            <li>Bombus vancouverensis nearcticus</li>
            <li>Bombus vosnesenskii</li>
            <li>Chelonus insularis</li>
            <li>Formica exsecta</li>
            <li>Megalopta genalis</li>
            <li>Nomia melanderi</li>
            <li>Nylanderia fulva</li>
            <li>Odontomachus brunneus</li>
            <li>Osmia bicornis bicornis</li>
            <li>Osmia lignaria</li>
          </ul>
          <br/>
          <h4>Species with updated genomes assemblies and RefSeq gene sets</h4>
          <ul>
            <li>Apis florea</li>
            <li>Diachasma alloeum</li>
            <li>Nasonia vitripennis</li>
          </ul>
          <br/>
          <h4>Species with updated RefSeq gene sets</h4>
          <ul>
            <li>Apis cerana</li>
            <li>Apis dorsata</li>
            <li>Bombus impatiens</li>
          </ul>
          <br/>
          <h4>New data</h4>
          <ul>
            <li>GenBank genes added for Melipona quadrifasciata</li>
            <li>New Gene Ontology Annotation dataset, called HGD-GO-Annotation, which includes all species</li>
            <li>New ortholog dataset, called HGD-Ortho, computed for all species using OrthoLoger</li>
          </ul>
        </div>
        <br/>
        <div class="note_header">
          <h3>HymenopteraMine v1.4 release</h3>
          <h5>June 2019</h5>
        </div>
        <div class="note_desc">
          <h4>Features</h4>
          <ul>
            <li>Homologues now include cluster ID and last common ancestor.</li>
          </ul>
        </div>
        <br/>
        <div class="note_header">
          <h3>HymenopteraMine v1.3 release</h3>
          <h5>September 2017</h5>
        </div>
        <div class="note_desc">
          <h4>Data sets</h4>
          <ul>
            <li>KEGG data set-July 2017 release added.</li>
            <li>Ensembl Metazoa release 36 - August 2017 added.</li>
            <li>GCF_000143395.1 Assembly and RefSeq gene set for Atta cephalotes(Attacep1.0) added.</li>
            <li>GCF_001442555.1 Assembly and RefSeq gene set for Apis cerana(ACSNU-2.0) added.</li>
            <li>GCF_001652005.1 Assembly and RefSeq gene set for Ceratina calcarata(ASM165200v1) added.</li>
            <li>GCF_000980195.1 Assembly and RefSeq gene set for Monomorium pharaonis(M.pharaonis_V2.0) added.</li>
          </ul>    
        </div>
        <br/>
      </div>
    </div>
  </body>
</html>
