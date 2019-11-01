<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="im"%>
<!-- dataCategories -->
<c:set var="note1" value="Only genes that have been mapped to the genome have been loaded"/>
<c:set var="note2" value="Also orthologues from these organisms to <i>C. familiaris</i>, <i>D. discoideum</i>, <i>D. rerio</i>, <i>G. gallus</i>, <i>H. sapiens</i>, <i>M. musculus</i>, <i>P. troglodytes</i>, <i>R. norvegicus</i>, <i>S. pombe</i>." />
<c:set var="note3" value="These data have been re-mapped to genome sequence release 5.0 as of FlyMine release 7.0."/>
<html:xhtml/>
<div class="body">
   <im:boxarea title="Data" stylename="plainbox">
      <p>
         <fmt:message key="dataCategories.intro"/>
      </p>
   </im:boxarea>

<table cellpadding="0" cellspacing="0" border="0" class="dbsources"><tr><th width="15%">Data Category</th><th width="20%">Data</th><th width="20%">Organism</th><th width="15%">Source</th><th width="20%">PubMed</th><th width="10%">Link
</th></tr><tr>
<td class="leftcol" rowspan="63"><h2><p>Genes</p></h2></td>
<td rowspan="19">Consortium Official Gene Set</td>
<td>Acromyrmex echinatior</td>
<td>aech_OGSv3.8</td>
<td>Nygard et al. -  PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/21719571" target="_blank">21719571</a></td>
<td><a href="http://www.hymenopteragenome.org/acromyrmex/?q=genome_consortium_datasets" target="_blank">HGD Ant Genomes</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Apis mellifera</td>
<td>amel_OGSv3.2</td>
<td>Elsik et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/24479613" target="_blank">24479613</a><br>Honeybee Genome Sequencing Consortium - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/17073008" target="_blank">17073008</a></td>
<td><a href="http://hymenopteragenome.org/beebase/?q=consortium_datasets" target="_blank">HGD BeeBase</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Atta cephalotes</td>
<td>acep_OGSv1.2</td>
<td>Suen et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/21347285" target="_blank">21347285</a></td>
<td><a href="http://www.hymenopteragenome.org/atta/?q=genome_consortium_datasets" target="_blank">HGD Ant Genomes</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Bombus impatiens</td>
<td>bimp_OGSv1.0</td>
<td>Sadd et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/25908251" target="_blank">25908251</a></td>
<td><a href="http://hymenopteragenome.org/beebase/?q=consortium_datasets" target="_blank">HGD BeeBase</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Camponotus floridanus</td>
<td>cflo_OGSv3.3</td>
<td>Bonasio et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/20798317" target="_blank">20798317</a></td>
<td><a href="http://www.hymenopteragenome.org/camponotus/?q=genome_consortium_datasets" target="_blank">HGD Ant Genomes</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Cardiocondyla obscurior</td>
<td>cobs_OGSv1.4</td>
<td>Schrader et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/25510865" target="_blank">25510865</a></td>
<td><a href="http://www.hymenopteragenome.org/cardiocondyla/?q=genome_consortium_datasets" target="_blank">HGD Ant Genomes</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Dufourea novaeangliae</td>
<td>Dufourea_novaeangliae_v1.1</td>
<td>Kapheim KM et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/25977371" target="_blank">25977371</a></td>
<td><a href="http://hymenopteragenome.org/beebase/?q=consortium_datasets" target="_blank">HGD BeeBase</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Eufriesea mexicana</td>
<td>Eufriesea_mexicana_v1.1</td>
<td>Kapheim KM et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/25977371" target="_blank">25977371</a></td>
<td><a href="http://hymenopteragenome.org/beebase/?q=consortium_datasets" target="_blank">HGD BeeBase</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Habropoda laboriosa</td>
<td>Habropoda_laboriosa_v1.2</td>
<td>Kapheim KM et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/25977371" target="_blank">25977371</a></td>
<td><a href="http://hymenopteragenome.org/beebase/?q=consortium_datasets" target="_blank">HGD BeeBase</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Harpegnathos saltator</td>
<td>hsal_OGSv3.3</td>
<td>Bonasio et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/20798317" target="_blank">20798317</a></td>
<td><a href="http://www.hymenopteragenome.org/harpegnathos/?q=genome_consortium_datasets" target="_blank">HGD Ant Genomes</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Lasioglossum albipes</td>
<td>lalb_OGSv5.42</td>
<td>Kocher et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/24359881" target="_blank">24359881</a></td>
<td><a href="http://hymenopteragenome.org/beebase/?q=consortium_datasets" target="_blank">HGD BeeBase</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Linepithema humile</td>
<td>lhum_OGSv1.2</td>
<td>Smith et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/21282631" target="_blank">21282631</a></td>
<td><a href="http://hymenopteragenome.org/linepithema/?q=genome_consortium_datasets" target="_blank">HGD Ant Genomes</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Megachile rotundata</td>
<td>Megachile_rotundata_v1.1</td>
<td>Kapheim KM et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/25977371" target="_blank">25977371</a></td>
<td><a href="http://hymenopteragenome.org/beebase/?q=consortium_datasets" target="_blank">HGD BeeBase</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Melipona quadrifasciata</td>
<td>Melipona_quadrifasciata_v1.1_</td>
<td>Kapheim KM et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/25977371" target="_blank">25977371</a></td>
<td><a href="http://hymenopteragenome.org/beebase/?q=consortium_datasets" target="_blank">HGD BeeBase</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td rowspan="2">Nasonia vitripennis</td>
<td>nvit_OGSv1.2</td>
<td>Werren JH et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/20075255" target="_blank">20075255</a></td>
<td><a href="http://www.hymenopteragenome.org/nasonia/?q=sequencing_and_analysis_consortium_datasets" target="_blank">HGD NasoniaBase</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Nvit_EviGene</td>
<td>Rago A et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/27561358" target="_blank">27561358</a></td>
<td><a href="http://www.hymenopteragenome.org/nasonia/?q=sequencing_and_analysis_consortium_datasets" target="_blank">HGD NasoniaBase</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Ooceraea biroi</td>
<td>armyant.OGS.V1.8.6</td>
<td>Oxley PR et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/24508170" target="_blank">24508170</a></td>
<td><a href="http://hymenopteragenome.org/cardiocondyla/?q=genome_consortium_datasets">HGD Ant Genomes</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Pogonomyrmex barbatus</td>
<td>pbar_OGSv1.2</td>
<td>Smith et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/21282651" target="_blank">21282651</a></td>
<td><a href="http://hymenopteragenome.org/pogo/?q=genome_consortium_datasets" target="_blank">HGD Ant Genomes</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Solenopsis invicta</td>
<td>sinv_OGSv2.2.3</td>
<td>Wurm et al. -  PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/21282665" target="_blank">21282665</a></td>
<td><a href="http://hymenopteragenome.org/solenopsis/?q=genome_consortium_datasets" target="_blank">HGD Ant Genomes</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td rowspan="44">NCBI Annotation (RefSeq and Gene)</td>
<td>Acromyrmex echinatior</td>
<td>GCF_000204515.1_Aech_3.9</td>
<td rowspan="44">O'Leary NA et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/26553804" target="_blank">26553804</a></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Acromyrmex_echinatior/latest_assembly_versions/GCF_000204515.1_Aech_3.9" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Apis cerana</td>
<td>GCF_001442555.1_ACSNU-2.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Apis_cerana/latest_assembly_versions/GCF_001442555.1_ACSNU-2.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Apis dorsata</td>
<td>GCF_000469605.1_Apis_dorsata_1.3</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Apis_dorsata/latest_assembly_versions/GCF_000469605.1_Apis_dorsata_1.3" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Apis florea</td>
<td>GCF_000184785.2_Aflo_1.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Apis_florea/latest_assembly_versions/GCF_000184785.2_Aflo_1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Apis mellifera</td>
<td>GCF_003254395.2_Amel_HAv3.1</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Apis_mellifera/latest_assembly_versions/GCF_003254395.2_Amel_HAv3.1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Athalia rosae</td>
<td>GCF_000344095.2_Aros_2.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Athalia_rosae/latest_assembly_versions/GCF_000344095.2_Aros_2.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Atta cephalotes</td>
<td>GCF_000143395.1_Attacep1.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Atta_cephalotes/latest_assembly_versions/GCF_000143395.1_Attacep1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Atta colombica</td>
<td>GCF_001594045.1_Acol1.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Atta_colombica/latest_assembly_versions/GCF_001594045.1_Acol1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Bombus impatiens</td>
<td>GCF_000188095.3_BIMP_2.2</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Bombus_impatiens/latest_assembly_versions/GCF_000188095.3_BIMP_2.2" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Bombus terrestris</td>
<td>GCF_000214255.1_Bter_1.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Bombus_terrestris/latest_assembly_versions/GCF_000214255.1_Bter_1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Camponotus floridanus</td>
<td>GCF_003227725.1_Cflo_v7.5</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Camponotus_floridanus/latest_assembly_versions/GCF_003227725.1_Cflo_v7.5" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Cephus cinctus</td>
<td>GCF_000341935.1_Ccin1</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Cephus_cinctus/latest_assembly_versions/GCF_000341935.1_Ccin1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Ceratina calcarata</td>
<td>GCF_001652005.1_ASM165200v1</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Ceratina_calcarata/latest_assembly_versions/GCF_001652005.1_ASM165200v1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Ceratosolen solmsi</td>
<td>GCF_000503995.1_CerSol_1.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Ceratosolen_solmsi/latest_assembly_versions/GCF_000503995.1_CerSol_1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Copidosoma floridanum</td>
<td>GCF_000648655.2_Cflo_2.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Copidosoma_floridanum/latest_assembly_versions/GCF_000648655.2_Cflo_2.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Cyphomyrmex costatus</td>
<td>GCF_001594065.1_Ccosl1.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Cyphomyrmex_costatus/latest_assembly_versions/GCF_001594065.1_Ccosl1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Diachasma alloeum</td>
<td>GCF_001412515.1_Dall1.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Diachasma_alloeum/latest_assembly_versions/GCF_001412515.1_Dall1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Dinoponera quadriceps</td>
<td>GCF_001313825.1_ASM131382v1</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Dinoponera_quadriceps/latest_assembly_versions/GCF_001313825.1_ASM131382v1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Drosophila melanogaster</td>
<td>GCF_000001215.4_Release_6_plus_ISO1_MT</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Drosophila_melanogaster/latest_assembly_versions/GCF_000001215.4_Release_6_plus_ISO1_MT" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Dufourea novaeangliae</td>
<td>GCF_001272555.1_ASM127255v1</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Dufourea_novaeangliae/latest_assembly_versions/GCF_001272555.1_ASM127255v1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Eufriesea mexicana</td>
<td>GCF_001483705.1_ASM148370v1</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Eufriesea_mexicana/latest_assembly_versions/GCF_001483705.1_ASM148370v1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Fopius arisanus</td>
<td>GCF_000806365.1_ASM80636v1</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Fopius_arisanus/latest_assembly_versions/GCF_000806365.1_ASM80636v1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Habropoda laboriosa</td>
<td>GCF_001263275.1_ASM126327v1</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Habropoda_laboriosa/latest_assembly_versions/GCF_001263275.1_ASM126327v1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Harpegnathos saltator</td>
<td>GCF_003227715.1_Hsal_v8.5</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Harpegnathos_saltator/latest_assembly_versions/GCF_003227715.1_Hsal_v8.5" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Linepithema humile</td>
<td>GCF_000217595.1_Lhum_UMD_V04</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Linepithema_humile/latest_assembly_versions/GCF_000217595.1_Lhum_UMD_V04" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Megachile_rotundata</td>
<td>GCF_000220905.1_MROT_1.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Megachile_rotundata/latest_assembly_versions/GCF_000220905.1_MROT_1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Microplitis demolitor</td>
<td>GCF_000572035.2_Mdem2</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Microplitis_demolitor/latest_assembly_versions/GCF_000572035.2_Mdem2" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Monomorium pharaonis</td>
<td>GCF_003260585.2_ASM326058v2</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Monomorium_pharaonis/latest_assembly_versions/GCF_003260585.2_ASM326058v2" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Nasonia vitripennis</td>
<td>GCF_000002325.3_Nvit_2.1</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Nasonia_vitripennis/latest_assembly_versions/GCF_000002325.3_Nvit_2.1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Neodiprion lecontei</td>
<td>GCF_001263575.1_Nlec1.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Neodiprion_lecontei/latest_assembly_versions/GCF_001263575.1_Nlec1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Ooceraea biroi</td>
<td>GCF_003672135.1_Obir_v5.4</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Ooceraea_biroi/latest_assembly_versions/GCF_003672135.1_Obir_v5.4" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Orussus abietinus</td>
<td>GCF_000612105.2_Oabi_2.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Orussus_abietinus/latest_assembly_versions/GCF_000612105.2_Oabi_2.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Pogonomyrmex barbatus</td>
<td>GCF_000187915.1_Pbar_UMD_V03</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Pogonomyrmex_barbatus/latest_assembly_versions/GCF_000187915.1_Pbar_UMD_V03" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Polistes canadensis</td>
<td>GCF_001313835.1_ASM131383v1</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Polistes_canadensis/latest_assembly_versions/GCF_001313835.1_ASM131383v1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Polistes dominula</td>
<td>GCF_001465965.1_Pdom_r1.2</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Polistes_dominula/latest_assembly_versions/GCF_001465965.1_Pdom_r1.2" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Pseudomyrmex gracilis</td>
<td>GCF_002006095.1_ASM200609v1</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Pseudomyrmex_gracilis/latest_assembly_versions/GCF_002006095.1_ASM200609v1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Solenopsis invicta</td>
<td>GCF_000188075.2_Si_gnH</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Solenopsis_invicta/latest_assembly_versions/GCF_000188075.2_Si_gnH" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Temnothorax curvispinosus</td>
<td>GCF_003070985.1_ASM307098v1</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Temnothorax_curvispinosus/latest_assembly_versions/GCF_003070985.1_ASM307098v1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Trachymyrmex cornetzi</td>
<td>GCF_001594075.1_Tcor1.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Trachymyrmex_cornetzi/latest_assembly_versions/GCF_001594075.1_Tcor1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Trachymyrmex septentrionalis</td>
<td>GCF_001594115.1_Tsep1.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Trachymyrmex_septentrionalis/latest_assembly_versions/GCF_001594115.1_Tsep1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Trachymyrmex zeteki</td>
<td>GCF_001594055.1_Tzet1.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Trachymyrmex_zeteki/latest_assembly_versions/GCF_001594055.1_Tzet1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Trichogramma pretiosum</td>
<td>GCF_000599845.2_Tpre_2.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Trichogramma_pretiosum/latest_assembly_versions/GCF_000599845.2_Tpre_2.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Vollenhovia emeryi</td>
<td>GCF_000949405.1_V.emery_V1.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Vollenhovia_emeryi/latest_assembly_versions/GCF_000949405.1_V.emery_V1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Wasmannia auropunctata</td>
<td>GCF_000956235.1_wasmannia.A_1.0</td>
<!-- part of rowspan -->
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Wasmannia_auropunctata/latest_assembly_versions/GCF_000956235.1_wasmannia.A_1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<td class="leftcol"><h2><p>Homology</p></h2></td>
<td>Orthologue relationships from OrthoDB</td>
<td>Acromyrmex echinatior<br>Apis mellifera<br>Athalia rosae<br>Atta colombica<br>Bombus impatiens<br>Camponotus floridanus<br>Cephus cinctus<br>Ceratina calcarata<br>Copidosoma floridanum<br>Cyphomyrmex costatus<br>Diachasma alloeum<br>Dinoponera quadriceps<br>Drosophila melanogaster<br>Dufourea novaeangliae<br>Eufriesea mexicana<br>Fopius arisanus<br>Habropoda laboriosa<br>Harpegnathos saltator<br>Linepithema humile<br>Megachile_rotundata<br>Microplitis demolitor<br>Monomorium pharaonis<br>Nasonia vitripennis<br>Neodiprion lecontei<br>Ooceraea biroi<br>Orussus abietinus<br>Pogonomyrmex barbatus<br>Polistes canadensis<br>Pseudomyrmex gracilis<br>Solenopsis invicta<br>Trachymyrmex septentrionalis<br>Trichogramma pretiosum<br>Vollenhovia emeryi<br>Wasmannia auropunctata</td>
<td>OrthoDB Version 10</td>
<td>Kriventseva EV et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/30395283" target="_blank">30395283</a></td>
<td><a href="https://www.orthodb.org/?page=filelist" target="_blank">OrthoDB Downloads</a></td>
</tr>
<tr>
<td class="leftcol" rowspan="2"><h2><p>Proteins</p></h2></td>
<td>Protein Annotations from UniProt</td>
<td>Acromyrmex echinatior<br>Apis cerana<br>Apis dorsata<br>Apis florea<br>Apis mellifera<br>Athalia rosae<br>Atta cephalotes<br>Atta colombica<br>Bombus impatiens<br>Bombus terrestris<br>Camponotus floridanus<br>Cardiocondyla obscurior<br>Cephus cinctus<br>Ceratina calcarata<br>Ceratosolen solmsi<br>Copidosoma floridanum<br>Cyphomyrmex costatus<br>Diachasma alloeum<br>Dinoponera quadriceps<br>Drosophila melanogaster<br>Dufourea novaeangliae<br>Eufriesea mexicana<br>Fopius arisanus<br>Habropoda laboriosa<br>Harpegnathos saltator<br>Lasioglossum albipes<br>Linepithema humile<br>Megachile_rotundata<br>Melipona quadrifasciata<br>Microplitis demolitor<br>Monomorium pharaonis<br>Nasonia vitripennis<br>Neodiprion lecontei<br>Ooceraea biroi<br>Orussus abietinus<br>Pogonomyrmex barbatus<br>Polistes canadensis<br>Polistes dominula<br>Pseudomyrmex gracilis<br>Solenopsis invicta<br>Temnothorax curvispinosus<br>Trachymyrmex cornetzi<br>Trachymyrmex septentrionalis<br>Trachymyrmex zeteki<br>Trichogramma pretiosum<br>Vollenhovia emeryi<br>Wasmannia auropunctata</td>
<td>UniProt - Release 2019_04</td>
<td>The UniProt Consortium -  PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/30395287" target="_blank">30395287</a></td>
<td><a href="https://www.uniprot.org/downloads" target="_blank">UniProt downloads</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td>Protein family and domain assignments to proteins from InterPro</td>
<td>Acromyrmex echinatior<br>Apis cerana<br>Apis dorsata<br>Apis florea<br>Apis mellifera<br>Athalia rosae<br>Atta cephalotes<br>Atta colombica<br>Bombus impatiens<br>Bombus terrestris<br>Camponotus floridanus<br>Cardiocondyla obscurior<br>Cephus cinctus<br>Ceratina calcarata<br>Ceratosolen solmsi<br>Copidosoma floridanum<br>Cyphomyrmex costatus<br>Diachasma alloeum<br>Dinoponera quadriceps<br>Drosophila melanogaster<br>Dufourea novaeangliae<br>Eufriesea mexicana<br>Fopius arisanus<br>Habropoda laboriosa<br>Harpegnathos saltator<br>Lasioglossum albipes<br>Linepithema humile<br>Megachile_rotundata<br>Melipona quadrifasciata<br>Microplitis demolitor<br>Monomorium pharaonis<br>Nasonia vitripennis<br>Neodiprion lecontei<br>Ooceraea biroi<br>Orussus abietinus<br>Pogonomyrmex barbatus<br>Polistes canadensis<br>Polistes dominula<br>Pseudomyrmex gracilis<br>Solenopsis invicta<br>Temnothorax curvispinosus<br>Trachymyrmex cornetzi<br>Trachymyrmex septentrionalis<br>Trachymyrmex zeteki<br>Trichogramma pretiosum<br>Vollenhovia emeryi<br>Wasmannia auropunctata</td>
<td>InterPro version 73</td>
<td>Mitchel AL et al. PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/30398656" target="_blank">30398656</a></td>
<td><a href="ftp://ftp.ebi.ac.uk/pub/databases/interpro" target="_blank">InterPro FTP</a></td>
</tr>
<tr>
<td class="leftcol"><h2><p>Gene Ontology Annotation</p></h2></td>
<td>Protein Annotations from UniProt</td>
<td>Acromyrmex echinatior<br>Apis cerana<br>Apis dorsata<br>Apis florea<br>Apis mellifera<br>Athalia rosae<br>Atta cephalotes<br>Atta colombica<br>Bombus impatiens<br>Bombus terrestris<br>Camponotus floridanus<br>Cardiocondyla obscurior<br>Cephus cinctus<br>Ceratina calcarata<br>Ceratosolen solmsi<br>Copidosoma floridanum<br>Cyphomyrmex costatus<br>Diachasma alloeum<br>Dinoponera quadriceps<br>Drosophila melanogaster<br>Dufourea novaeangliae<br>Eufriesea mexicana<br>Fopius arisanus<br>Habropoda laboriosa<br>Harpegnathos saltator<br>Lasioglossum albipes<br>Linepithema humile<br>Megachile_rotundata<br>Melipona quadrifasciata<br>Microplitis demolitor<br>Monomorium pharaonis<br>Nasonia vitripennis<br>Neodiprion lecontei<br>Ooceraea biroi<br>Orussus abietinus<br>Pogonomyrmex barbatus<br>Polistes canadensis<br>Polistes dominula<br>Pseudomyrmex gracilis<br>Solenopsis invicta<br>Temnothorax curvispinosus<br>Trachymyrmex cornetzi<br>Trachymyrmex septentrionalis<br>Trachymyrmex zeteki<br>Trichogramma pretiosum<br>Vollenhovia emeryi<br>Wasmannia auropunctata</td>
<td>UniProt - Release 2019_04</td>
<td>The UniProt Consortium PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/30395287" target="_blank">30395287</a></td>
<td><a href="https://www.uniprot.org/downloads" target="_blank">UniProt downloads</a></td>
</tr>
<tr>
<td class="leftcol" rowspan="47"><h2><p>Genome Assembly</p></h2></td>
<td rowspan="47">Genome Assembly</td>
<td>Acromyrmex echinatior</td>
<td>GCF_000204515.1_Aech_3.9</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Acromyrmex_echinatior/latest_assembly_versions/GCF_000204515.1_Aech_3.9" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Apis cerana</td>
<td>GCF_001442555.1_ACSNU-2.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Apis_cerana/latest_assembly_versions/GCF_001442555.1_ACSNU-2.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Apis dorsata</td>
<td>GCF_000469605.1_Apis_dorsata_1.3</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Apis_dorsata/latest_assembly_versions/GCF_000469605.1_Apis_dorsata_1.3" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Apis florea</td>
<td>GCF_000184785.2_Aflo_1.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Apis_florea/latest_assembly_versions/GCF_000184785.2_Aflo_1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Apis mellifera</td>
<td>GCF_003254395.2_Amel_HAv3.1</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Apis_mellifera/latest_assembly_versions/GCF_003254395.2_Amel_HAv3.1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Athalia rosae</td>
<td>GCF_000344095.2_Aros_2.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Athalia_rosae/latest_assembly_versions/GCF_000344095.2_Aros_2.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Atta cephalotes</td>
<td>GCF_000143395.1_Attacep1.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Atta_cephalotes/latest_assembly_versions/GCF_000143395.1_Attacep1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Atta colombica</td>
<td>GCF_001594045.1_Acol1.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Atta_colombica/latest_assembly_versions/GCF_001594045.1_Acol1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Bombus impatiens</td>
<td>GCF_000188095.3_BIMP_2.2</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Bombus_impatiens/latest_assembly_versions/GCF_000188095.3_BIMP_2.2" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Bombus terrestris</td>
<td>GCF_000214255.1_Bter_1.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Bombus_terrestris/latest_assembly_versions/GCF_000214255.1_Bter_1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Camponotus floridanus</td>
<td>GCF_003227725.1_Cflo_v7.5</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Camponotus_floridanus/latest_assembly_versions/GCF_003227725.1_Cflo_v7.5" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Cardiocondyla obscurior</td>
<td>Cobs_1.4</td>
<td></td>
<td><a href="http://www.hymenopteragenome.org/cardiocondyla/?q=genome_consortium_datasets" target="_blank">HGD Ant Genomes</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Cephus cinctus</td>
<td>GCF_000341935.1_Ccin1</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Cephus_cinctus/latest_assembly_versions/GCF_000341935.1_Ccin1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Ceratina calcarata</td>
<td>GCF_001652005.1_ASM165200v1</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Ceratina_calcarata/latest_assembly_versions/GCF_001652005.1_ASM165200v1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Ceratosolen solmsi</td>
<td>GCF_000503995.1_CerSol_1.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Ceratosolen_solmsi/latest_assembly_versions/GCF_000503995.1_CerSol_1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Copidosoma floridanum</td>
<td>GCF_000648655.2_Cflo_2.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Copidosoma_floridanum/latest_assembly_versions/GCF_000648655.2_Cflo_2.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Cyphomyrmex costatus</td>
<td>GCF_001594065.1_Ccosl1.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Cyphomyrmex_costatus/latest_assembly_versions/GCF_001594065.1_Ccosl1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Diachasma alloeum</td>
<td>GCF_001412515.1_Dall1.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Diachasma_alloeum/latest_assembly_versions/GCF_001412515.1_Dall1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Dinoponera quadriceps</td>
<td>GCF_001313825.1_ASM131382v1</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Dinoponera_quadriceps/latest_assembly_versions/GCF_001313825.1_ASM131382v1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Drosophila melanogaster</td>
<td>GCF_000001215.4_Release_6_plus_ISO1_MT</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Drosophila_melanogaster/latest_assembly_versions/GCF_000001215.4_Release_6_plus_ISO1_MT" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Dufourea novaeangliae</td>
<td>GCF_001272555.1_ASM127255v1</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Dufourea_novaeangliae/latest_assembly_versions/GCF_001272555.1_ASM127255v1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Eufriesea mexicana</td>
<td>GCF_001483705.1_ASM148370v1</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Eufriesea_mexicana/latest_assembly_versions/GCF_001483705.1_ASM148370v1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Fopius arisanus</td>
<td>GCF_000806365.1_ASM80636v1</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Fopius_arisanus/latest_assembly_versions/GCF_000806365.1_ASM80636v1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Habropoda laboriosa</td>
<td>GCF_001263275.1_ASM126327v1</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Habropoda_laboriosa/latest_assembly_versions/GCF_001263275.1_ASM126327v1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Harpegnathos saltator</td>
<td>GCF_003227715.1_Hsal_v8.5</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Harpegnathos_saltator/latest_assembly_versions/GCF_003227715.1_Hsal_v8.5" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Lasioglossum albipes</td>
<td>Lalb_v2</td>
<td></td>
<td><a href="http://hymenopteragenome.org/beebase/?q=consortium_datasets" target="_blank">HGD BeeBase</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Linepithema humile</td>
<td>GCF_000217595.1_Lhum_UMD_V04</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Linepithema_humile/latest_assembly_versions/GCF_000217595.1_Lhum_UMD_V04" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Megachile_rotundata</td>
<td>GCF_000220905.1_MROT_1.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Megachile_rotundata/latest_assembly_versions/GCF_000220905.1_MROT_1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Melipona quadrifasciata</td>
<td>GCA_001276565.1_ASM127656v1</td>
<td></td>
<td><a href="http://www.hymenopteragenome.org/cardiocondyla/?q=genome_consortium_datasets" target="_blank">HGD Ant Genomes</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Microplitis demolitor</td>
<td>GCF_000572035.2_Mdem2</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Microplitis_demolitor/latest_assembly_versions/GCF_000572035.2_Mdem2" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Monomorium pharaonis</td>
<td>GCF_003260585.2_ASM326058v2</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Monomorium_pharaonis/latest_assembly_versions/GCF_003260585.2_ASM326058v2" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Nasonia vitripennis</td>
<td>GCF_000002325.3_Nvit_2.1</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Nasonia_vitripennis/latest_assembly_versions/GCF_000002325.3_Nvit_2.1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Neodiprion lecontei</td>
<td>GCF_001263575.1_Nlec1.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Neodiprion_lecontei/latest_assembly_versions/GCF_001263575.1_Nlec1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Ooceraea biroi</td>
<td>GCF_003672135.1_Obir_v5.4</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Ooceraea_biroi/latest_assembly_versions/GCF_003672135.1_Obir_v5.4" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Orussus abietinus</td>
<td>GCF_000612105.2_Oabi_2.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Orussus_abietinus/latest_assembly_versions/GCF_000612105.2_Oabi_2.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Pogonomyrmex barbatus</td>
<td>GCF_000187915.1_Pbar_UMD_V03</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Pogonomyrmex_barbatus/latest_assembly_versions/GCF_000187915.1_Pbar_UMD_V03" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Polistes canadensis</td>
<td>GCF_001313835.1_ASM131383v1</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Polistes_canadensis/latest_assembly_versions/GCF_001313835.1_ASM131383v1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Polistes dominula</td>
<td>GCF_001465965.1_Pdom_r1.2</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Polistes_dominula/latest_assembly_versions/GCF_001465965.1_Pdom_r1.2" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Pseudomyrmex gracilis</td>
<td>GCF_002006095.1_ASM200609v1</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Pseudomyrmex_gracilis/latest_assembly_versions/GCF_002006095.1_ASM200609v1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Solenopsis invicta</td>
<td>GCF_000188075.2_Si_gnH</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Solenopsis_invicta/latest_assembly_versions/GCF_000188075.2_Si_gnH" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Temnothorax curvispinosus</td>
<td>GCF_003070985.1_ASM307098v1</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Temnothorax_curvispinosus/latest_assembly_versions/GCF_003070985.1_ASM307098v1" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Trachymyrmex cornetzi</td>
<td>GCF_001594075.1_Tcor1.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Trachymyrmex_cornetzi/latest_assembly_versions/GCF_001594075.1_Tcor1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Trachymyrmex septentrionalis</td>
<td>GCF_001594115.1_Tsep1.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Trachymyrmex_septentrionalis/latest_assembly_versions/GCF_001594115.1_Tsep1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Trachymyrmex zeteki</td>
<td>GCF_001594055.1_Tzet1.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Trachymyrmex_zeteki/latest_assembly_versions/GCF_001594055.1_Tzet1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Trichogramma pretiosum</td>
<td>GCF_000599845.2_Tpre_2.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Trichogramma_pretiosum/latest_assembly_versions/GCF_000599845.2_Tpre_2.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Vollenhovia emeryi</td>
<td>GCF_000949405.1_V.emery_V1.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Vollenhovia_emeryi/latest_assembly_versions/GCF_000949405.1_V.emery_V1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Wasmannia auropunctata</td>
<td>GCF_000956235.1_wasmannia.A_1.0</td>
<td></td>
<td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Wasmannia_auropunctata/latest_assembly_versions/GCF_000956235.1_wasmannia.A_1.0" target="_blank">NCBI ftp</a></td>
</tr>
<tr>
<td class="leftcol"><h2><p>Publications</p></h2></td>
<td>Gene versus publications</td>
<td>Acromyrmex echinatior<br>Apis cerana<br>Apis dorsata<br>Apis florea<br>Apis mellifera<br>Athalia rosae<br>Atta cephalotes<br>Bombus impatiens<br>Bombus terrestris<br>Camponotus floridanus<br>Cephus cinctus<br>Copidosoma floridanum<br>Dinoponera quadriceps<br>Drosophila melanogaster<br>Harpegnathos saltator<br>Linepithema humile<br>Megachile_rotundata<br>Microplitis demolitor<br>Monomorium pharaonis<br>Nasonia vitripennis<br>Ooceraea biroi<br>Orussus abietinus<br>Pogonomyrmex barbatus<br>Polistes dominula<br>Solenopsis invicta<br>Vollenhovia emeryi</td>
<td>NCBI PubMed</td>
<td>NCBI Resource Coordinators - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/29140470" target="_blank">29140470</a></td>
<td><a href="https://www.ncbi.nlm.nih.gov/pubmed/" target="_blank">NCBI PubMed</a></td>
</tr>
<tr>
<td class="leftcol" rowspan="2"><h2><p>Pathways</p></h2></td>
<td>Pathway information inferred through orthologues from curated human pathways</td>
<td>Drosophila melanogaster</td>
<td>Reactome Version 68, March 2019</td>
<td>Fabregat et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/29145629" target="_blank">29145629</a></td>
<td><a href="https://reactome.org/download/current" target="_blank">Reactome Download</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td>Pathway Information</td>
<td>Acromyrmex echinatior<br>Apis mellifera<br>Atta cephalotes<br>Bombus impatiens<br>Bombus terrestris<br>Camponotus floridanus<br>Dinoponera quadriceps<br>Drosophila melanogaster<br>Harpegnathos saltator<br>Linepithema humile<br>Microplitis demolitor<br>Monomorium pharaonis<br>Nasonia vitripennis<br>Ooceraea biroi<br>Pogonomyrmex barbatus<br>Polistes canadensis<br>Pseudomyrmex gracilis<br>Solenopsis invicta</td>
<td>KEGG</td>
<td>Kanehisa et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/27899662" target="_blank">27899662</a></td>
<td><a href="https://www.kegg.jp/kegg/download/" target="_blank">KEGG</a></td>
</tr>
<tr>
<td class="leftcol" rowspan="2"><h2><p>Interactions</p></h2></td>
<td rowspan="2">Interactions</td>
<td>Apis mellifera<br>Drosophila melanogaster</td>
<td>BioGRID - Version 3.5.171</td>
<td>Oughtred R. et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/30476227" target="_blank">30476227</a></td>
<td><a href="https://downloads.thebiogrid.org/BioGRID" target="_blank">BioGRID Download</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<!-- part of rowspan -->
<td>Drosophila melanogaster</td>
<td>IntAct - March 2019</td>
<td>Orchard S. et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/24234451" target="_blank">24234451</a></td>
<td><a href="ftp://ftp.ebi.ac.uk/pub/databases/IntAct/current/" target="_blank">IntAct FTP</a></td>
</tr>
<tr>
<td class="leftcol" rowspan="3"><h2><p>Ontologies</p></h2></td>
<td>Evidence Code Ontology (ECO)</td>
<td></td>
<td>Evidence Ontology - May 5, 2017</td>
<td>Chibucos et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/25052702" target="_blank">25052702</a></td>
<td><a href="http://www.evidenceontology.org/download/" target="_blank">ECO</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td>Gene Ontology (GO)</td>
<td></td>
<td>Gene Ontology - Jan 19, 2018</td>
<td>Gene Ontology Consortium - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/30395331" target="_blank">30395331</a></td>
<td><a href="http://geneontology.org/docs/download-ontology" target="_blank">GO</a></td>
</tr>
<tr>
<!-- part of rowspan -->
<td>Hymenoptera Anatomy Ontology (HAO)</td>
<td></td>
<td>Hymenoptera Anatomy Ontology - Apr 26, 2018</td>
<td>Yoder M.J. et al. - PubMed: <a href="https://www.ncbi.nlm.nih.gov/pubmed/21209921" target="_blank">21209921</a></td>
<td><a href="http://purl.obolibrary.org/obo/hao.obo" target="_blank">HAO FTP</a></td>
</tr>
</table>

<div class="body"></div>
</div>
<!-- /dataCategories -->
