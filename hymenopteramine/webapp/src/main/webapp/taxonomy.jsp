<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="im"%>
<%@ taglib uri="/WEB-INF/functions.tld" prefix="imf" %>

<html:xhtml />

    <link type="text/css" rel="stylesheet" href="jstree/dist/themes/default/style.min.css"/>
    <script type="text/javascript" src="jstree/dist/jstree.min.js"></script>
    <style>
        div#content-wrap {margin: 10px 20px 10px 20px; min-height: 500px;}
        li.category {font-weight: bold;}
        li.category-unbolded {font-weight: normal;}
        span.other-categories {font-weight: normal;}
        li.organism {font-style: italic; font-weight: normal;}
        div#jstree_ortho { font-size: 14px; }
    </style>
    <script type="text/javascript">
        jQuery(document).ready(function() { 
                jQuery('#jstree_ortho').jstree({
                        "core" : {
                                "themes" : {
                                        "dots"  : false,
                                        "icons" : false
                                },

                        },
                        "plugins" : ["conditionalselect"],
                        "conditionalselect" : function (node, event) {
                                return (node.children.length > 0);
                        },
                });
                jQuery('#jstree_ortho').bind("ready.jstree", function (event, data) {
                        jQuery("#jstree_ortho").jstree("open_all");
                });
                jQuery('#jstree_ortho').on("changed.jstree", function (event, data) {
                        if (data.node !== undefined) {
                                jQuery('#jstree_ortho').jstree("open_node", jQuery('#' + data.node.id));
                        }
                });
        });
    </script>
<div id="content-wrap">
<p>All species in HymenopteraMine are shown in the taxonomic tree below, which is based on information from the NCBI taxonomy database. The taxon names shown in bold are the last common ancestral groups that can be selected when querying the HGD-Ortho dataset.</p>
<p>&nbsp;</p>

	<div id="jstree_ortho">
		<ul id="tree-root">
			<li id="holometabola" class="category">
				Holometabola <span class="other-categories">(synonym Endopterygota)</span>
				<ul id="holometabola-children">
					<li id="hymenoptera" class="category">
						Hymenoptera
						<ul id="hymenoptera-children">
							<li id="apocrita" class="category">
								Apocrita
								<ul id="apocrita-children">
									<li id="aculeata" class="category">
										Aculeata
										<ul id="aculeata-children">
											<li id="apoidea" class="category">
												Apoidea
												<ul id="apoidea-children">
													<li id="apidae" class="category">
														Apidae
														<ul id="apidae-children">
															<li id="apis" class="category">
																Apis
																<ul id="apis-children">
																	<li id="apis-cerana" class="organism">
																		Apis cerana
																	</li>
																	<li id="apis-dorsata" class="organism">
																		Apis dorsata
																	</li>
																	<li id="apis-florea" class="organism">
																		Apis florea
																	</li>
																	<li id="apis-laboriosa" class="organism">
																		Apis laboriosa
																	</li>
																	<li id="apis-mellifera" class="organism">
																		Apis mellifera
																	</li>
																</ul>
															</li>
															<li id="bombus" class="category">
																Bombus
																<ul id="bombus-children">
																	<li id="bombus-bifarius" class="organism">
																		Bombus bifarius
																	</li>
																	<li id="bombus-breviceps" class="organism">
																		Bombus breviceps
																	</li>
																	<li id="bombus-campestris" class="organism">
																		Bombus campestris
																	</li>
																	<li id="bombus-confusus" class="organism">
																		Bombus confusus
																	</li>
																	<li id="bombus-consobrinus" class="organism">
																		Bombus consobrinus
																	</li>
																	<li id="bombus-cullumanus" class="organism">
																		Bombus cullumanus
																	</li>
																	<li id="bombus-difficillimus" class="organism">
																		Bombus difficillimus
																	</li>
																	<li id="bombus-haemorrhoidalis" class="organism">
																		Bombus haemorrhoidalis
																	</li>
																	<li id="bombus-hortorum" class="organism">
																		Bombus hortorum
																	</li>
																	<li id="bombus-hypnorum" class="organism">
																		Bombus hypnorum
																	</li>
																	<li id="bombus-impatiens" class="organism">
																		Bombus impatiens
																	</li>
																	<li id="bombus-opulentus" class="organism">
																		Bombus opulentus
																	</li>
																	<li id="bombus-pascuorum" class="organism">
																		Bombus pascuorum
																	</li>
																	<li id="bombus-picipes" class="organism">
																		Bombus picipes
																	</li>
																	<li id="bombus-polaris" class="organism">
																		Bombus polaris
																	</li>
																	<li id="bombus-pratorum" class="organism">
																		Bombus pratorum
																	</li>
																	<li id="bombus-pyrosoma" class="organism">
																		Bombus pyrosoma
																	</li>
																	<li id="bombus-sibiricus" class="organism">
																		Bombus sibiricus
																	</li>
																	<li id="bombus-skorikovi" class="organism">
																		Bombus skorikovi
																	</li>
																	<li id="bombus-soroeensis" class="organism">
																		Bombus soroeensis
																	</li>
																	<li id="bombus-superbus" class="organism">
																		Bombus superbus
																	</li>
																	<li id="bombus-sylvestris" class="organism">
																		Bombus sylvestris
																	</li>
																	<li id="bombus-terrestris" class="organism">
																		Bombus terrestris
																	</li>
																	<li id="bombus-turneri" class="organism">
																		Bombus turneri
																	</li>
																	<li id="bombus-vancouverensis-nearcticus" class="organism">
																		Bombus vancouverensis nearcticus
																	</li>
																	<li id="bombus-vosnesenskii" class="organism">
																		Bombus vosnesenskii
																	</li>												
																	<li id="bombus-waltoni" class="organism">
																		Bombus waltoni
																	</li>	
																</ul>
															<li id="ceratina-calcarata" class="organism">
																Ceratina calcarata
															</li>
															<li id="eufriesea-mexicana" class="organism">
																Eufriesea mexicana
															</li>
															<li id="frieseomelitta-varia" class="organism">
																Frieseomelitta varia
															</li>
															<li id="habropoda-laboriosa" class="organism">
																Habropoda laboriosa
															</li>
															<li id="melipona-quadrifasciata" class="organism">
																Melipona quadrifasciata
															</li>
															<li id="nomada-fabriciana" class="organism">
																Nomada fabriciana
															</li>
														</ul>
													</li>
													<li id="halictidae" class="category">
														Halictidae
														<ul id="halictidae-children">
															<li id="dufourea-novaeangliae" class="organism">
																Dufourea novaeangliae
															</li>
															<li id="lasioglossum-morio" class="organism">
																Lasioglossum morio
															</li>
															<li id="lasioglossum-lativentre" class="organism">
																Lasioglossum lativentre
															</li>
															<li id="lasioglossum-albipes" class="organism">
																Lasioglossum albipes
															</li>
															<li id="nomia-melanderi" class="organism">
																Nomia melanderi
															</li>
															<li id="megalopta-genalis" class="organism">
																Megalopta genalis
															</li>
															<li id="seladonia-tumulorum" class="organism">
																Seladonia tumulorum
															</li>
															<li id="sphecodes-monilicornis" class="organism">
																Sphecodes monilicornis
															</li>
														</ul>
													</li>	
													<li id="crabronidae" class="category">
														Crabronidae
														<ul id="calictidae-children">
															<li id="ectemnius-continuus" class="organism">
																Ectemnius continuus
															</li>
															<li id="ectemnius-lituratus" class="organism">
																Ectemnius lituratus
															</li>
															<li id="cerceris-rybyensis" class="organism">
																Cerceris rybyensis
															</li>
															<li id="nysson-spinosus" class="organism">
																Nysson spinosus
															</li>
														</ul>
													</li>
													<li id="andrena-dorsata" class="organism">
														Andrena dorsata
													</li>
													<li id="andrena-haemorrhoa" class="organism">
														Andrena haemorrhoa
													</li>
													<li id="colletes-gigas" class="organism">
														Colletes gigas
													</li>
													<li id="megachile-rotundata" class="organism">
														Megachile rotundata
													</li>
													<li id="micropis-europaea" class="organism">
														Micropis europaea
													</li>
													<li id="osmia-bicornis-bicornis" class="organism">
														Osmia bicornis bicornis
													</li>
													<li id="osmia-lignaria" class="organism">
														Osmia lignaria
													</li>
												</ul>
											</li>
											<li id="formicoidea" class="category">
												Formicoidea <span class="other-categories">(also Formicidae)</span>
												<ul id="formicoidea-children">
													<li id="myrmicinae" class="category">
														Myrmicinae
														<ul id="myrmicinae-children">
															<li id="acromyrmex-echinatior" class="organism">
																Acromyrmex echinatior
															</li>
															<li id="atta-cephalotes" class="organism">
																Atta cephalotes
															</li>
															<li id="atta-colombica" class="organism">
																Atta colombica
															</li>
															<li id="cardiocondyla-obscurior" class="organism">
																Cardiocondyla obscurior
															</li>
															<li id="cyphomyrmex-costatus" class="organism">
																Cyphomyrmex costatus
															</li>
															<li id="pogonomyrmex-barbatus" class="organism">
																Pogonomyrmex barbatus
															</li>
															<li id="solenopsis-invicta" class="organism">
																Solenopsis invicta
															</li>
															<li id="temnothorax-curvispinosus" class="organism">
																Temnothorax curvispinosus
															</li>
															<li id="trachymyrmex-cornetzi" class="organism">
																Trachymyrmex cornetzi
															</li>
															<li id="trachymyrmex-septentrionalis" class="organism">
																Trachymyrmex septentrionalis
															</li>
															<li id="trachymyrmex-zeteki" class="organism">
																Trachymyrmex zeteki
															</li>
															<li id="vollenhovia-emeryi" class="organism">
																Vollenhovia emeryi
															</li>
															<li id="wasmannia-auropunctata" class="organism">
																Wasmannia auropunctata
															</li>
														</ul>
													</li>
													<li id="camponotus-floridanus" class="organism">
														Camponotus floridanus
													</li>
													<li id="dinoponera-quadriceps" class="organism">
														Dinoponera quadriceps
													</li>
													<li id="formica-exsecta" class="organism">
														Formica exsecta
													</li>
													<li id="harpegnathos-saltator" class="organism">
														Harpegnathos saltator
													</li>
													<li id="linepithema-humile" class="organism">
														Linepithema humile
													</li>
													<li id="nylanderia-fulva" class="organism">
														Nylanderia fulva
													</li>
													<li id="ooceraea-biroi" class="organism">
														Ooceraea biroi
													</li>
													<li id="odontomachus-brunneus" class="organism">
														Odontomachus brunneus
													</li>
													<li id="pseudomyrmex-gracilis" class="organism">
														Pseudomyrmex gracilis
													</li>
												</ul>
											</li>
											<li id="vespoidea" class="category">
												Vespoidea <span class="other-categories">(also Vespidae)</span>
												<ul id="vespoidea-children">
													<li id="vespinae" class="category">
														Vespinae
														<ul id="vespinae-children">
															<li id="dolichovespula-media" class="organism">
																Dolichovespula media
															</li>
															<li id="dolichovespula-saxonica" class="organism">
																Dolichovespula saxonica
															</li>
															<li id="vespa-crabro" class="organism">
																Vespa crabro
															</li>
															<li id="vespa-mandarinia" class="organism">
																Vespa mandarinia
															</li>
															<li id="vespa-velutina" class="organism">
																Vespa velutina
															</li>
															<li id="vespula-germanica" class="organism">
																Vespula germanica
															</li>
															<li id="vespula-pensylvanica" class="organism">
																Vespula pensylvanica
															</li>
															<li id="vespula-vulgaris" class="organism">
																Vespula vulgaris
															</li>
														</ul>
													</li>
													<li id="ancistrocerus-nigricornis" class="organism">
														Ancistrocerus nigricornis
													</li>
													<li id="polistes-canadensis" class="organism">
														Polistes canadensis
													</li>
													<li id="polistes-dominula" class="organism">
														Polistes dominula
													</li>
													<li id="polistes-fuscatus" class="organism">
														Polistes fuscatus
													</li>
												</ul>
											</li>
											<li id="anoplius-nigerrimus" class="organism">
												Anoplius nigerrimus
											</li>
										</ul>
									</li>
									<li id="parasitoida" class="category">
										Parasitoida
										<ul id="parasitoida-children">
											<li id="chalcidoidea" class="category">
												Chalcidoidea
												<ul id="chalcidoidea-children">
													<li id="ceratosolen-solmsi-marchali" class="organism">
														Ceratosolen solmsi marchali
													</li>
													<li id="copidosoma-floridanum" class="organism">
														Copidosoma floridanum
													</li>
													<li id="nasonia-vitripennis" class="organism">
														Nasonia vitripennis
													</li>
													<li id="trichogramma-pretiosum" class="organism">
														Trichogramma pretiosum
													</li>
												</ul>
											</li>
											<li id="ichneumonoidea" class="category">
												Ichneumonoidea
												<ul id="ichneumonoidea-children">
													<li id="aphidius-gifuensis" class="organism">
														Aphidius gifuensis
													</li>
													<li id="chelonus-insularis" class="organism">
														Chelonus insularis
													</li>
													<li id="cotesia-glomerata" class="organism">
														Cotesia glomerata
													</li>
													<li id="microplitis-demolitor" class="organism">
														Microplitis demolitor
													</li>
													<li id="diachasma-alloeum" class="organism">
														Diachasma alloeum
													</li>
													<li id="fopius-arisanus" class="organism">
														Fopius arisanus
													</li>
													<li id="venturia-canescens" class="organism">
														Venturia canescens
													</li>
													<li id="ichneumon-xanthorius" class="organism">
														Ichneumon xanthorius
													</li>
												</ul>
											</li>
											<li id="belonocnema-kinseyi" class="organism">
												Belonocnema kinseyi
											</li>
											<li id="leptopilina-heterotoma" class="organism">
												Leptopilina heterotoma
											</li>
										</ul>
									</li>
								</ul>
							</li>
							<li id="tenthredinoidea" class="category">
								Tenthredinoidea
								<ul id="tenthredinoidea-children">
									<li id="diprion-similis" class="organism">
										Diprion similis
									</li>
									<li id="neodiprion-fabricii" class="organism">
										Neodiprion fabricii
									</li>
									<li id="neodiprion-lecontei" class="organism">
										Neodiprion lecontei
									</li>
									<li id="neodiprion-pinetum" class="organism">
										Neodiprion pinetum
									</li>
									<li id="neodiprion-virginianus" class="organism">
										Neodiprion virginianus
									</li>
									<li id="athalia-rosae" class="organism">
										Athalia rosae
									</li>
								</ul>
							</li>
							<li id="cephus-cinctus" class="organism">
								Cephus cinctus
							</li>
							<li id="orussus-abietinus" class="organism">
								Orussus abietinus
							</li>
						</ul>
					</li>
					<li id="diptera" class="category-unbolded">
						Diptera
						<ul id="diptera-children">
							<li id="drosophila-melanogaster" class="organism">
								Drosophila melanogaster
							</li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
	</div>
    </div>
</div>
