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
          <h3>HymenopteraMine v1.6 release</h3>
          <h5>January 2023</h5>
        </div>
        <div class="note_desc">
          <h4>New species</h4>
          <ul>
            <li><i>Ancistrocerus nigricornis </i></li>
            <li><i>Andrena dorsata </i></li>
            <li><i>Andrena haemorrhoa </i></li>
            <li><i>Anoplius nigerrimus </i></li>
            <li><i>Aphidius gifuensis </i></li>
            <li><i>Apis laboriosa </i></li>
            <li><i>Bombus breviceps </i></li>
            <li><i>Bombus campestris </i></li>
            <li><i>Bombus confusus </i></li>
            <li><i>Bombus consobrinus </i></li>
            <li><i>Bombus cullumanus </i></li>
            <li><i>Bombus difficillimus </i></li>
            <li><i>Bombus haemorrhoidalis </i></li>
            <li><i>Bombus hortorum </i></li>
            <li><i>Bombus hypnorum </i></li>
            <li><i>Bombus opulentus </i></li>
            <li><i>Bombus pascuorum </i></li>
            <li><i>Bombus picipes </i></li>
            <li><i>Bombus polaris </i></li>
            <li><i>Bombus pratorum </i></li>
            <li><i>Bombus pyrosoma </i></li>
            <li><i>Bombus sibiricus </i></li>
            <li><i>Bombus skorikovi </i></li>
            <li><i>Bombus soroeensis </i></li>
            <li><i>Bombus superbus </i></li>
            <li><i>Bombus sylvestris </i></li>
            <li><i>Bombus turneri </i></li>
            <li><i>Bombus waltoni </i></li>
            <li><i>Cerceris rybyensis </i></li>
            <li><i>Colletes gigas </i></li>
            <li><i>Cotesia glomerata </i></li>
            <li><i>Diprion similis </i></li>
            <li><i>Dolichovespula media </i></li>
            <li><i>Dolichovespula saxonica </i></li>
            <li><i>Ectemnius continuus </i></li>
            <li><i>Ectemnius lituratus </i></li>
            <li><i>Frieseomelitta varia </i></li>
            <li><i>Ichneumon xanthorius </i></li>
            <li><i>Lasioglossum lativentre </i></li>
            <li><i>Lasioglossum morio </i></li>
            <li><i>Leptopilina heterotoma </i></li>
            <li><i>Macropis europaea </i></li>
            <li><i>Neodiprion fabricii </i></li>
            <li><i>Neodiprion pinetum </i></li>
            <li><i>Neodiprion virginianus </i></li>
            <li><i>Nomada fabriciana </i></li>
            <li><i>Nysson spinosus </i></li>
            <li><i>Polistes fuscatus </i></li>
            <li><i>Seladonia tumulorum </i></li>
            <li><i>Sphecodes monilicornis </i></li>
            <li><i>Venturia canescens </i></li>
            <li><i>Vespa crabro </i></li>
            <li><i>Vespa mandarinia </i></li>
            <li><i>Vespa velutina </i></li>
            <li><i>Vespula germanica </i></li>
            <li><i>Vespula pensylvanica </i></li>
            <li><i>Vespula vulgaris</i></li>
          </ul>
          <br/>
          <h4>Species with new genomes assemblies and RefSeq gene sets</h4>
          <ul>
            <li><i>Athalia rosae </i></li>
            <li><i>Bombus terrestris </i></li>
            <li><i>Monomorium pharaonic </i></li>
            <li><i>Neodiprion lecontei </i></li>
            <li><i>Nomia melanderi </i></li>
            <li><i>Nylanderia fulva </i></li>
            <li><i>Osmia bicornis bicornis </i></li>
            <li><i>Solenopsis invicta </i></li>
            <li><i>Trachymyrmex cornetzi</i></li>
          </ul>
          <br/>
          <h4>Species with new name</h4>
          <ul>
            <li>Belonocnema kinseyi (previously called Belonocnema treatae)</li>
          </ul>
          <br/>
          <h4>New data and features</h4>
          <ul>
            <li>A new Drosophila-RBH dataset, which consists of one-to-one orthologues between <i>D. melanogaster genes</i> and hymenopteran genes, was computed based on reciprocal-best-hit protein alignments. </li>
            <li>HGD-GO-Annotation was re-computed for all species with updated input data. </li>
            <li>HGD-Ortho was re-computed for all species using OrthoLoger. </li>
            <li>Orthologue Clusters, a new data collection, allows searching based on orthologue cluster id and retrieving a new report page providing gene information, coding sequences and protein sequences. </li>
            <li>All external data sources have been updated (BioGrid, KEGG, IntAct, OrthoDB, Publications, Reactome, UniProt). </li>
            <li>Ensembl Rapid Release is a new source of gene annotations.</li>
          </ul>
        </div>
        <br/>
        <div class="note_header">
          <h3>HymenopteraMine v1.5 release</h3>
          <h5>June 2021</h5>
        </div>
        <div class="note_desc">
          <h4>New species</h4>
          <ul>
            <li><i>Belonocnema treatae</i></li>
            <li><i>Bombus bifarius</i></li>
            <li><i>Bombus vancouverensis nearcticus</i></li>
            <li><i>Bombus vosnesenskii</i></li>
            <li><i>Chelonus insularis</i></li>
            <li><i>Formica exsecta</i></li>
            <li><i>Megalopta genalis</i></li>
            <li><i>Nomia melanderi</i></li>
            <li><i>Nylanderia fulva</i></li>
            <li><i>Odontomachus brunneus</i></li>
            <li><i>Osmia bicornis bicornis</i></li>
            <li><i>Osmia lignaria</i></li>
          </ul>
          <br/>
          <h4>Species with updated genomes assemblies and RefSeq gene sets</h4>
          <ul>
            <li><i>Apis florea</i></li>
            <li><i>Diachasma alloeum</i></li>
            <li><i>Nasonia vitripennis</i></li>
          </ul>
          <br/>
          <h4>Species with updated RefSeq gene sets</h4>
          <ul>
            <li><i>Apis cerana</i></li>
            <li><i>Apis dorsata</i></li>
            <li><i>Bombus impatiens</i></li>
          </ul>
          <br/>
          <h4>New data</h4>
          <ul>
            <li>GenBank genes added for <i>Melipona quadrifasciata</i></li>
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
