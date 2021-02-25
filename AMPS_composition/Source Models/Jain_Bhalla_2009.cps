<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.27 (Build 217) (http://www.copasi.org) at 2021-02-21T12:28:03Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="27" versionDevel="217" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Function for AKT_mod_slash_PIP3_bind_AKT" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_40">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*AKT_mod_slash_AKT*PIP3-kb*AKT_mod_slash_PIP3_AKT)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_266" name="AKT_mod_slash_AKT" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_267" name="AKT_mod_slash_PIP3_AKT" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_268" name="PIP3" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_269" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_270" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for AKT_mod_slash_TSC1_minus_2_dephospho" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_41">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*AKT_mod_slash_TSC1_minus_TSC2_star-kb*TSC1_minus_TSC2)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_281" name="AKT_mod_slash_TSC1_minus_TSC2_star" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_282" name="TSC1_minus_TSC2" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_283" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_284" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="kf" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for TrKB_mod_slash_Autophos_TrKB" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*TrKB_mod_slash_BDNF_TrkB2_clx-kb*TrKB_mod_slash_BDNF_TrkB2_star_clx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="TrKB_mod_slash_BDNF_TrkB2_clx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_292" name="TrKB_mod_slash_BDNF_TrkB2_star_clx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_293" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_294" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="kf" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for TrKB_mod_slash_Dimeriz_TrKB" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*TrKB_mod_slash_BDNF_TrkB_clx*TrKB_mod_slash_TrKB-kb*TrKB_mod_slash_BDNF_TrkB2_clx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_302" name="TrKB_mod_slash_BDNF_TrkB2_clx" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_303" name="TrKB_mod_slash_BDNF_TrkB_clx" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_304" name="TrKB_mod_slash_TrKB" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_305" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_306" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for TrKB_mod_slash_Ligand_binding" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*TrKB_mod_slash_TrKB*BDNF-kb*TrKB_mod_slash_BDNF_TrkB_clx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_314" name="BDNF" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_315" name="TrKB_mod_slash_BDNF_TrkB_clx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_316" name="TrKB_mod_slash_TrKB" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_317" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_318" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for TrKB_mod_slash_PLC_g_star_dephospho" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_45">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*PLC_g_star-kb*PLC_g)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_301" name="PLC_g" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_326" name="PLC_g_star" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_327" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_328" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="kf" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for eIF4F_mRNA_clx" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_46">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*mRNA*eIF4F-kb*eIF4F_minus_mRNA_clx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_336" name="eIF4F" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_337" name="eIF4F_minus_mRNA_clx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_338" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_339" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="kf" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="mRNA" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for TrKB_mod_slash_LR_Internalize" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_47">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*TrKB_mod_slash_BDNF_TrkB2_star_clx-kb*TrKB_mod_slash_Int_BDNF_TrKB2_star_clx^2)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="TrKB_mod_slash_BDNF_TrkB2_star_clx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_348" name="TrKB_mod_slash_Int_BDNF_TrKB2_star_clx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_349" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_350" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="kf" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for TrKB_mod_slash_LR_cycling" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_48">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*TrKB_mod_slash_Int_BDNF_TrKB2_star_clx-kb*TrKB_mod_slash_TrKB)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_357" name="TrKB_mod_slash_Int_BDNF_TrKB2_star_clx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_358" name="TrKB_mod_slash_TrKB" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_359" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_360" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="kf" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for PI3K_mod_slash_Shc_star_dephospho" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_49">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*Shc_star-kb*PI3K_mod_slash_Shc)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_367" name="PI3K_mod_slash_Shc" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_368" name="Shc_star" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_369" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_370" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="kf" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for PI3K_mod_slash_PI3K_act" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_50">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*PI3K_mod_slash_PI3K*PI3K_mod_slash_Shc_star_Grb2_minus_Gab1_clx-kb*TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_386" name="PI3K_mod_slash_PI3K" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_387" name="PI3K_mod_slash_Shc_star_Grb2_minus_Gab1_clx" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_388" name="TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_389" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_390" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_391" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for PI3K_mod_slash_basal_PI3K_act" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_51">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*PI3K_mod_slash_PI3K-kb*PI3K_mod_slash_PI3K_basal)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_381" name="PI3K_mod_slash_PI3K" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_398" name="PI3K_mod_slash_PI3K_basal" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_399" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_400" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_401" name="kf" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for mTOR_model_slash_Rheb_minus_GTP_bind_TORclx" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_52">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*Rheb_minus_GTP*mTOR_model_slash_TOR_minus_clx-kb*TOR_Rheb_minus_GTP_clx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_408" name="Rheb_minus_GTP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_409" name="TOR_Rheb_minus_GTP_clx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_410" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_411" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_412" name="kf" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_413" name="mTOR_model_slash_TOR_minus_clx" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for S6Kinase_slash_S6_dephosph" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_53">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*num_40S-kb*S6Kinase_slash_40S_inact)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_385" name="S6Kinase_slash_40S_inact" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_420" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_421" name="kb" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_422" name="kf" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_423" name="num_40S" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for num_4E_minus_BP_mod_slash_eIF4E_bind_BP2" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_54">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*num_4E_minus_BP_mod_slash_4E_minus_BP*eIF4E-kb*num_4E_minus_BP_mod_slash_eIF4E_minus_BP)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_430" name="eIF4E" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_431" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_432" name="kb" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_433" name="kf" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_434" name="num_4E_minus_BP_mod_slash_4E_minus_BP" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_435" name="num_4E_minus_BP_mod_slash_eIF4E_minus_BP" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for num_4E_minus_BP_mod_slash_eIF4E_minus_BP2_disso" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_55">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*num_4E_minus_BP_mod_slash_eIF4E_4E_minus_BP_t37_46_s65-kb*eIF4E*num_4E_minus_BP_mod_slash_4E_minus_BP_thr37_46_s65)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_442" name="eIF4E" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_443" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_444" name="kb" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_445" name="kf" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_446" name="num_4E_minus_BP_mod_slash_4E_minus_BP_thr37_46_s65" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_447" name="num_4E_minus_BP_mod_slash_eIF4E_4E_minus_BP_t37_46_s65" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for eIF4F_clx" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_56">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*eIF4G_minus_A_clx*eIF4E-kb*eIF4F)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_454" name="eIF4E" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_455" name="eIF4F" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_456" name="eIF4G_minus_A_clx" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_457" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_458" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_459" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for eIF4G_A_clx" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_57">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*eIF4A*eIF4G-kb*eIF4G_minus_A_clx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_466" name="eIF4A" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_467" name="eIF4G" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_468" name="eIF4G_minus_A_clx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_469" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_470" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_471" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for num_43S_complex_slash_Q_binds_R" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_58">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*num_40S*num_43S_complex_slash_Quaternary_clx-kb*num_43S_complex_slash_Q_dot_R)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_478" name="geometry" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_479" name="kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_480" name="kf" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_481" name="num_40S" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_482" name="num_43S_complex_slash_Q_dot_R" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_483" name="num_43S_complex_slash_Quaternary_clx" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for num_43S_complex_slash_QR_binds_M" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_59">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*num_43S_complex_slash_Q_dot_R*eIF4F_minus_mRNA_clx-kb*num_43Scomplex)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_490" name="eIF4F_minus_mRNA_clx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_491" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_492" name="kb" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_493" name="kf" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_494" name="num_43S_complex_slash_Q_dot_R" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_495" name="num_43Scomplex" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for num_43S_complex_slash_R_binds_M" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_60">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*eIF4F_minus_mRNA_clx*num_40S-kb*num_43S_complex_slash_RM)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_502" name="eIF4F_minus_mRNA_clx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_503" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_504" name="kb" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_505" name="kf" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_506" name="num_40S" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_507" name="num_43S_complex_slash_RM" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for num_43S_complex_slash_RM_binds_Q" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_61">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*num_43S_complex_slash_RM*num_43S_complex_slash_Quaternary_clx-kb*num_43Scomplex)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_514" name="geometry" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_515" name="kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_516" name="kf" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_517" name="num_43S_complex_slash_Quaternary_clx" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_518" name="num_43S_complex_slash_RM" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_519" name="num_43Scomplex" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for CaM_slash_CaM_minus_Ca3_minus_bind_minus_Ca" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_62">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*CaM_slash_CaM_minus_Ca3*Ca-kb*CaM_minus_Ca4)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_526" name="Ca" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_527" name="CaM_minus_Ca4" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_528" name="CaM_slash_CaM_minus_Ca3" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_529" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_530" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_531" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for CaM_slash_CaM_minus_bind_minus_Ca" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_63">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*CaM_slash_CaM*Ca-kb*CaM_slash_CaM_minus_Ca)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_538" name="Ca" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_539" name="CaM_slash_CaM" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_540" name="CaM_slash_CaM_minus_Ca" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_541" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_542" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_543" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for CaM_slash_CaM_minus_Ca2_minus_bind_minus_Ca" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_64">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*CaM_slash_CaM_minus_Ca2*Ca-kb*CaM_slash_CaM_minus_Ca3)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_550" name="Ca" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_551" name="CaM_slash_CaM_minus_Ca2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_552" name="CaM_slash_CaM_minus_Ca3" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_553" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_554" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_555" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for CaM_slash_CaM_minus_Ca_minus_bind_minus_Ca" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_65">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*CaM_slash_CaM_minus_Ca*Ca-kb*CaM_slash_CaM_minus_Ca2)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_562" name="Ca" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_563" name="CaM_slash_CaM_minus_Ca" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_564" name="CaM_slash_CaM_minus_Ca2" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_565" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_566" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_567" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for dephosp_CaMKIII" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_66">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*CaMKIII_star-kb*CaMKIII)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_383" name="CaMKIII" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_574" name="CaMKIII_star" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_575" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_576" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_577" name="kf" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for elongation" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_67">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*eEF2*num_80S_ribos_clx-kb*Translation_clx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_584" name="Translation_clx" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_585" name="eEF2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_586" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_587" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_588" name="kf" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_589" name="num_80S_ribos_clx" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for activation" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_68">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*num_60S_R*num_43Scomplex-kb*num_80S_ribos_clx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_596" name="geometry" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_597" name="kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_598" name="kf" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_599" name="num_43Scomplex" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_600" name="num_60S_R" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_601" name="num_80S_ribos_clx" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for Ras_minus_act_minus_craf" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_69">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*MAPK_slash_craf_minus_1_star*Ras_slash_GTP_minus_Ras-kb*MAPK_slash_Raf_star_minus_GTP_minus_Ras)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_608" name="MAPK_slash_Raf_star_minus_GTP_minus_Ras" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_609" name="MAPK_slash_craf_minus_1_star" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_610" name="Ras_slash_GTP_minus_Ras" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_611" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_612" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_613" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for Ras_slash_dephosph_minus_GEF" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_70">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*Ras_slash_GEF_star-kb*Ras_slash_inact_minus_GEF)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_583" name="Ras_slash_GEF_star" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_620" name="Ras_slash_inact_minus_GEF" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_621" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_622" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_623" name="kf" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for Ras_slash_Ras_minus_intrinsic_minus_GTPase" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_71">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*Ras_slash_GTP_minus_Ras-kb*Ras_slash_GDP_minus_Ras)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_629" name="Ras_slash_GDP_minus_Ras" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_630" name="Ras_slash_GTP_minus_Ras" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_631" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_632" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_633" name="kf" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Function for Ras_slash_dephosph_minus_GAP" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_72">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*Ras_slash_GAP_star-kb*Ras_slash_GAP)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_639" name="Ras_slash_GAP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_640" name="Ras_slash_GAP_star" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_641" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_642" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_643" name="kf" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function for Ras_slash_CaM_minus_bind_minus_GEF" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_73">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*Ras_slash_inact_minus_GEF*CaM_minus_Ca4-kb*Ras_slash_CaM_minus_GEF)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_650" name="CaM_minus_Ca4" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_651" name="Ras_slash_CaM_minus_GEF" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_652" name="Ras_slash_inact_minus_GEF" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_653" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_654" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_655" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Function for Sos_slash_Shc_bind_Sos_dot_Grb2" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_74">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*Sos_slash_Sos_dot_Grb2*Shc_star-kb*Shc_star_dot_Sos_dot_Grb2)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_662" name="Shc_star" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_663" name="Shc_star_dot_Sos_dot_Grb2" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_664" name="Sos_slash_Sos_dot_Grb2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_665" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_666" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_667" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Function for Sos_slash_Grb2_bind_Sos_star" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_75">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*Sos_slash_Sos_star*Grb2-kb*Sos_slash_Sos_star_dot_Grb2)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_674" name="Grb2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_675" name="Sos_slash_Sos_star" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_676" name="Sos_slash_Sos_star_dot_Grb2" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_677" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_678" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_679" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="Function for Sos_slash_dephosph_Sos" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_76">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*Sos_slash_Sos_star-kb*Sos_slash_Sos)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_380" name="Sos_slash_Sos" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_686" name="Sos_slash_Sos_star" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_687" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_688" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_689" name="kf" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="Function for Sos_slash_Grb2_bind_Sos" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_77">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*Grb2*Sos_slash_Sos-kb*Sos_slash_Sos_dot_Grb2)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_696" name="Grb2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_697" name="Sos_slash_Sos" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_698" name="Sos_slash_Sos_dot_Grb2" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_699" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_700" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_701" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="Function for CaMKIII_bind_CaM_minus_Ca4" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_78">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*CaM_minus_Ca4*CaMKIII-kb*CaMKIII_CaM_minus_Ca4)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_708" name="CaMKIII" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_709" name="CaMKIII_CaM_minus_Ca4" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_710" name="CaM_minus_Ca4" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_711" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_712" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_713" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="Function for pep_elongation" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_79">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*peptide-kb*protein)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_695" name="geometry" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_720" name="kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_721" name="kf" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_722" name="peptide" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_723" name="protein" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="Function for protein_deg" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_80">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*protein-kb*degraded_protein)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_729" name="degraded_protein" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_730" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_731" name="kb" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_732" name="kf" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_733" name="protein" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="Function for PKC_slash_PKC_minus_act_minus_by_minus_Ca" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_81">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*PKC_slash_PKC_minus_cytosolic*Ca-kb*PKC_slash_PKC_minus_Ca)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_744" name="Ca" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_745" name="PKC_slash_PKC_minus_Ca" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_746" name="PKC_slash_PKC_minus_cytosolic" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_747" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_748" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_749" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="Function for PKC_slash_PKC_minus_act_minus_by_minus_DAG" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_82">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*DAG*PKC_slash_PKC_minus_Ca-kb*PKC_slash_PKC_minus_Ca_minus_DAG)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_756" name="DAG" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_757" name="PKC_slash_PKC_minus_Ca" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_758" name="PKC_slash_PKC_minus_Ca_minus_DAG" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_759" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_760" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_761" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="Function for PKC_slash_PKC_minus_Ca_minus_to_minus_memb" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_83">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*PKC_slash_PKC_minus_Ca-kb*PKC_slash_PKC_minus_Ca_minus_memb_star)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_741" name="PKC_slash_PKC_minus_Ca" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_768" name="PKC_slash_PKC_minus_Ca_minus_memb_star" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_769" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_770" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_771" name="kf" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="Function for PKC_slash_PKC_minus_DAG_minus_to_minus_memb" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_84">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*PKC_slash_PKC_minus_Ca_minus_DAG-kb*PKC_slash_PKC_minus_DAG_minus_memb_star)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_777" name="PKC_slash_PKC_minus_Ca_minus_DAG" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_778" name="PKC_slash_PKC_minus_DAG_minus_memb_star" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_779" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_780" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_781" name="kf" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="Function for PKC_slash_PKC_minus_act_minus_by_minus_Ca_minus_AA" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_85">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*PKC_slash_PKC_minus_Ca*Arachidonic_Acid-kb*PKC_slash_PKC_minus_Ca_minus_AA_star)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_788" name="Arachidonic_Acid" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_789" name="PKC_slash_PKC_minus_Ca" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_790" name="PKC_slash_PKC_minus_Ca_minus_AA_star" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_791" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_792" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_793" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="Function for PKC_slash_PKC_minus_act_minus_by_minus_DAG_minus_AA" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_86">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*PKC_slash_PKC_minus_DAG_minus_AA-kb*PKC_slash_PKC_minus_DAG_minus_AA_star)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_739" name="PKC_slash_PKC_minus_DAG_minus_AA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_800" name="PKC_slash_PKC_minus_DAG_minus_AA_star" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_801" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_802" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_803" name="kf" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="Function for PKC_slash_PKC_minus_basal_minus_act" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_87">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*PKC_slash_PKC_minus_cytosolic-kb*PKC_slash_PKC_minus_basal_star)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_809" name="PKC_slash_PKC_minus_basal_star" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_810" name="PKC_slash_PKC_minus_cytosolic" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_811" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_812" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_813" name="kf" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="Function for PKC_slash_PKC_minus_act_minus_by_minus_AA" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_88">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*Arachidonic_Acid*PKC_slash_PKC_minus_cytosolic-kb*PKC_slash_PKC_minus_AA_star)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_820" name="Arachidonic_Acid" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_821" name="PKC_slash_PKC_minus_AA_star" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_822" name="PKC_slash_PKC_minus_cytosolic" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_823" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_824" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_825" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="Function for PKC_slash_PKC_minus_n_minus_DAG" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_89">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*PKC_slash_PKC_minus_cytosolic*DAG-kb*PKC_slash_PKC_minus_DAG)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_832" name="DAG" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_833" name="PKC_slash_PKC_minus_DAG" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_834" name="PKC_slash_PKC_minus_cytosolic" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_835" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_836" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_837" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_90" name="Function for PKC_slash_PKC_minus_n_minus_DAG_minus_AA" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_90">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*PKC_slash_PKC_minus_DAG*Arachidonic_Acid-kb*PKC_slash_PKC_minus_DAG_minus_AA)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_844" name="Arachidonic_Acid" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_845" name="PKC_slash_PKC_minus_DAG" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_846" name="PKC_slash_PKC_minus_DAG_minus_AA" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_847" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_848" name="kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_849" name="kf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_91" name="Function for basal_S6K" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_91">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*S6Kinase_slash_S6K-kb*S6Kinase_slash_S6K_star)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_859" name="S6Kinase_slash_S6K" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_860" name="S6Kinase_slash_S6K_star" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_861" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_862" name="kb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_863" name="kf" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_92" name="Function for rad_pep_elongation" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_92">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*rad_peptide-kb*rad_protein)/geometry_sbo_13_sbc_
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_869" name="geometry_sbo_13_sbc_" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_870" name="kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_871" name="kf" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_872" name="rad_peptide" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_873" name="rad_protein" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_93" name="Function for rad_protein_deg" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_93">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kf*rad_protein-kb*rad_deg_pro)/geometry_sbo_13_sbc_
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_879" name="geometry_sbo_13_sbc_" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_880" name="kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_881" name="kf" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_882" name="rad_deg_pro" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_883" name="rad_protein" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_94" name="Function for PP2A_slash_dephos_clus_S6K_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_94">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*S6Kinase_slash_S6K_star*PP2A-k2*PP2A_slash_dephos_clus_S6K_slash_dephos_clus_S6K_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_904" name="PP2A" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_905" name="PP2A_slash_dephos_clus_S6K_slash_dephos_clus_S6K_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_906" name="S6Kinase_slash_S6K_star" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_907" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_908" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_909" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_95" name="Function for PP2A_slash_dephos_clus_S6K_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_95">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*PP2A_slash_dephos_clus_S6K_slash_dephos_clus_S6K_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_899" name="PP2A_slash_dephos_clus_S6K_slash_dephos_clus_S6K_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_902" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_900" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_96" name="Function for PP2A_slash_dephos_S6K_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_96">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*S6Kinase_slash_S6K_thr_minus_412*PP2A-k2*PP2A_slash_dephos_S6K_slash_dephos_S6K_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_922" name="PP2A" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_923" name="PP2A_slash_dephos_S6K_slash_dephos_S6K_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_924" name="S6Kinase_slash_S6K_thr_minus_412" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_925" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_926" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_927" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_97" name="Function for PP2A_slash_dephos_S6K_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_97">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*PP2A_slash_dephos_S6K_slash_dephos_S6K_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_903" name="PP2A_slash_dephos_S6K_slash_dephos_S6K_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_920" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_898" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_98" name="Function for PP2A_slash_dephosp_S6K_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_98">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*S6K_thr_minus_252*PP2A-k2*PP2A_slash_dephosp_S6K_slash_dephosp_S6K_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_940" name="PP2A" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_941" name="PP2A_slash_dephosp_S6K_slash_dephosp_S6K_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_942" name="S6K_thr_minus_252" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_943" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_944" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_945" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_99" name="Function for PP2A_slash_dephosp_S6K_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_99">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*PP2A_slash_dephosp_S6K_slash_dephosp_S6K_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_921" name="PP2A_slash_dephosp_S6K_slash_dephosp_S6K_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_938" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_901" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_100" name="Function for PP2A_slash_Dephos_AKTser473_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_100">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*AKT_mod_slash_PIP3_AKT_minus_t308_s473*PP2A-k2*PP2A_slash_Dephos_AKTser473_slash_Dephos_AKTser473_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_958" name="AKT_mod_slash_PIP3_AKT_minus_t308_s473" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_959" name="PP2A" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_960" name="PP2A_slash_Dephos_AKTser473_slash_Dephos_AKTser473_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_961" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_962" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_963" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_101" name="Function for PP2A_slash_Dephos_AKTser473_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_101">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*PP2A_slash_Dephos_AKTser473_slash_Dephos_AKTser473_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_956" name="PP2A_slash_Dephos_AKTser473_slash_Dephos_AKTser473_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_919" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_939" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_102" name="Function for PP2A_slash_Dephosph_AKTthr308_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_102">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*AKT_mod_slash_PIP3_AKT_thr308*PP2A-k2*PP2A_slash_Dephosph_AKTthr308_slash_Dephosph_AKTthr308_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_976" name="AKT_mod_slash_PIP3_AKT_thr308" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_977" name="PP2A" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_978" name="PP2A_slash_Dephosph_AKTthr308_slash_Dephosph_AKTthr308_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_979" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_980" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_981" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_103" name="Function for PP2A_slash_Dephosph_AKTthr308_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_103">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*PP2A_slash_Dephosph_AKTthr308_slash_Dephosph_AKTthr308_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_974" name="PP2A_slash_Dephosph_AKTthr308_slash_Dephosph_AKTthr308_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_937" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_957" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_104" name="Function for PP2A_slash_eEF2thr_minus_56_dephospho_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_104">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*eEFthr_minus_56*PP2A-k2*PP2A_slash_eEF2thr_minus_56_dephospho_slash_eEF2thr_minus_56_dephospho_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_994" name="PP2A" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_995" name="PP2A_slash_eEF2thr_minus_56_dephospho_slash_eEF2thr_minus_56_dephospho_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_996" name="eEFthr_minus_56" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_997" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_998" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_999" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_105" name="Function for PP2A_slash_eEF2thr_minus_56_dephospho_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_105">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*PP2A_slash_eEF2thr_minus_56_dephospho_slash_eEF2thr_minus_56_dephospho_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_975" name="PP2A_slash_eEF2thr_minus_56_dephospho_slash_eEF2thr_minus_56_dephospho_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_992" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_955" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_106" name="Function for PP2A_slash_PP2A_4E_minus_BP_star_star_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_106">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*num_4E_minus_BP_mod_slash_4E_minus_BP_thr37_46_s65*PP2A-k2*PP2A_slash_PP2A_4E_minus_BP_star_star_slash_PP2A_4E_minus_BP_star_star_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1012" name="PP2A" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1013" name="PP2A_slash_PP2A_4E_minus_BP_star_star_slash_PP2A_4E_minus_BP_star_star_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1014" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_1015" name="k1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1016" name="k2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1017" name="num_4E_minus_BP_mod_slash_4E_minus_BP_thr37_46_s65" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_107" name="Function for PP2A_slash_PP2A_4E_minus_BP_star_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_107">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*PP2A_slash_PP2A_4E_minus_BP_star_slash_PP2A_4E_minus_BP_star_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1027" name="PP2A_slash_PP2A_4E_minus_BP_star_slash_PP2A_4E_minus_BP_star_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1028" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1029" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_108" name="Function for PP2A_slash_PP2A_4E_minus_BP_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_108">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*num_4E_minus_BP_mod_slash_eIF4E_4E_minus_BP_t37_46_s65*PP2A-k2*PP2A_slash_PP2A_4E_minus_BP_slash_PP2A_4E_minus_BP_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1036" name="PP2A" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1037" name="PP2A_slash_PP2A_4E_minus_BP_slash_PP2A_4E_minus_BP_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1038" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_1039" name="k1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1040" name="k2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1041" name="num_4E_minus_BP_mod_slash_eIF4E_4E_minus_BP_t37_46_s65" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_109" name="Function for PP2A_slash_PP2A_4E_minus_BP_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_109">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*PP2A_slash_PP2A_4E_minus_BP_slash_PP2A_4E_minus_BP_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1035" name="PP2A_slash_PP2A_4E_minus_BP_slash_PP2A_4E_minus_BP_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1034" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1025" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_110" name="Function for PP2A_slash_PP2A_4EBP_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_110">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*num_4E_minus_BP_mod_slash_eIF4E_minus_BP_thr37_46*PP2A-k2*PP2A_slash_PP2A_4EBP_slash_PP2A_4EBP_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1054" name="PP2A" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1055" name="PP2A_slash_PP2A_4EBP_slash_PP2A_4EBP_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1056" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_1057" name="k1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1058" name="k2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1059" name="num_4E_minus_BP_mod_slash_eIF4E_minus_BP_thr37_46" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_111" name="Function for PP2A_slash_PP2A_4EBP_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_111">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*PP2A_slash_PP2A_4EBP_slash_PP2A_4EBP_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1053" name="PP2A_slash_PP2A_4EBP_slash_PP2A_4EBP_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1052" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1033" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_112" name="Function for AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_112">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*AKT_mod_slash_PIP3_AKT*AKT_mod_slash_PIP3_PDK1-k2*AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_slash_phospho_thr308_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1072" name="AKT_mod_slash_PIP3_AKT" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1073" name="AKT_mod_slash_PIP3_PDK1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1074" name="AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_slash_phospho_thr308_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1075" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1076" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1077" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_113" name="Function for AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_113">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_slash_phospho_thr308_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1070" name="AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_slash_phospho_thr308_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1051" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1026" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_114" name="Function for AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_114">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*AKT_mod_slash_PIP3_AKT_thr308*AKT_mod_slash_PIP3_PDK2-k2*AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_slash_phosp_AKTser473_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1090" name="AKT_mod_slash_PIP3_AKT_thr308" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1091" name="AKT_mod_slash_PIP3_PDK2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1092" name="AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_slash_phosp_AKTser473_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1093" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1094" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1095" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_115" name="Function for AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_115">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_slash_phosp_AKTser473_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1088" name="AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_slash_phosp_AKTser473_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1024" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1071" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_116" name="Function for AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_116">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*TSC1_minus_TSC2*AKT_mod_slash_PIP3_AKT_minus_t308_s473-k2*AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_slash_TSC2_phospho_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1108" name="AKT_mod_slash_PIP3_AKT_minus_t308_s473" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1109" name="AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_slash_TSC2_phospho_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1110" name="TSC1_minus_TSC2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1111" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1112" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1113" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_117" name="Function for AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_117">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_slash_TSC2_phospho_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1089" name="AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_slash_TSC2_phospho_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1106" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1069" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_118" name="Function for TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_118">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*PLC_g*TrKB_mod_slash_BDNF_TrkB2_star_clx-k2*TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_slash_PLC_g_phospho_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1126" name="PLC_g" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1127" name="TrKB_mod_slash_BDNF_TrkB2_star_clx" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1128" name="TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_slash_PLC_g_phospho_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1129" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1130" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1131" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_119" name="Function for TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_119">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_slash_PLC_g_phospho_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1124" name="TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_slash_PLC_g_phospho_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1087" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1107" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_120" name="Function for TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_120">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*PI3K_mod_slash_Shc*TrKB_mod_slash_BDNF_TrkB2_star_clx-k2*TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_slash_Shc_phospho_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1144" name="PI3K_mod_slash_Shc" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1145" name="TrKB_mod_slash_BDNF_TrkB2_star_clx" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1146" name="TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_slash_Shc_phospho_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1147" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1148" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1149" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_121" name="Function for TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_121">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_slash_Shc_phospho_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1142" name="TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_slash_Shc_phospho_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1105" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1125" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_122" name="Function for TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_122">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*PI3K_mod_slash_PIP2*TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx-k2*TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_slash_Phospho_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1162" name="PI3K_mod_slash_PIP2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1163" name="TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1164" name="TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_slash_Phospho_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1165" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1166" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1167" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_123" name="Function for TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_123">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_slash_Phospho_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1160" name="TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_slash_Phospho_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1123" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1143" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_124" name="Function for PI3K_mod_slash_PI3K_basal_slash_basal_phosp_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_124">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*PI3K_mod_slash_PIP2*PI3K_mod_slash_PI3K_basal-k2*PI3K_mod_slash_PI3K_basal_slash_basal_phosp_slash_basal_phosp_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1180" name="PI3K_mod_slash_PI3K_basal" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1181" name="PI3K_mod_slash_PI3K_basal_slash_basal_phosp_slash_basal_phosp_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1182" name="PI3K_mod_slash_PIP2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1183" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1184" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1185" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_125" name="Function for PI3K_mod_slash_PI3K_basal_slash_basal_phosp_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_125">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*PI3K_mod_slash_PI3K_basal_slash_basal_phosp_slash_basal_phosp_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1161" name="PI3K_mod_slash_PI3K_basal_slash_basal_phosp_slash_basal_phosp_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1178" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1141" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_126" name="Function for TSC1_minus_TSC2_slash_TSC2phospho_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_126">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*Rheb_minus_GTP*TSC1_minus_TSC2-k2*TSC1_minus_TSC2_slash_TSC2phospho_slash_TSC2phospho_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1204" name="Rheb_minus_GTP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1205" name="TSC1_minus_TSC2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1206" name="TSC1_minus_TSC2_slash_TSC2phospho_slash_TSC2phospho_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1207" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1208" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1209" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_127" name="Function for TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_127">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*S6Kinase_slash_S6K_star*TOR_Rheb_minus_GTP_clx-k2*TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_slash_S6K_phospho_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1218" name="S6Kinase_slash_S6K_star" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1219" name="TOR_Rheb_minus_GTP_clx" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1220" name="TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_slash_S6K_phospho_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1221" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1222" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1223" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_128" name="Function for TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_128">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_slash_S6K_phospho_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1216" name="TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_slash_S6K_phospho_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1200" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1202" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_129" name="Function for TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_129">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*num_4E_minus_BP_mod_slash_eIF4E_minus_BP*TOR_Rheb_minus_GTP_clx-k2*TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_slash_TOR_4E_minus_BP_phospho_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1236" name="TOR_Rheb_minus_GTP_clx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1237" name="TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_slash_TOR_4E_minus_BP_phospho_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1238" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_1239" name="k1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1240" name="k2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1241" name="num_4E_minus_BP_mod_slash_eIF4E_minus_BP" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_130" name="Function for TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_130">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_slash_TOR_4E_minus_BP_phospho_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1235" name="TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_slash_TOR_4E_minus_BP_phospho_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1234" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1203" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_131" name="Function for TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_star_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_131">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*num_4E_minus_BP_mod_slash_4E_minus_BP*TOR_Rheb_minus_GTP_clx-k2*TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_star_slash_TOR_4E_minus_BP_star_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1254" name="TOR_Rheb_minus_GTP_clx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1255" name="TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_star_slash_TOR_4E_minus_BP_star_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1256" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_1257" name="k1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1258" name="k2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1259" name="num_4E_minus_BP_mod_slash_4E_minus_BP" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_132" name="Function for S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_132">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*S6Kinase_slash_40S_inact*S6Kinase_slash_S6K_thr_minus_412-k2*S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_slash_S6_phos_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1268" name="S6Kinase_slash_40S_inact" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1269" name="S6Kinase_slash_S6K_thr_minus_412" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1270" name="S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_slash_S6_phos_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1271" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1272" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1273" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_133" name="Function for S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_133">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_slash_S6_phos_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1266" name="S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_slash_S6_phos_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1252" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1253" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_134" name="Function for S6K_thr_minus_252_slash_camkIII_phospho_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_134">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*CaMKIII*S6K_thr_minus_252-k2*S6K_thr_minus_252_slash_camkIII_phospho_slash_camkIII_phospho_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1286" name="CaMKIII" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1287" name="S6K_thr_minus_252" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1288" name="S6K_thr_minus_252_slash_camkIII_phospho_slash_camkIII_phospho_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1289" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1290" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1291" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_135" name="Function for S6K_thr_minus_252_slash_camkIII_phospho_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_135">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*S6K_thr_minus_252_slash_camkIII_phospho_slash_camkIII_phospho_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1284" name="S6K_thr_minus_252_slash_camkIII_phospho_slash_camkIII_phospho_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1217" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1267" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_136" name="Function for S6K_thr_minus_252_slash_S6_phospho_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_136">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*S6Kinase_slash_40S_inact*S6K_thr_minus_252-k2*S6K_thr_minus_252_slash_S6_phospho_slash_S6_phospho_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1304" name="S6K_thr_minus_252" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1305" name="S6K_thr_minus_252_slash_S6_phospho_slash_S6_phospho_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1306" name="S6Kinase_slash_40S_inact" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1307" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1308" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1309" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_137" name="Function for S6K_thr_minus_252_slash_S6_phospho_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_137">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*S6K_thr_minus_252_slash_S6_phospho_slash_S6_phospho_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1285" name="S6K_thr_minus_252_slash_S6_phospho_slash_S6_phospho_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1302" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1233" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_138" name="Function for CaMKIII_CaM_minus_Ca4_slash_phospho_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_138">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*eEF2*CaMKIII_CaM_minus_Ca4-k2*CaMKIII_CaM_minus_Ca4_slash_phospho_slash_phospho_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1322" name="CaMKIII_CaM_minus_Ca4" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1323" name="CaMKIII_CaM_minus_Ca4_slash_phospho_slash_phospho_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1324" name="eEF2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1325" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1326" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1327" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_139" name="Function for CaMKIII_CaM_minus_Ca4_slash_phospho_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_139">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*CaMKIII_CaM_minus_Ca4_slash_phospho_slash_phospho_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1303" name="CaMKIII_CaM_minus_Ca4_slash_phospho_slash_phospho_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1320" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1283" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_140" name="Function for CaMKIII_basal_slash_eEF2thr56_basal_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_140">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*eEF2*CaMKIII_basal-k2*CaMKIII_basal_slash_eEF2thr56_basal_slash_eEF2thr56_basal_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1340" name="CaMKIII_basal" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1341" name="CaMKIII_basal_slash_eEF2thr56_basal_slash_eEF2thr56_basal_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1342" name="eEF2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1343" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1344" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1345" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_141" name="Function for CaMKIII_basal_slash_eEF2thr56_basal_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_141">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*CaMKIII_basal_slash_eEF2thr56_basal_slash_eEF2thr56_basal_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1321" name="CaMKIII_basal_slash_eEF2thr56_basal_slash_eEF2thr56_basal_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1338" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1301" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_142" name="Function for S6K_basal_slash_CaMKIII_basal_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_142">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*CaMKIII*S6K_basal-k2*S6K_basal_slash_CaMKIII_basal_slash_CaMKIII_basal_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1358" name="CaMKIII" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1359" name="S6K_basal" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1360" name="S6K_basal_slash_CaMKIII_basal_slash_CaMKIII_basal_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1361" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1362" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1363" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_143" name="Function for S6K_basal_slash_CaMKIII_basal_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_143">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*S6K_basal_slash_CaMKIII_basal_slash_CaMKIII_basal_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1356" name="S6K_basal_slash_CaMKIII_basal_slash_CaMKIII_basal_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1319" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1339" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_144" name="Function for Translation_clx_slash_pro_syn_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_144">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*AA*Translation_clx-k2*Translation_clx_slash_pro_syn_slash_pro_syn_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1376" name="AA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1377" name="Translation_clx" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1378" name="Translation_clx_slash_pro_syn_slash_pro_syn_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1379" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1380" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1381" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_145" name="Function for Translation_clx_slash_pro_syn_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_145">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*Translation_clx_slash_pro_syn_slash_pro_syn_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1374" name="Translation_clx_slash_pro_syn_slash_pro_syn_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1337" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1357" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_146" name="Function for MAPK_star_slash_cluster_phospho_S6K_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_146">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*S6Kinase_slash_S6K*MAPK_star-k2*MAPK_star_slash_cluster_phospho_S6K_slash_cluster_phospho_S6K_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1400" name="MAPK_star" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1401" name="MAPK_star_slash_cluster_phospho_S6K_slash_cluster_phospho_S6K_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1402" name="S6Kinase_slash_S6K" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1403" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1404" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1405" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_147" name="Function for MAPK_star_slash_cluster_phospho_S6K_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_147">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*MAPK_star_slash_cluster_phospho_S6K_slash_cluster_phospho_S6K_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1395" name="MAPK_star_slash_cluster_phospho_S6K_slash_cluster_phospho_S6K_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1398" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1396" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_148" name="Function for MAPK_star_slash_MAPK_star_minus_feedback_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_148">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*MAPK_slash_craf_minus_1_star*MAPK_star-k2*MAPK_star_slash_MAPK_star_minus_feedback_slash_MAPK_star_minus_feedback_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1418" name="MAPK_slash_craf_minus_1_star" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1419" name="MAPK_star" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1420" name="MAPK_star_slash_MAPK_star_minus_feedback_slash_MAPK_star_minus_feedback_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1421" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1422" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1423" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_149" name="Function for MAPK_star_slash_MAPK_star_minus_feedback_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_149">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*MAPK_star_slash_MAPK_star_minus_feedback_slash_MAPK_star_minus_feedback_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1416" name="MAPK_star_slash_MAPK_star_minus_feedback_slash_MAPK_star_minus_feedback_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1394" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1399" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_150" name="Function for MAPK_star_slash_phosph_Sos_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_150">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*Sos_slash_Sos*MAPK_star-k2*MAPK_star_slash_phosph_Sos_slash_phosph_Sos_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1436" name="MAPK_star" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1437" name="MAPK_star_slash_phosph_Sos_slash_phosph_Sos_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1438" name="Sos_slash_Sos" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1439" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1440" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1441" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_151" name="Function for MAPK_star_slash_phosph_Sos_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_151">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*MAPK_star_slash_phosph_Sos_slash_phosph_Sos_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1417" name="MAPK_star_slash_phosph_Sos_slash_phosph_Sos_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1434" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1397" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_152" name="Function for MAPK_star_slash_MAPK_4E_minus_BP_star_star_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_152">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*MAPK_star_slash_MAPK_4E_minus_BP_star_star_slash_MAPK_4E_minus_BP_star_star_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1455" name="MAPK_star_slash_MAPK_4E_minus_BP_star_star_slash_MAPK_4E_minus_BP_star_star_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1456" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1457" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_153" name="Function for MAPK_star_slash_MAPK_4E_minus_BP_phospho_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_153">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*num_4E_minus_BP_mod_slash_eIF4E_minus_BP_thr37_46*MAPK_star-k2*MAPK_star_slash_MAPK_4E_minus_BP_phospho_slash_MAPK_4E_minus_BP_phospho_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1464" name="MAPK_star" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1465" name="MAPK_star_slash_MAPK_4E_minus_BP_phospho_slash_MAPK_4E_minus_BP_phospho_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1466" name="geometry" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_1467" name="k1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1468" name="k2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1469" name="num_4E_minus_BP_mod_slash_eIF4E_minus_BP_thr37_46" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_154" name="Function for MAPK_star_slash_MAPK_4E_minus_BP_phospho_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_154">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*MAPK_star_slash_MAPK_4E_minus_BP_phospho_slash_MAPK_4E_minus_BP_phospho_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1463" name="MAPK_star_slash_MAPK_4E_minus_BP_phospho_slash_MAPK_4E_minus_BP_phospho_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1462" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1453" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_155" name="Function for PKC_minus_active_slash_PKC_minus_act_minus_raf_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_155">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*MAPK_slash_craf_minus_1*PKC_minus_active-k2*PKC_minus_active_slash_PKC_minus_act_minus_raf_slash_PKC_minus_act_minus_raf_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1482" name="MAPK_slash_craf_minus_1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1483" name="PKC_minus_active" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1484" name="PKC_minus_active_slash_PKC_minus_act_minus_raf_slash_PKC_minus_act_minus_raf_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1485" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1486" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1487" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_156" name="Function for PKC_minus_active_slash_PKC_minus_act_minus_raf_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_156">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*PKC_minus_active_slash_PKC_minus_act_minus_raf_slash_PKC_minus_act_minus_raf_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1480" name="PKC_minus_active_slash_PKC_minus_act_minus_raf_slash_PKC_minus_act_minus_raf_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1461" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1452" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_157" name="Function for PKC_minus_active_slash_PKC_minus_inact_minus_GAP_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_157">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*Ras_slash_GAP*PKC_minus_active-k2*PKC_minus_active_slash_PKC_minus_inact_minus_GAP_slash_PKC_minus_inact_minus_GAP_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1500" name="PKC_minus_active" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1501" name="PKC_minus_active_slash_PKC_minus_inact_minus_GAP_slash_PKC_minus_inact_minus_GAP_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1502" name="Ras_slash_GAP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1503" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1504" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1505" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_158" name="Function for PKC_minus_active_slash_PKC_minus_inact_minus_GAP_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_158">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*PKC_minus_active_slash_PKC_minus_inact_minus_GAP_slash_PKC_minus_inact_minus_GAP_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1481" name="PKC_minus_active_slash_PKC_minus_inact_minus_GAP_slash_PKC_minus_inact_minus_GAP_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1498" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1454" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_159" name="Function for PKC_minus_active_slash_PKC_minus_act_minus_GEF_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_159">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*Ras_slash_inact_minus_GEF*PKC_minus_active-k2*PKC_minus_active_slash_PKC_minus_act_minus_GEF_slash_PKC_minus_act_minus_GEF_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1518" name="PKC_minus_active" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1519" name="PKC_minus_active_slash_PKC_minus_act_minus_GEF_slash_PKC_minus_act_minus_GEF_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1520" name="Ras_slash_inact_minus_GEF" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1521" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1522" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1523" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_160" name="Function for PKC_minus_active_slash_PKC_minus_act_minus_GEF_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_160">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*PKC_minus_active_slash_PKC_minus_act_minus_GEF_slash_PKC_minus_act_minus_GEF_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1499" name="PKC_minus_active_slash_PKC_minus_act_minus_GEF_slash_PKC_minus_act_minus_GEF_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1516" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1479" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_161" name="Function for MAPK_slash_MAPKK_star_slash_MAPKKtyr_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_161">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*MAPK_slash_MAPK*MAPK_slash_MAPKK_star-k2*MAPK_slash_MAPKK_star_slash_MAPKKtyr_slash_MAPKKtyr_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1536" name="MAPK_slash_MAPK" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1537" name="MAPK_slash_MAPKK_star" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1538" name="MAPK_slash_MAPKK_star_slash_MAPKKtyr_slash_MAPKKtyr_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1539" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1540" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1541" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_162" name="Function for MAPK_slash_MAPKK_star_slash_MAPKKtyr_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_162">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*MAPK_slash_MAPKK_star_slash_MAPKKtyr_slash_MAPKKtyr_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1534" name="MAPK_slash_MAPKK_star_slash_MAPKKtyr_slash_MAPKKtyr_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1497" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1517" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_163" name="Function for MAPK_slash_MAPKK_star_slash_MAPKKthr_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_163">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*MAPK_slash_MAPK_minus_tyr*MAPK_slash_MAPKK_star-k2*MAPK_slash_MAPKK_star_slash_MAPKKthr_slash_MAPKKthr_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1554" name="MAPK_slash_MAPKK_star" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1555" name="MAPK_slash_MAPKK_star_slash_MAPKKthr_slash_MAPKKthr_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1556" name="MAPK_slash_MAPK_minus_tyr" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1557" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1558" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1559" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_164" name="Function for MAPK_slash_MAPKK_star_slash_MAPKKthr_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_164">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*MAPK_slash_MAPKK_star_slash_MAPKKthr_slash_MAPKKthr_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1535" name="MAPK_slash_MAPKK_star_slash_MAPKKthr_slash_MAPKKthr_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1552" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1515" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_165" name="Function for MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_165">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*MAPK_slash_MAPKK*MAPK_slash_Raf_star_minus_GTP_minus_Ras-k2*MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_slash_Raf_star_minus_GTP_minus_Ras_dot_1_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1572" name="MAPK_slash_MAPKK" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1573" name="MAPK_slash_Raf_star_minus_GTP_minus_Ras" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1574" name="MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_slash_Raf_star_minus_GTP_minus_Ras_dot_1_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1575" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1576" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1577" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_166" name="Function for MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_166">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_slash_Raf_star_minus_GTP_minus_Ras_dot_1_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1570" name="MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_slash_Raf_star_minus_GTP_minus_Ras_dot_1_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1533" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1553" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_167" name="Function for MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_167">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*MAPK_slash_MAPKK_minus_ser*MAPK_slash_Raf_star_minus_GTP_minus_Ras-k2*MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_slash_Raf_star_minus_GTP_minus_Ras_dot_2_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1590" name="MAPK_slash_MAPKK_minus_ser" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1591" name="MAPK_slash_Raf_star_minus_GTP_minus_Ras" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1592" name="MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_slash_Raf_star_minus_GTP_minus_Ras_dot_2_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1593" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1594" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1595" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_168" name="Function for MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_168">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_slash_Raf_star_minus_GTP_minus_Ras_dot_2_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1588" name="MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_slash_Raf_star_minus_GTP_minus_Ras_dot_2_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1551" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1571" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_169" name="Function for MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_169">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*MAPK_slash_MAPK_minus_tyr*MKP_minus_1-k2*MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_slash_MKP1_minus_tyr_minus_deph_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1608" name="MAPK_slash_MAPK_minus_tyr" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1609" name="MKP_minus_1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1610" name="MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_slash_MKP1_minus_tyr_minus_deph_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1611" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1612" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1613" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_170" name="Function for MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_170">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_slash_MKP1_minus_tyr_minus_deph_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1606" name="MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_slash_MKP1_minus_tyr_minus_deph_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1569" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1589" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_171" name="Function for MKP_minus_1_slash_MKP1_minus_thr_minus_deph_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_171">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*MAPK_star*MKP_minus_1-k2*MKP_minus_1_slash_MKP1_minus_thr_minus_deph_slash_MKP1_minus_thr_minus_deph_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1626" name="MAPK_star" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1627" name="MKP_minus_1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1628" name="MKP_minus_1_slash_MKP1_minus_thr_minus_deph_slash_MKP1_minus_thr_minus_deph_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1629" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1630" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1631" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_172" name="Function for MKP_minus_1_slash_MKP1_minus_thr_minus_deph_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_172">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*MKP_minus_1_slash_MKP1_minus_thr_minus_deph_slash_MKP1_minus_thr_minus_deph_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1624" name="MKP_minus_1_slash_MKP1_minus_thr_minus_deph_slash_MKP1_minus_thr_minus_deph_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1587" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1607" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_173" name="Function for PPhosphatase2A_slash_craf_minus_deph_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_173">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*MAPK_slash_craf_minus_1_star*PPhosphatase2A-k2*PPhosphatase2A_slash_craf_minus_deph_slash_craf_minus_deph_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1644" name="MAPK_slash_craf_minus_1_star" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1645" name="PPhosphatase2A" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1646" name="PPhosphatase2A_slash_craf_minus_deph_slash_craf_minus_deph_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1647" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1648" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1649" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_174" name="Function for PPhosphatase2A_slash_craf_minus_deph_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_174">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*PPhosphatase2A_slash_craf_minus_deph_slash_craf_minus_deph_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1642" name="PPhosphatase2A_slash_craf_minus_deph_slash_craf_minus_deph_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1605" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1625" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_175" name="Function for PPhosphatase2A_slash_MAPKK_minus_deph_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_175">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*MAPK_slash_MAPKK_star*PPhosphatase2A-k2*PPhosphatase2A_slash_MAPKK_minus_deph_slash_MAPKK_minus_deph_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1662" name="MAPK_slash_MAPKK_star" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1663" name="PPhosphatase2A" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1664" name="PPhosphatase2A_slash_MAPKK_minus_deph_slash_MAPKK_minus_deph_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1665" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1666" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1667" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_176" name="Function for PPhosphatase2A_slash_MAPKK_minus_deph_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_176">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*PPhosphatase2A_slash_MAPKK_minus_deph_slash_MAPKK_minus_deph_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1660" name="PPhosphatase2A_slash_MAPKK_minus_deph_slash_MAPKK_minus_deph_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1623" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1643" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_177" name="Function for PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_177">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*MAPK_slash_MAPKK_minus_ser*PPhosphatase2A-k2*PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_slash_MAPKK_minus_deph_minus_ser_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1680" name="MAPK_slash_MAPKK_minus_ser" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1681" name="PPhosphatase2A" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1682" name="PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_slash_MAPKK_minus_deph_minus_ser_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1683" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1684" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1685" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_178" name="Function for PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_178">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_slash_MAPKK_minus_deph_minus_ser_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1678" name="PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_slash_MAPKK_minus_deph_minus_ser_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1641" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1661" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_179" name="Function for PPhosphatase2A_slash_craf_star_star_minus_deph_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_179">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*MAPK_slash_craf_minus_1_star_star*PPhosphatase2A-k2*PPhosphatase2A_slash_craf_star_star_minus_deph_slash_craf_star_star_minus_deph_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1698" name="MAPK_slash_craf_minus_1_star_star" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1699" name="PPhosphatase2A" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1700" name="PPhosphatase2A_slash_craf_star_star_minus_deph_slash_craf_star_star_minus_deph_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1701" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1702" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1703" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_180" name="Function for PPhosphatase2A_slash_craf_star_star_minus_deph_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_180">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*PPhosphatase2A_slash_craf_star_star_minus_deph_slash_craf_star_star_minus_deph_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1696" name="PPhosphatase2A_slash_craf_star_star_minus_deph_slash_craf_star_star_minus_deph_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1659" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1679" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_181" name="Function for Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_181">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*Ras_slash_GDP_minus_Ras*Ras_slash_inact_minus_GEF-k2*Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_slash_basal_GEF_activity_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1716" name="Ras_slash_GDP_minus_Ras" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1717" name="Ras_slash_inact_minus_GEF" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1718" name="Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_slash_basal_GEF_activity_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1719" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1720" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1721" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_182" name="Function for Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_182">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_slash_basal_GEF_activity_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1714" name="Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_slash_basal_GEF_activity_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1677" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1697" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_183" name="Function for Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_183">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*Ras_slash_GDP_minus_Ras*Ras_slash_GEF_star-k2*Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_slash_GEF_star_minus_act_minus_ras_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1734" name="Ras_slash_GDP_minus_Ras" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1735" name="Ras_slash_GEF_star" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1736" name="Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_slash_GEF_star_minus_act_minus_ras_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1737" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1738" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1739" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_184" name="Function for Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_184">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_slash_GEF_star_minus_act_minus_ras_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1732" name="Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_slash_GEF_star_minus_act_minus_ras_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1695" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1715" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_185" name="Function for Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_185">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*Ras_slash_GTP_minus_Ras*Ras_slash_GAP-k2*Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_slash_GAP_minus_inact_minus_ras_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1752" name="Ras_slash_GAP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1753" name="Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_slash_GAP_minus_inact_minus_ras_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1754" name="Ras_slash_GTP_minus_Ras" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1755" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1756" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1757" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_186" name="Function for Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_186">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_slash_GAP_minus_inact_minus_ras_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1733" name="Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_slash_GAP_minus_inact_minus_ras_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1750" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1713" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_187" name="Function for Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_187">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*Ras_slash_GDP_minus_Ras*Ras_slash_CaM_minus_GEF-k2*Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_slash_CaM_minus_GEF_minus_act_minus_ras_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1770" name="Ras_slash_CaM_minus_GEF" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1771" name="Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_slash_CaM_minus_GEF_minus_act_minus_ras_cplx" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1772" name="Ras_slash_GDP_minus_Ras" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1773" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1774" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1775" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_188" name="Function for Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_188">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_slash_CaM_minus_GEF_minus_act_minus_ras_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1751" name="Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_slash_CaM_minus_GEF_minus_act_minus_ras_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1768" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1731" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_189" name="Function for Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_189">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*Ras_slash_GDP_minus_Ras*Shc_star_dot_Sos_dot_Grb2-k2*Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_slash_Sos_dot_Ras_GEF_cplx)/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1788" name="Ras_slash_GDP_minus_Ras" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1789" name="Shc_star_dot_Sos_dot_Grb2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1790" name="Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_slash_Sos_dot_Ras_GEF_cplx" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_1791" name="geometry" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1792" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1793" name="k2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_190" name="Function for Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_190">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_slash_Sos_dot_Ras_GEF_cplx/geometry
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1786" name="Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_slash_Sos_dot_Ras_GEF_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1749" name="geometry" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1769" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_191" name="Function for PTEN_slash_PIP3_dephosp_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_191">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*PTEN_slash_PIP3_dephosp_slash_PIP3_dephosp_cplx/geometry_sbo_15_sbc_
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1825" name="PTEN_slash_PIP3_dephosp_slash_PIP3_dephosp_cplx" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1826" name="geometry_sbo_15_sbc_" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1827" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="mTOR_pathway" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="µmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
	    This model consists of various sub-modules. They are as follows: 1) BDNF receptor signaling 2) AKT signaling 3) 4E-BP model 4) S6 Kinase model 5) CaMKIII model 6) Protein synthesis model 7) CaM 8) PKC 9) MAPK model.
          </body>

    </Comment>
    <ListOfUnsupportedAnnotations>
      <UnsupportedAnnotation name="http://www.doqcs.ncbs.res.in">
<doqcs:timestamp xmlns:doqcs="http://www.doqcs.ncbs.res.in">Fri Oct 10 21:04:28 2008</doqcs:timestamp><doqcs:accesstype xmlns:doqcs="http://www.doqcs.ncbs.res.in">pathway</doqcs:accesstype><doqcs:transcriber xmlns:doqcs="http://www.doqcs.ncbs.res.in">Pragati Jain and Upinder S. Bhalla, NCBS</doqcs:transcriber><doqcs:developer xmlns:doqcs="http://www.doqcs.ncbs.res.in">Pragati Jain and Upinder S. Bhalla, NCBS</doqcs:developer><doqcs:species xmlns:doqcs="http://www.doqcs.ncbs.res.in">General Mammalian</doqcs:species><doqcs:tissue xmlns:doqcs="http://www.doqcs.ncbs.res.in">Neuronal</doqcs:tissue><doqcs:cellcompartment xmlns:doqcs="http://www.doqcs.ncbs.res.in">Dendritic</doqcs:cellcompartment><doqcs:methodology xmlns:doqcs="http://www.doqcs.ncbs.res.in">Quantitative match to experiments</doqcs:methodology><doqcs:model_implementation xmlns:doqcs="http://www.doqcs.ncbs.res.in">Approximate implementation</doqcs:model_implementation><doqcs:model_validation xmlns:doqcs="http://www.doqcs.ncbs.res.in">Approximates original data </doqcs:model_validation>
      </UnsupportedAnnotation>
    </ListOfUnsupportedAnnotations>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="default_compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="geometry" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_1">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_2" name="geometry_sbo_1_sbc_" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_2">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_3" name="geometry_sbo_2_sbc_" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_3">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_4" name="geometry_sbo_3_sbc_" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_5" name="geometry_sbo_4_sbc_" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_5">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_6" name="geometry_sbo_5_sbc_" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_6">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_7" name="geometry_sbo_6_sbc_" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_7">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_8" name="geometry_sbo_7_sbc_" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_8">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_9" name="geometry_sbo_8_sbc_" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_9">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_10" name="geometry_sbo_9_sbc_" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_10">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_11" name="geometry_sbo_10_sbc_" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_11">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_12" name="geometry_sbo_11_sbc_" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_12">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_13" name="geometry_sbo_12_sbc_" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_13">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_14" name="geometry_sbo_13_sbc_" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_14">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_15" name="geometry_sbo_14_sbc_" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_15">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_16" name="geometry_sbo_15_sbc_" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_16">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_17" name="geometry_sbo_16_sbc_" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_17">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="PLC_g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="PLC_g_star" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_1">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="PIP3" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_2">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="PDK1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_3">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="PDK1_slash_S6K_phospho_slash_S6K_phospho_cplx" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="PP2A" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_5">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="PP2A_slash_dephos_clus_S6K_slash_dephos_clus_S6K_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_6">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="PP2A_slash_dephos_S6K_slash_dephos_S6K_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_7">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="PP2A_slash_dephosp_S6K_slash_dephosp_S6K_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_8">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="PP2A_slash_Dephos_AKTser473_slash_Dephos_AKTser473_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_9">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="PP2A_slash_Dephosph_AKTthr308_slash_Dephosph_AKTthr308_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_10">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="PP2A_slash_eEF2thr_minus_56_dephospho_slash_eEF2thr_minus_56_dephospho_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_11">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="PP2A_slash_PP2A_4E_minus_BP_star_star_slash_PP2A_4E_minus_BP_star_star_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_12">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="PP2A_slash_PP2A_4E_minus_BP_star_slash_PP2A_4E_minus_BP_star_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_13">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="PP2A_slash_PP2A_4E_minus_BP_slash_PP2A_4E_minus_BP_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_14">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="PP2A_slash_PP2A_4EBP_slash_PP2A_4EBP_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_15">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="AKT_mod_slash_PIP3_AKT" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="AKT_mod_slash_PIP3_PDK1" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_17">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_slash_phospho_thr308_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_18">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="AKT_mod_slash_PIP3_PDK2" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_19">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_slash_phosp_AKTser473_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_20">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="AKT_mod_slash_PIP3_AKT_thr308" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="AKT_mod_slash_PIP3_AKT_minus_t308_s473" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_slash_TSC2_phospho_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_23">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="AKT_mod_slash_AKT" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="AKT_mod_slash_TSC1_minus_TSC2_star" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_25">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="TrKB_mod_slash_TrKB" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_26">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="TrKB_mod_slash_BDNF_TrkB2_clx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_27">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="TrKB_mod_slash_BDNF_TrkB_clx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_28">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="TrKB_mod_slash_BDNF_TrkB2_star_clx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_29">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_slash_PLC_g_phospho_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_30">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_slash_Shc_phospho_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_31">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_32">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_slash_Phospho_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_33">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="PI3K_mod_slash_PI3K" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_34">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="PI3K_mod_slash_PI3K_basal" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_35">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="PI3K_mod_slash_PI3K_basal_slash_basal_phosp_slash_basal_phosp_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_36">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="PI3K_mod_slash_Shc" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_37">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="PI3K_mod_slash_Shc_star_Grb2_clx" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_38">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="PI3K_mod_slash_Gab1" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_39">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="PI3K_mod_slash_Shc_star_Grb2_minus_Gab1_clx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_40">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="PLCg_basal" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_41">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="PLCg_basal_slash_PLC_g_phospho_slash_PLC_g_phospho_cplx" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_42">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="TSC1_minus_TSC2" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_43">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="TSC1_minus_TSC2_slash_TSC2phospho_slash_TSC2phospho_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_44">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="eIF4E" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_45">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="Rheb_minus_GTP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_46">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="Rheb_minus_GDP" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_47">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="mTOR_model_slash_TOR_minus_clx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_48">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="TOR_Rheb_minus_GTP_clx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_49">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_slash_S6K_phospho_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_50">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_slash_TOR_4E_minus_BP_phospho_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_51">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_star_slash_TOR_4E_minus_BP_star_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_52">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="S6Kinase_slash_S6K_star" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_53">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="S6Kinase_slash_S6K" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_54">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="S6Kinase_slash_S6K_thr_minus_412" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_55">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_slash_S6_phos_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_56">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="num_4E_minus_BP_mod_slash_4E_minus_BP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_57">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="num_4E_minus_BP_mod_slash_4E_minus_BP_thr37_46_s65" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_58">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="num_4E_minus_BP_mod_slash_eIF4E_minus_BP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_59">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_60" name="num_4E_minus_BP_mod_slash_eIF4E_minus_BP_thr37_46" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_60">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="num_4E_minus_BP_mod_slash_eIF4E_4E_minus_BP_t37_46_s65" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_61">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_62" name="num_40S" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_62">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="eIF4G_minus_A_clx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_63">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_64" name="eIF4A" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_64">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="eIF4G" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_65">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_66" name="eIF4F" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_66">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_67" name="mRNA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_67">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_68" name="PPhosphatase2A_slash_craf_star_star_minus_deph_slash_craf_star_star_minus_deph_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_68">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_69" name="eIF4F_minus_mRNA_clx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_69">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_70" name="num_43S_complex_slash_Q_dot_R" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_70">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_71" name="num_43S_complex_slash_RM" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_71">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_72" name="num_43S_complex_slash_Quaternary_clx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_72">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_73" name="S6K_thr_minus_252" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_73">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_74" name="S6K_thr_minus_252_slash_camkIII_phospho_slash_camkIII_phospho_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_74">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_75" name="S6K_thr_minus_252_slash_S6_phospho_slash_S6_phospho_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_75">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_76" name="CaM_minus_Ca4" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_76">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_77" name="CaMKIII" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_77">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_78" name="CaMKIII_CaM_minus_Ca4" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_78">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_79" name="CaMKIII_CaM_minus_Ca4_slash_phospho_slash_phospho_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_79">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_80" name="eEF2" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_80">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_81" name="eEFthr_minus_56" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_81">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_82" name="CaM_slash_CaM" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_82">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_83" name="CaM_slash_CaM_minus_Ca3" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_83">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_84" name="CaM_slash_CaM_minus_Ca2" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_84">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_85" name="CaM_slash_CaM_minus_Ca" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_85">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_86" name="Ca" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_87" name="CaMKIII_basal" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_87">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_88" name="CaMKIII_basal_slash_eEF2thr56_basal_slash_eEF2thr56_basal_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_88">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_89" name="CaMKIII_star" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_89">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_90" name="S6K_basal" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_90">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_91" name="S6K_basal_slash_CaMKIII_basal_slash_CaMKIII_basal_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_91">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_92" name="Translation_clx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_92">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_93" name="Translation_clx_slash_pro_syn_slash_pro_syn_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_93">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_94" name="Translation_clx_slash_rad_pro_syn_slash_rad_pro_syn_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_94">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_95" name="peptide" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_95">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_96" name="degraded_protein" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_96">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_97" name="protein" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_97">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_98" name="num_80S_ribos_clx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_98">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_99" name="Grb2" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_99">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_100" name="Shc_star" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_100">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_101" name="MAPK_star" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_101">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_102" name="MAPK_star_slash_cluster_phospho_S6K_slash_cluster_phospho_S6K_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_102">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_103" name="MAPK_star_slash_MAPK_star_minus_feedback_slash_MAPK_star_minus_feedback_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_103">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_104" name="MAPK_star_slash_phosph_Sos_slash_phosph_Sos_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_104">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_105" name="MAPK_star_slash_MAPK_4E_minus_BP_star_star_slash_MAPK_4E_minus_BP_star_star_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_105">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_106" name="MAPK_star_slash_MAPK_4E_minus_BP_phospho_slash_MAPK_4E_minus_BP_phospho_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_106">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_107" name="PKC_minus_active_slash_PKC_minus_act_minus_raf_slash_PKC_minus_act_minus_raf_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_107">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_108" name="PKC_minus_active_slash_PKC_minus_inact_minus_GAP_slash_PKC_minus_inact_minus_GAP_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_108">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_109" name="PKC_minus_active_slash_PKC_minus_act_minus_GEF_slash_PKC_minus_act_minus_GEF_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_109">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_110" name="MAPK_slash_craf_minus_1" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_110">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_111" name="MAPK_slash_craf_minus_1_star" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_111">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_112" name="MAPK_slash_MAPKK" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_112">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_113" name="MAPK_slash_MAPK" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_113">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_114" name="MAPK_slash_craf_minus_1_star_star" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_114">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_115" name="MAPK_slash_MAPK_minus_tyr" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_115">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_116" name="MAPK_slash_MAPKK_star" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_116">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_117" name="MAPK_slash_MAPKK_star_slash_MAPKKtyr_slash_MAPKKtyr_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_117">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_118" name="MAPK_slash_MAPKK_star_slash_MAPKKthr_slash_MAPKKthr_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_118">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_119" name="MAPK_slash_MAPKK_minus_ser" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_119">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_120" name="MAPK_slash_Raf_star_minus_GTP_minus_Ras" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_120">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_121" name="MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_slash_Raf_star_minus_GTP_minus_Ras_dot_1_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_121">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_122" name="MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_slash_Raf_star_minus_GTP_minus_Ras_dot_2_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_122">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_123" name="MKP_minus_1" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_123">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_124" name="MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_slash_MKP1_minus_tyr_minus_deph_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_124">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_125" name="MKP_minus_1_slash_MKP1_minus_thr_minus_deph_slash_MKP1_minus_thr_minus_deph_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_125">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_126" name="PPhosphatase2A" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_126">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_127" name="PPhosphatase2A_slash_craf_minus_deph_slash_craf_minus_deph_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_127">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_128" name="PPhosphatase2A_slash_MAPKK_minus_deph_slash_MAPKK_minus_deph_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_128">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_129" name="PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_slash_MAPKK_minus_deph_minus_ser_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_129">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_130" name="Ras_slash_inact_minus_GEF" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_130">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_131" name="Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_slash_basal_GEF_activity_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_131">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_132" name="Ras_slash_GEF_star" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_132">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_133" name="Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_slash_GEF_star_minus_act_minus_ras_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_133">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_134" name="Ras_slash_GTP_minus_Ras" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_134">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_135" name="Ras_slash_GDP_minus_Ras" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_135">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_136" name="Ras_slash_GAP_star" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_136">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_137" name="Ras_slash_GAP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_137">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_138" name="Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_slash_GAP_minus_inact_minus_ras_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_138">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_139" name="Ras_slash_CaM_minus_GEF" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_139">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_140" name="Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_slash_CaM_minus_GEF_minus_act_minus_ras_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_140">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_141" name="Shc_star_dot_Sos_dot_Grb2" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_141">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_142" name="Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_slash_Sos_dot_Ras_GEF_cplx" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_142">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_143" name="Sos_slash_Sos_star_dot_Grb2" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_143">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_144" name="Sos_slash_Sos_dot_Grb2" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_144">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_145" name="Sos_slash_Sos_star" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_145">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_146" name="Sos_slash_Sos" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_146">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_147" name="num_43Scomplex" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_147">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_148" name="PKC_slash_PKC_minus_Ca" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_148">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_149" name="PKC_slash_PKC_minus_DAG_minus_AA_star" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_149">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_150" name="PKC_slash_PKC_minus_Ca_minus_AA_star" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_150">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_151" name="PKC_slash_PKC_minus_Ca_minus_memb_star" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_151">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_152" name="PKC_slash_PKC_minus_DAG_minus_memb_star" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_152">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_153" name="PKC_slash_PKC_minus_basal_star" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_153">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_154" name="PKC_slash_PKC_minus_AA_star" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_154">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_155" name="PKC_slash_PKC_minus_Ca_minus_DAG" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_155">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_156" name="PKC_slash_PKC_minus_DAG" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_156">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_157" name="PKC_slash_PKC_minus_DAG_minus_AA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_157">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_158" name="PKC_slash_PKC_minus_cytosolic" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_158">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_159" name="Basal_Translation" simulationType="reactions" compartment="Compartment_11" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_159">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_160" name="Basal_Translation_slash_basal_syn_slash_basal_syn_cplx" simulationType="reactions" compartment="Compartment_11" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_160">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_161" name="Basal_Translation_slash_rad_basal_syn_slash_rad_basal_syn_cplx" simulationType="reactions" compartment="Compartment_11" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_161">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_162" name="rad_AA" simulationType="reactions" compartment="Compartment_14" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_162">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_163" name="rad_peptide" simulationType="reactions" compartment="Compartment_14" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_163">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_164" name="rad_protein" simulationType="reactions" compartment="Compartment_14" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_164">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_165" name="rad_deg_pro" simulationType="reactions" compartment="Compartment_14" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_165">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_166" name="num_40S_basal" simulationType="reactions" compartment="Compartment_15" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_166">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_167" name="num_40S_basal_slash_basal_slash_basal_cplx" simulationType="reactions" compartment="Compartment_15" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_167">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_168" name="num_4E_minus_BP_t37_46" simulationType="reactions" compartment="Compartment_12" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_168">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_169" name="PTEN" simulationType="reactions" compartment="Compartment_16" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_169">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_170" name="PTEN_slash_PIP3_dephosp_slash_PIP3_dephosp_cplx" simulationType="reactions" compartment="Compartment_16" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_170">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_171" name="Ras_minus_GTP_PI3K" simulationType="reactions" compartment="Compartment_17" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_171">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_172" name="Ras_minus_GTP_PI3K_slash_PIP2_phospho_Ras_minus_GTP_slash_PIP2_phospho_Ras_minus_GTP_cplx" simulationType="reactions" compartment="Compartment_17" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_172">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_173" name="BDNF" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_173">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_174" name="TrKB_mod_slash_Int_BDNF_TrKB2_star_clx" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_174">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_175" name="PI3K_mod_slash_PIP2" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_175">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_176" name="S6Kinase_slash_40S_inact" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_176">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Inactivated form of S6K
          </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_177" name="num_60S_R" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_177">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_178" name="AA" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_178">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_179" name="DAG" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_179">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    The conc of this has been a problem. Schaecter and Benowitz use 50 uM, but Shinomura et al have &lt; 5. So I have altered the DAG-dependent rates in the PKC model to reflect this.
          </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_180" name="Arachidonic_Acid" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_180">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_181" name="PKC_minus_active" simulationType="assignment" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_181">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_DAG_minus_AA_star],Reference=Concentration>+&lt;CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_Ca_minus_memb_star],Reference=Concentration>+&lt;CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_Ca_minus_AA_star],Reference=Concentration>+&lt;CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_DAG_minus_memb_star],Reference=Concentration>+&lt;CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_basal_star],Reference=Concentration>+&lt;CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_AA_star],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="AKT_mod_slash_PIP3_bind_AKT" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5019" name="kf" value="4.49988e-11"/>
          <Constant key="Parameter_5018" name="kb" value="8.8997e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_5018"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_5019"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="AKT_mod_slash_PIP3_bind_PDK1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_1">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5022" name="k1" value="6.99997e-13"/>
          <Constant key="Parameter_5020" name="k2" value="9.8e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5022"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_3"/>
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5020"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="AKT_mod_slash_TSC1_minus_2_dephospho" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_2">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5023" name="kf" value="1e-14"/>
          <Constant key="Parameter_5024" name="kb" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Parameter_5024"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Parameter_5023"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="TrKB_mod_slash_Autophos_TrKB" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_3">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5028" name="kf" value="1.99993e-14"/>
          <Constant key="Parameter_5030" name="kb" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Parameter_5030"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Parameter_5028"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="TrKB_mod_slash_Dimeriz_TrKB" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5031" name="kf" value="9.99887e-13"/>
          <Constant key="Parameter_5025" name="kb" value="1.99993e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Parameter_5025"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Parameter_5031"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="TrKB_mod_slash_Ligand_binding" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_5">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5027" name="kf" value="9.9998e-13"/>
          <Constant key="Parameter_5026" name="kb" value="4.99967e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_173"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Parameter_5026"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Parameter_5027"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="TrKB_mod_slash_PLC_g_star_dephospho" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_6">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5029" name="kf" value="7e-14"/>
          <Constant key="Parameter_5032" name="kb" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Parameter_5032"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Parameter_5029"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="eIF4F_mRNA_clx" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_7">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5033" name="kf" value="1.99997e-13"/>
          <Constant key="Parameter_5067" name="kb" value="7.7e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Parameter_5067"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Parameter_5033"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="TrKB_mod_slash_LR_Internalize" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_8">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_174" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5068" name="kf" value="9.99967e-15"/>
          <Constant key="Parameter_5072" name="kb" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_174"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Parameter_5072"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Parameter_5068"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="TrKB_mod_slash_LR_cycling" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_9">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_174" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5074" name="kf" value="1e-15"/>
          <Constant key="Parameter_5075" name="kb" value="9.99933e-16"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_174"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5075"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Parameter_5074"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="PI3K_mod_slash_Shc_star_dephospho" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_10">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_100" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5069" name="kf" value="2e-13"/>
          <Constant key="Parameter_5071" name="kb" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Parameter_5071"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Parameter_5069"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="PI3K_mod_slash_Grb2_bind_Shc" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_11">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_99" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_100" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5070" name="k1" value="1.00002e-12"/>
          <Constant key="Parameter_5073" name="k2" value="1e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5070"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_99"/>
              <SourceParameter reference="Metabolite_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5073"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="PI3K_mod_slash_bind_Gab1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_12">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5076" name="k1" value="3e-13"/>
          <Constant key="Parameter_5065" name="k2" value="1e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5076"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_39"/>
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5065"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="PI3K_mod_slash_PI3K_act" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_13">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5063" name="kf" value="4.99999e-12"/>
          <Constant key="Parameter_5062" name="kb" value="7.99973e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Parameter_5062"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Parameter_5063"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="PI3K_mod_slash_basal_PI3K_act" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_14">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5066" name="kf" value="6.79977e-16"/>
          <Constant key="Parameter_5064" name="kb" value="4.5e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Parameter_5064"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Parameter_5066"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="mTOR_model_slash_Rheb_minus_GTP_bind_TORclx" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_15">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5037" name="kf" value="6e-12"/>
          <Constant key="Parameter_5035" name="kb" value="3e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Parameter_5035"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Parameter_5037"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="S6Kinase_slash_S6_dephosph" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_16">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_176" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5034" name="kf" value="1e-14"/>
          <Constant key="Parameter_5038" name="kb" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Metabolite_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Parameter_5038"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Parameter_5034"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="num_4E_minus_BP_mod_slash_eIF4E_bind_BP2" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_17">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5036" name="kf" value="4.9999e-11"/>
          <Constant key="Parameter_5052" name="kb" value="1.5e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="Parameter_5052"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="Parameter_5036"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="num_4E_minus_BP_mod_slash_eIF4E_minus_BP2_disso" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_18">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5053" name="kf" value="4e-12"/>
          <Constant key="Parameter_5040" name="kb" value="1e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Parameter_5040"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Parameter_5053"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="eIF4F_clx" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_19">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5057" name="kf" value="2.99996e-11"/>
          <Constant key="Parameter_5043" name="kb" value="9.99983e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="Parameter_5043"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="Parameter_5057"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="eIF4G_A_clx" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_20">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5059" name="kf" value="2.99996e-13"/>
          <Constant key="Parameter_5060" name="kb" value="9.99983e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="Parameter_5060"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="Parameter_5059"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="num_43S_complex_slash_Q_binds_R" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_21">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5054" name="kf" value="4.8e-13"/>
          <Constant key="Parameter_5039" name="kb" value="5e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_479">
              <SourceParameter reference="Parameter_5039"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="Parameter_5054"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_481">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_482">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_483">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="num_43S_complex_slash_QR_binds_M" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_22">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_70" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5047" name="kf" value="4.90002e-13"/>
          <Constant key="Parameter_5056" name="kb" value="4.5e-15"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_490">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_491">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_492">
              <SourceParameter reference="Parameter_5056"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_493">
              <SourceParameter reference="Parameter_5047"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_494">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_495">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="num_43S_complex_slash_R_binds_M" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_23">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5041" name="kf" value="1.27998e-12"/>
          <Constant key="Parameter_5055" name="kb" value="7.19e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_502">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_503">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_504">
              <SourceParameter reference="Parameter_5055"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_505">
              <SourceParameter reference="Parameter_5041"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_506">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_507">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="num_43S_complex_slash_RM_binds_Q" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_24">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5046" name="kf" value="9.7998e-14"/>
          <Constant key="Parameter_5050" name="kb" value="1.69e-15"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_514">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="Parameter_5050"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_516">
              <SourceParameter reference="Parameter_5046"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_517">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_518">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="CaM_slash_CaM_minus_Ca3_minus_bind_minus_Ca" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_25">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Use K3 = 21.5 uM here from Stemmer and Klee table 3. kb/kf =21.5 * 6e5 so kf = 7.75e-7, kb = 10
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5045" name="kf" value="4.65006e-13"/>
          <Constant key="Parameter_5049" name="kb" value="1e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_526">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Parameter_5049"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="Parameter_5045"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="CaM_slash_CaM_minus_bind_minus_Ca" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_26">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Lets use the fast rate consts here. Since the rates are so different, I am not sure whether the order is relevant. These correspond to the TR2C fragment. We use the Martin et al rates here, plus the Drabicowski binding consts. All are scaled by 3X to cell temp. kf = 2e-10 kb = 72 Stemmer &amp; Klee: K1=.9, K2=1.1. Assume 1.0uM for both. kb/kf=3.6e11. If kb=72, kf = 2e-10 (Exactly the same !) 19 May 2006. Splitting the old CaM-TR2-bind-Ca reaction into two steps, each binding 1 Ca. This improves numerical stability and is conceptually better too. Overall rates are the same, so each kf and kb is the square root of the earlier ones. So kf = 1.125e-4, kb = 8.4853
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_82" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5048" name="kf" value="8.4846e-12"/>
          <Constant key="Parameter_5051" name="kb" value="8.4853e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="Metabolite_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Parameter_5051"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Parameter_5048"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="CaM_slash_CaM_minus_Ca2_minus_bind_minus_Ca" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_27">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    K3 = 21.5, K4 = 2.8. Assuming that the K4 step happens first, we get kb/kf = 2.8 uM = 1.68e6 so kf =6e-6 assuming kb = 10
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_84" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5058" name="kf" value="3.60006e-12"/>
          <Constant key="Parameter_5042" name="kb" value="1e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_550">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="Parameter_5042"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="Parameter_5058"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="CaM_slash_CaM_minus_Ca_minus_bind_minus_Ca" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_28">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Lets use the fast rate consts here. Since the rates are so different, I am not sure whether the order is relevant. These correspond to the TR2C fragment. We use the Martin et al rates here, plus the Drabicowski binding consts. All are scaled by 3X to cell temp. kf = 2e-10 kb = 72 Stemmer &amp; Klee: K1=.9, K2=1.1. Assume 1.0uM for both. kb/kf=3.6e11. If kb=72, kf = 2e-10 (Exactly the same !) 19 May 2006. Splitting the old CaM-TR2-bind-Ca reaction into two steps, each binding 1 Ca. This improves numerical stability and is conceptually better too. Overall rates are the same, so each kf and kb is the square root of the earlier ones. So kf = 1.125e-4, kb = 8.4853
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5044" name="kf" value="8.4846e-12"/>
          <Constant key="Parameter_5061" name="kb" value="8.4853e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_564">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_566">
              <SourceParameter reference="Parameter_5061"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_567">
              <SourceParameter reference="Parameter_5044"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="dephosp_CaMKIII" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_29">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5077" name="kf" value="7e-14"/>
          <Constant key="Parameter_5078" name="kb" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_574">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_575">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_576">
              <SourceParameter reference="Parameter_5078"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="Parameter_5077"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="elongation" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_30">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_98" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5085" name="kf" value="4.00002e-11"/>
          <Constant key="Parameter_5083" name="kb" value="1e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_584">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_585">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_586">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_587">
              <SourceParameter reference="Parameter_5083"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_588">
              <SourceParameter reference="Parameter_5085"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_589">
              <SourceParameter reference="Metabolite_98"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="activation" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_31">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_177" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_98" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5084" name="kf" value="1.00002e-12"/>
          <Constant key="Parameter_5080" name="kb" value="9e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_597">
              <SourceParameter reference="Parameter_5080"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_598">
              <SourceParameter reference="Parameter_5084"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_599">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_600">
              <SourceParameter reference="Metabolite_177"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_601">
              <SourceParameter reference="Metabolite_98"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="Ras_minus_act_minus_craf" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_32">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Assume the binding is fast and limited only by the amount of Ras_star available. So kf=kb/[craf-1] If kb is 1/sec, then kf = 1/0.2 uM = 1/(0.2 * 6e5) = 8.3e-6 Later: Raise it by 10 X to 4e-5 From Hallberg et al JBC 269:6 3913-3916 1994, 3% of cellular Raf is complexed with Ras. So we raise kb 4x to 4 This step needed to memb-anchor and activate Raf: Leevers et al Nature 369 411-414 May 16, 2003 Changed Ras and Raf to synaptic levels, an increase of about 2x for each. To maintain the percentage of complexed Raf, reduced the kf by 2.4 fold to 10.
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_120" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5079" name="kf" value="9.9996e-12"/>
          <Constant key="Parameter_5082" name="kb" value="5e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_608">
              <SourceParameter reference="Metabolite_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_609">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_610">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_611">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_612">
              <SourceParameter reference="Parameter_5082"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_613">
              <SourceParameter reference="Parameter_5079"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="Ras_slash_dephosph_minus_GEF" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_33">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_132" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_130" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5081" name="kf" value="1e-12"/>
          <Constant key="Parameter_5086" name="kb" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_583">
              <SourceParameter reference="Metabolite_132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_620">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_621">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_622">
              <SourceParameter reference="Parameter_5086"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_623">
              <SourceParameter reference="Parameter_5081"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="Ras_slash_Ras_minus_intrinsic_minus_GTPase" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_34">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    This is extremely slow (1e-4), but it is significant as so little GAP actually gets complexed with it that the total GTP turnover rises only by 2-3 X (see Gibbs et al, JBC 265(33) 20437-20422) and Eccleston et al JBC 268(36) 27012-27019 kf = 1e-4
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5090" name="kf" value="1e-16"/>
          <Constant key="Parameter_5088" name="kb" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_629">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_630">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_631">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_632">
              <SourceParameter reference="Parameter_5088"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_633">
              <SourceParameter reference="Parameter_5090"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="Ras_slash_dephosph_minus_GAP" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_35">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Assume a reasonably good rate for dephosphorylating it, 1/sec
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_136" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5087" name="kf" value="1e-13"/>
          <Constant key="Parameter_5091" name="kb" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_639">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_640">
              <SourceParameter reference="Metabolite_136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_641">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_642">
              <SourceParameter reference="Parameter_5091"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_643">
              <SourceParameter reference="Parameter_5087"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="Ras_slash_CaM_minus_bind_minus_GEF" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_36">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    We have no numbers for this. It is probably between the two extremes represented by the CaMKII phosph states, and I have used guesses based on this. kf=1e-4 kb=1 The reaction is based on Farnsworth et al Nature 376 524-527 1995
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_130" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5089" name="kf" value="1.99998e-10"/>
          <Constant key="Parameter_5093" name="kb" value="1e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_650">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_651">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_652">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_653">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_654">
              <SourceParameter reference="Parameter_5093"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_655">
              <SourceParameter reference="Parameter_5089"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="Sos_slash_Shc_bind_Sos_dot_Grb2" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_37">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Sasaoka et al JBC 269:51 pp 32621 1994, table on pg 32623 indicates that this pathway accounts for about 50% of the GEF activation. (88% - 39%). Error is large, about 20%. Fig 1 is most useful in constraining rates. Chook et al JBC 271:48 pp 30472, 1996 say that the Kd is 0.2 uM for Shc binding to EGFR. The Kd for Grb direct binding is 0.7, so we\&apos;ll ignore it.
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_144" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_100" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5095" name="kf" value="4.99974e-13"/>
          <Constant key="Parameter_5096" name="kb" value="1e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_74" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_662">
              <SourceParameter reference="Metabolite_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_663">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_664">
              <SourceParameter reference="Metabolite_144"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_665">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_666">
              <SourceParameter reference="Parameter_5096"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_667">
              <SourceParameter reference="Parameter_5095"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="Sos_slash_Grb2_bind_Sos_star" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_38">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Same rates as Grb2_bind_Sos: Porfiri and McCormick JBC 271:10 pp 5871 1996 show that the binding is not affected by the phosph.
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5092" name="kf" value="2.50002e-14"/>
          <Constant key="Parameter_5094" name="kb" value="1.68e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_674">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_675">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_676">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_678">
              <SourceParameter reference="Parameter_5094"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_679">
              <SourceParameter reference="Parameter_5092"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="Sos_slash_dephosph_Sos" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_39">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    The only clue I have to these rates is from the time courses of the EGF activation, which is around 1 to 5 min. The dephosph would be expected to be of the same order, perhaps a bit longer. Lets use 0.002 which is about 8 min. Sep 17: The transient activation curve matches better with kf = 0.001
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_146" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5099" name="kf" value="1e-15"/>
          <Constant key="Parameter_5100" name="kb" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_76" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_146"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_686">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_687">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_688">
              <SourceParameter reference="Parameter_5100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_689">
              <SourceParameter reference="Parameter_5099"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="Sos_slash_Grb2_bind_Sos" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_40">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    As there are 2 SH3 domains, this reaction could be 2nd order. I have a Kd of 22 uM from peptide binding (Lemmon et al JBC 269:50 pg 31653). However, Chook et al JBC 271:48 pg30472 say it is 0.4uM with purified proteins, so we believe them. They say it is 1:1 binding.
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_99" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_146" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_144" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5101" name="kf" value="2.50002e-14"/>
          <Constant key="Parameter_5097" name="kb" value="1.68e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_77" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_696">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_697">
              <SourceParameter reference="Metabolite_146"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_698">
              <SourceParameter reference="Metabolite_144"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_699">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_700">
              <SourceParameter reference="Parameter_5097"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_701">
              <SourceParameter reference="Parameter_5101"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="CaMKIII_bind_CaM_minus_Ca4" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_41">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_76" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5098" name="kf" value="9.9e-11"/>
          <Constant key="Parameter_5102" name="kb" value="9e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_78" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_708">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_709">
              <SourceParameter reference="Metabolite_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_710">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_711">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_712">
              <SourceParameter reference="Parameter_5102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_713">
              <SourceParameter reference="Parameter_5098"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="pep_elongation" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_42">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5104" name="kf" value="1e-13"/>
          <Constant key="Parameter_5103" name="kb" value="1e-15"/>
        </ListOfConstants>
        <KineticLaw function="Function_79" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_695">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_720">
              <SourceParameter reference="Parameter_5103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_721">
              <SourceParameter reference="Parameter_5104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_722">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_723">
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="protein_deg" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_43">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_96" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5105" name="kf" value="1e-12"/>
          <Constant key="Parameter_5106" name="kb" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_80" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_729">
              <SourceParameter reference="Metabolite_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_730">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_731">
              <SourceParameter reference="Parameter_5106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_732">
              <SourceParameter reference="Parameter_5105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_733">
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="GDP_to_GTP" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_44">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5107" name="k1" value="2e-13"/>
          <Constant key="Parameter_5108" name="k2" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="PKC_slash_PKC_minus_act_minus_by_minus_Ca" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_45">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Need est of rate of assoc of Ca and PKC. Assume it is fast The original parameter-searched kf of 439.4 has been scaled by 1/6e8 to account for change of units to n. Kf now 8.16e-7, kb=.6085 Raised kf to 1e-6 to match Ca curve, kb to .5
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_158" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_148" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5109" name="kf" value="6e-13"/>
          <Constant key="Parameter_5110" name="kb" value="5e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_81" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_744">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_745">
              <SourceParameter reference="Metabolite_148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_746">
              <SourceParameter reference="Metabolite_158"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_747">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_748">
              <SourceParameter reference="Parameter_5110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_749">
              <SourceParameter reference="Parameter_5109"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="PKC_slash_PKC_minus_act_minus_by_minus_DAG" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_46">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Need est of rate. Assume it is fast Obtained from param search kf raised 10 X : see Shinomura et al PNAS 88 5149-5153 1991. kf changed from 3.865e-7 to 2.0e-7 in line with closer analysis of Shinomura data. 26 June 1996: Corrected DAG data: reduce kf 15x from 2e-7 to 1.333e-8
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_179" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_148" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_155" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5117" name="kf" value="7.9998e-15"/>
          <Constant key="Parameter_5116" name="kb" value="8.6348e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_82" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_756">
              <SourceParameter reference="Metabolite_179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_757">
              <SourceParameter reference="Metabolite_148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_758">
              <SourceParameter reference="Metabolite_155"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_759">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_760">
              <SourceParameter reference="Parameter_5116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_761">
              <SourceParameter reference="Parameter_5117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="PKC_slash_PKC_minus_Ca_minus_to_minus_memb" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_47">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_148" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5115" name="kf" value="1.2705e-12"/>
          <Constant key="Parameter_5114" name="kb" value="3.5026e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_83" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_741">
              <SourceParameter reference="Metabolite_148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_768">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_769">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_770">
              <SourceParameter reference="Parameter_5114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_771">
              <SourceParameter reference="Parameter_5115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="PKC_slash_PKC_minus_DAG_minus_to_minus_memb" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_48">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Raise kb from .087 to 0.1 to match data from Shinomura et al. Lower kf from 1.155 to 1.0 to match data from Shinomura et al.
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_155" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_152" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5112" name="kf" value="1e-12"/>
          <Constant key="Parameter_5111" name="kb" value="1e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_84" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_777">
              <SourceParameter reference="Metabolite_155"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_778">
              <SourceParameter reference="Metabolite_152"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_779">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_780">
              <SourceParameter reference="Parameter_5111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_781">
              <SourceParameter reference="Parameter_5112"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="PKC_slash_PKC_minus_act_minus_by_minus_Ca_minus_AA" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_49">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Schaechter and Benowitz We have to increase Kf for conc scaling Changed kf to 2e-9 on Sept 19, 94. This gives better match.
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_148" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_180" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_150" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5122" name="kf" value="1.2e-15"/>
          <Constant key="Parameter_5119" name="kb" value="1e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_85" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_788">
              <SourceParameter reference="Metabolite_180"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_789">
              <SourceParameter reference="Metabolite_148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_790">
              <SourceParameter reference="Metabolite_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_791">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_792">
              <SourceParameter reference="Parameter_5119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_793">
              <SourceParameter reference="Parameter_5122"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="PKC_slash_PKC_minus_act_minus_by_minus_DAG_minus_AA" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_50">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Assume slowish too. Schaechter and Benowitz
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_157" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_149" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5120" name="kf" value="2e-12"/>
          <Constant key="Parameter_5121" name="kb" value="2e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_86" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_739">
              <SourceParameter reference="Metabolite_157"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_800">
              <SourceParameter reference="Metabolite_149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_801">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_802">
              <SourceParameter reference="Parameter_5121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_803">
              <SourceParameter reference="Parameter_5120"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="PKC_slash_PKC_minus_basal_minus_act" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_51">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Initial basal levels were set by kf = 1, kb = 20. In model, though, the basal levels of PKC activity are higher.
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_158" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5113" name="kf" value="1e-12"/>
          <Constant key="Parameter_5118" name="kb" value="5e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_87" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_809">
              <SourceParameter reference="Metabolite_153"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_810">
              <SourceParameter reference="Metabolite_158"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_811">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_812">
              <SourceParameter reference="Parameter_5118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_813">
              <SourceParameter reference="Parameter_5113"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="PKC_slash_PKC_minus_act_minus_by_minus_AA" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_52">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Raise kf from 1.667e-10 to 2e-10 to get better match to data.
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_180" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_158" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_154" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5123" name="kf" value="1.2e-16"/>
          <Constant key="Parameter_5124" name="kb" value="1e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_88" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_820">
              <SourceParameter reference="Metabolite_180"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_821">
              <SourceParameter reference="Metabolite_154"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_822">
              <SourceParameter reference="Metabolite_158"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_823">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_824">
              <SourceParameter reference="Parameter_5124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_825">
              <SourceParameter reference="Parameter_5123"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="PKC_slash_PKC_minus_n_minus_DAG" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_53">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    kf raised 10 X based on Shinomura et al PNAS 88 5149-5153 1991 closer analysis of Shinomura et al: kf now 1e-8 (was 1.66e-8). Further tweak. To get sufficient AA synergy, increase kf to 1.5e-8 26 June 1996: Corrected DAG levels: reduce kf by 15x from 1.5e-8 to 1e-9
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_158" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_179" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_156" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5125" name="kf" value="6e-16"/>
          <Constant key="Parameter_5126" name="kb" value="1e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_89" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_832">
              <SourceParameter reference="Metabolite_179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_833">
              <SourceParameter reference="Metabolite_156"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_834">
              <SourceParameter reference="Metabolite_158"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_835">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_836">
              <SourceParameter reference="Parameter_5126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_837">
              <SourceParameter reference="Parameter_5125"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="PKC_slash_PKC_minus_n_minus_DAG_minus_AA" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_54">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Reduced kf to 0.66X to match Shinomura et al data. Initial: kf = 3.3333e-9 New: 2e-9 Newer: 2e-8 kb was 0.2 now 2.
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_156" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_180" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_157" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5131" name="kf" value="1.8e-14"/>
          <Constant key="Parameter_5128" name="kb" value="2e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_90" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_844">
              <SourceParameter reference="Metabolite_180"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_845">
              <SourceParameter reference="Metabolite_156"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_846">
              <SourceParameter reference="Metabolite_157"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_847">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_848">
              <SourceParameter reference="Parameter_5128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_849">
              <SourceParameter reference="Parameter_5131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="eIF4E_minus_BP_disso" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_55">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_168" stoichiometry="1"/>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5130" name="k1" value="1e-12"/>
          <Constant key="Parameter_5129" name="k2" value="1e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_168"/>
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="basal_S6K" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_56">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5127" name="kf" value="1e-14"/>
          <Constant key="Parameter_5135" name="kb" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_91" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_859">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_860">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_861">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_862">
              <SourceParameter reference="Parameter_5135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_863">
              <SourceParameter reference="Parameter_5127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="rad_pep_elongation" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_57">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_163" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_164" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5134" name="kf" value="1e-13"/>
          <Constant key="Parameter_5132" name="kb" value="1e-15"/>
        </ListOfConstants>
        <KineticLaw function="Function_92" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_13_sbc_]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_869">
              <SourceParameter reference="Compartment_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_870">
              <SourceParameter reference="Parameter_5132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_871">
              <SourceParameter reference="Parameter_5134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_872">
              <SourceParameter reference="Metabolite_163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_873">
              <SourceParameter reference="Metabolite_164"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="rad_protein_deg" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_58">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_164" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_165" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5133" name="kf" value="1e-12"/>
          <Constant key="Parameter_5194" name="kb" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_93" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_13_sbc_]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_879">
              <SourceParameter reference="Compartment_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_880">
              <SourceParameter reference="Parameter_5194"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_881">
              <SourceParameter reference="Parameter_5133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_882">
              <SourceParameter reference="Metabolite_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_883">
              <SourceParameter reference="Metabolite_164"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="labelling" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_59">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_178" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_162" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5154" name="k1" value="0"/>
          <Constant key="Parameter_5136" name="k2" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5154"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_178"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_162"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="PI3K_bind_Ras_minus_GTP" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_60">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_134" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5192" name="k1" value="1.79994e-12"/>
          <Constant key="Parameter_5197" name="k2" value="5e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5192"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_134"/>
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5197"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="PDK1_slash_S6K_phospho_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_61">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5191" name="k1" value="4.99981e-13"/>
          <Constant key="Parameter_5193" name="k2" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_55"/>
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5193"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="PDK1_slash_S6K_phospho_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_62">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_73" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5138" name="k1" value="1e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5138"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="PP2A_slash_dephos_clus_S6K_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_63">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5139" name="k1" value="5.68157e-13"/>
          <Constant key="Parameter_5143" name="k2" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_94" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_904">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_905">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_906">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_907">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_908">
              <SourceParameter reference="Parameter_5139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_909">
              <SourceParameter reference="Parameter_5143"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="PP2A_slash_dephos_clus_S6K_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_64">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5137" name="k3" value="1e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_95" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_899">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_902">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_900">
              <SourceParameter reference="Parameter_5137"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="PP2A_slash_dephos_S6K_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_65">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5142" name="k1" value="5.68157e-13"/>
          <Constant key="Parameter_5141" name="k2" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_96" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_922">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_923">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_924">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_925">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_926">
              <SourceParameter reference="Parameter_5142"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_927">
              <SourceParameter reference="Parameter_5141"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="PP2A_slash_dephos_S6K_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_66">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5140" name="k3" value="1e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_97" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_903">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_920">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_898">
              <SourceParameter reference="Parameter_5140"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="PP2A_slash_dephosp_S6K_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_67">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5146" name="k1" value="5.68176e-13"/>
          <Constant key="Parameter_5153" name="k2" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_98" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_940">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_941">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_942">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_943">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_944">
              <SourceParameter reference="Parameter_5146"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_945">
              <SourceParameter reference="Parameter_5153"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="PP2A_slash_dephosp_S6K_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_68">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5150" name="k3" value="1e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_99" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_921">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_938">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_901">
              <SourceParameter reference="Parameter_5150"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="PP2A_slash_Dephos_AKTser473_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_69">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5149" name="k1" value="1.875e-12"/>
          <Constant key="Parameter_5151" name="k2" value="7.2e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_100" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_958">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_959">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_960">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_961">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_962">
              <SourceParameter reference="Parameter_5149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_963">
              <SourceParameter reference="Parameter_5151"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="PP2A_slash_Dephos_AKTser473_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_70">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5145" name="k3" value="1.8e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_101" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_956">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_919">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_939">
              <SourceParameter reference="Parameter_5145"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="PP2A_slash_Dephosph_AKTthr308_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_71">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5147" name="k1" value="1.87488e-12"/>
          <Constant key="Parameter_5148" name="k2" value="7.2e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_102" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_976">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_977">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_978">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_979">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_980">
              <SourceParameter reference="Parameter_5147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_981">
              <SourceParameter reference="Parameter_5148"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="PP2A_slash_Dephosph_AKTthr308_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_72">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5152" name="k3" value="1.8e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_103" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_974">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_937">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_957">
              <SourceParameter reference="Parameter_5152"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="PP2A_slash_eEF2thr_minus_56_dephospho_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_73">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5144" name="k1" value="2.67036e-13"/>
          <Constant key="Parameter_5004" name="k2" value="1.88e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_104" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_994">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_995">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_996">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_997">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_998">
              <SourceParameter reference="Parameter_5144"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_999">
              <SourceParameter reference="Parameter_5004"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="PP2A_slash_eEF2thr_minus_56_dephospho_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_74">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_80" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5013" name="k3" value="4.7e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_105" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_975">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_992">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_955">
              <SourceParameter reference="Parameter_5013"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="PP2A_slash_PP2A_4E_minus_BP_star_star_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_75">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5008" name="k1" value="5.68182e-13"/>
          <Constant key="Parameter_5011" name="k2" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_106" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1012">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1013">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1014">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1015">
              <SourceParameter reference="Parameter_5008"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1016">
              <SourceParameter reference="Parameter_5011"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1017">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="PP2A_slash_PP2A_4E_minus_BP_star_star_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_76">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_168" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5003" name="k1" value="1e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5003"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="PP2A_slash_PP2A_4E_minus_BP_star_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_77">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_168" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5007" name="k1" value="5.68182e-13"/>
          <Constant key="Parameter_5006" name="k2" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5007"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_168"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5006"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="PP2A_slash_PP2A_4E_minus_BP_star_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_78">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5015" name="k3" value="1e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_107" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1027">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1028">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1029">
              <SourceParameter reference="Parameter_5015"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="PP2A_slash_PP2A_4E_minus_BP_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_79">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5012" name="k1" value="5.68164e-13"/>
          <Constant key="Parameter_5010" name="k2" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_108" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1036">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1037">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1038">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1039">
              <SourceParameter reference="Parameter_5012"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1040">
              <SourceParameter reference="Parameter_5010"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1041">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="PP2A_slash_PP2A_4E_minus_BP_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_80">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5009" name="k3" value="1e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_109" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1035">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1034">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1025">
              <SourceParameter reference="Parameter_5009"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="PP2A_slash_PP2A_4EBP_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_81">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5014" name="k1" value="5.68164e-13"/>
          <Constant key="Parameter_5017" name="k2" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_110" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1054">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1055">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1056">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1057">
              <SourceParameter reference="Parameter_5014"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1058">
              <SourceParameter reference="Parameter_5017"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1059">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="PP2A_slash_PP2A_4EBP_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_82">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5005" name="k3" value="1e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_111" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1053">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1052">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1033">
              <SourceParameter reference="Parameter_5005"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_83">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5016" name="k1" value="1.25e-10"/>
          <Constant key="Parameter_5189" name="k2" value="4e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_112" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1072">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1073">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1074">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1075">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1076">
              <SourceParameter reference="Parameter_5016"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1077">
              <SourceParameter reference="Parameter_5189"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_84">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5190" name="k3" value="1e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_113" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1070">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1051">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1026">
              <SourceParameter reference="Parameter_5190"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_85">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4843" name="k1" value="1.24994e-10"/>
          <Constant key="Parameter_4842" name="k2" value="8e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_114" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1090">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1091">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1092">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1093">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1094">
              <SourceParameter reference="Parameter_4843"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1095">
              <SourceParameter reference="Parameter_4842"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_86">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4841" name="k3" value="2e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_115" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1088">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1024">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1071">
              <SourceParameter reference="Parameter_4841"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_87">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4840" name="k1" value="2.91264e-12"/>
          <Constant key="Parameter_4839" name="k2" value="2.4e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_116" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1108">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1109">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1110">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1111">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1112">
              <SourceParameter reference="Parameter_4840"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1113">
              <SourceParameter reference="Parameter_4839"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_88">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4838" name="k3" value="6e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_117" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1089">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1106">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1069">
              <SourceParameter reference="Parameter_4838"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_89">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4837" name="k1" value="8.33312e-12"/>
          <Constant key="Parameter_4836" name="k2" value="1.99993e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_118" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1126">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1127">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1128">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1129">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1130">
              <SourceParameter reference="Parameter_4837"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1131">
              <SourceParameter reference="Parameter_4836"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_90">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4835" name="k3" value="4.99983e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_119" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1124">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1087">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1107">
              <SourceParameter reference="Parameter_4835"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_91">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4834" name="k1" value="1.80006e-12"/>
          <Constant key="Parameter_4833" name="k2" value="1.19996e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_120" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1144">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1145">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1146">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1147">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1148">
              <SourceParameter reference="Parameter_4834"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1149">
              <SourceParameter reference="Parameter_4833"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_92">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_100" stoichiometry="1"/>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4832" name="k3" value="2.9999e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_121" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1142">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1105">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1125">
              <SourceParameter reference="Parameter_4832"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_93">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_175" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4831" name="k1" value="4.99999e-12"/>
          <Constant key="Parameter_4829" name="k2" value="1.59995e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_122" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1162">
              <SourceParameter reference="Metabolite_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1163">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1164">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1165">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1166">
              <SourceParameter reference="Parameter_4831"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1167">
              <SourceParameter reference="Parameter_4829"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_94">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4827" name="k3" value="3.99987e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_123" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1160">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1123">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1143">
              <SourceParameter reference="Parameter_4827"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="PI3K_mod_slash_PI3K_basal_slash_basal_phosp_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_95">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_175" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4828" name="k1" value="4.99998e-12"/>
          <Constant key="Parameter_4826" name="k2" value="1.6e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_124" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1180">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1181">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1182">
              <SourceParameter reference="Metabolite_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1183">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1184">
              <SourceParameter reference="Parameter_4828"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1185">
              <SourceParameter reference="Parameter_4826"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="PI3K_mod_slash_PI3K_basal_slash_basal_phosp_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_96">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4830" name="k3" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_125" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1161">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1178">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1141">
              <SourceParameter reference="Parameter_4830"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="PLCg_basal_slash_PLC_g_phospho_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_97">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4825" name="k1" value="8.3334e-12"/>
          <Constant key="Parameter_4824" name="k2" value="2e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_4825"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4824"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="PLCg_basal_slash_PLC_g_phospho_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_98">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4823" name="k1" value="5e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4823"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="TSC1_minus_TSC2_slash_TSC2phospho_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_99">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4822" name="k1" value="3.33336e-10"/>
          <Constant key="Parameter_4821" name="k2" value="8e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_126" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1204">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1205">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1206">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1207">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1208">
              <SourceParameter reference="Parameter_4822"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1209">
              <SourceParameter reference="Parameter_4821"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="TSC1_minus_TSC2_slash_TSC2phospho_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_100">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4820" name="k1" value="2e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4820"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_101">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4819" name="k1" value="3.74999e-13"/>
          <Constant key="Parameter_4818" name="k2" value="2.4e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_127" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1218">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1219">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1220">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1221">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1222">
              <SourceParameter reference="Parameter_4819"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1223">
              <SourceParameter reference="Parameter_4818"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_102">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4817" name="k3" value="6e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_128" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1216">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1200">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1202">
              <SourceParameter reference="Parameter_4817"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_103">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4816" name="k1" value="2.77776e-12"/>
          <Constant key="Parameter_4815" name="k2" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_129" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1236">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1237">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1238">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1239">
              <SourceParameter reference="Parameter_4816"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1240">
              <SourceParameter reference="Parameter_4815"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1241">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_104">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4814" name="k3" value="1e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_130" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1235">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1234">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1203">
              <SourceParameter reference="Parameter_4814"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_star_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_105">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4813" name="k1" value="2.77776e-12"/>
          <Constant key="Parameter_4812" name="k2" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_131" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1254">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1255">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1256">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1257">
              <SourceParameter reference="Parameter_4813"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1258">
              <SourceParameter reference="Parameter_4812"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1259">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_star_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_106">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_168" stoichiometry="1"/>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4811" name="k1" value="1e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4811"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_107">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_176" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4810" name="k1" value="1.99997e-13"/>
          <Constant key="Parameter_4809" name="k2" value="3.99987e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_132" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1268">
              <SourceParameter reference="Metabolite_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1269">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1270">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1271">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1272">
              <SourceParameter reference="Parameter_4810"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1273">
              <SourceParameter reference="Parameter_4809"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_108" name="S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_108">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4808" name="k3" value="9.99967e-15"/>
        </ListOfConstants>
        <KineticLaw function="Function_133" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1266">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1252">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1253">
              <SourceParameter reference="Parameter_4808"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_109" name="S6K_thr_minus_252_slash_camkIII_phospho_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_109">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_74" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4807" name="k1" value="4.99998e-12"/>
          <Constant key="Parameter_4806" name="k2" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_134" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1286">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1287">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1288">
              <SourceParameter reference="Metabolite_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1289">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1290">
              <SourceParameter reference="Parameter_4807"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1291">
              <SourceParameter reference="Parameter_4806"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_110" name="S6K_thr_minus_252_slash_camkIII_phospho_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_110">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_74" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_89" stoichiometry="1"/>
          <Product metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4805" name="k3" value="1e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_135" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1284">
              <SourceParameter reference="Metabolite_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1217">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1267">
              <SourceParameter reference="Parameter_4805"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="S6K_thr_minus_252_slash_S6_phospho_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_111">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_176" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4804" name="k1" value="1.99998e-12"/>
          <Constant key="Parameter_4803" name="k2" value="4e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_136" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1304">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1305">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1306">
              <SourceParameter reference="Metabolite_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1307">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1308">
              <SourceParameter reference="Parameter_4804"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1309">
              <SourceParameter reference="Parameter_4803"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_112" name="S6K_thr_minus_252_slash_S6_phospho_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_112">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
          <Product metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4802" name="k3" value="1e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_137" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1285">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1302">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1233">
              <SourceParameter reference="Parameter_4802"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_113" name="CaMKIII_CaM_minus_Ca4_slash_phospho_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_113">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4801" name="k1" value="2.50002e-11"/>
          <Constant key="Parameter_4800" name="k2" value="4e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_138" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1322">
              <SourceParameter reference="Metabolite_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1323">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1324">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1325">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1326">
              <SourceParameter reference="Parameter_4801"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1327">
              <SourceParameter reference="Parameter_4800"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_114" name="CaMKIII_CaM_minus_Ca4_slash_phospho_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_114">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
          <Product metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4799" name="k3" value="1e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_139" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1303">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1320">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1283">
              <SourceParameter reference="Parameter_4799"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_115" name="CaMKIII_basal_slash_eEF2thr56_basal_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_115">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4798" name="k1" value="2.50002e-11"/>
          <Constant key="Parameter_4797" name="k2" value="4e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_140" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1340">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1341">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1342">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1343">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1344">
              <SourceParameter reference="Parameter_4798"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1345">
              <SourceParameter reference="Parameter_4797"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_116" name="CaMKIII_basal_slash_eEF2thr56_basal_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_116">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4796" name="k3" value="1e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_141" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1321">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1338">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1301">
              <SourceParameter reference="Parameter_4796"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_117" name="S6K_basal_slash_CaMKIII_basal_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_117">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4795" name="k1" value="5.00052e-11"/>
          <Constant key="Parameter_4794" name="k2" value="4e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_142" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1358">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1359">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1360">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1361">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1362">
              <SourceParameter reference="Parameter_4795"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1363">
              <SourceParameter reference="Parameter_4794"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_118" name="S6K_basal_slash_CaMKIII_basal_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_118">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_89" stoichiometry="1"/>
          <Product metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4793" name="k3" value="1e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_143" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1356">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1319">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1339">
              <SourceParameter reference="Parameter_4793"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_119" name="Translation_clx_slash_pro_syn_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_119">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_178" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4792" name="k1" value="1.81824e-12"/>
          <Constant key="Parameter_4791" name="k2" value="8e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_144" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1376">
              <SourceParameter reference="Metabolite_178"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1377">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1378">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1379">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1380">
              <SourceParameter reference="Parameter_4792"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1381">
              <SourceParameter reference="Parameter_4791"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_120" name="Translation_clx_slash_pro_syn_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_120">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_95" stoichiometry="1"/>
          <Product metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4790" name="k3" value="2e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_145" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1374">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1337">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1357">
              <SourceParameter reference="Parameter_4790"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_121" name="Translation_clx_slash_rad_pro_syn_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_121">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_162" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_94" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4789" name="k1" value="1.66668e-12"/>
          <Constant key="Parameter_4788" name="k2" value="8e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_4789"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_162"/>
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4788"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_94"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_122" name="Translation_clx_slash_rad_pro_syn_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_122">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_94" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_163" stoichiometry="1"/>
          <Product metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4787" name="k1" value="2e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4787"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_94"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_123" name="MAPK_star_slash_cluster_phospho_S6K_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_123">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_102" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4786" name="k1" value="2.8902e-13"/>
          <Constant key="Parameter_4785" name="k2" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_146" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1400">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1401">
              <SourceParameter reference="Metabolite_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1402">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1403">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1404">
              <SourceParameter reference="Parameter_4786"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1405">
              <SourceParameter reference="Parameter_4785"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_124" name="MAPK_star_slash_cluster_phospho_S6K_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_124">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_102" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
          <Product metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4784" name="k3" value="1e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_147" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1395">
              <SourceParameter reference="Metabolite_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1398">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1396">
              <SourceParameter reference="Parameter_4784"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_125" name="MAPK_star_slash_MAPK_star_minus_feedback_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_125">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Ueki et al JBC 269(22):15756-15761 show the presence of this step, but not the rate consts, which are derived from Sanghera et al JBC 265(1):52-57, 1990, see the deriv in the MAPK_star notes.
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4783" name="k1" value="1.95e-12"/>
          <Constant key="Parameter_4782" name="k2" value="4e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_148" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1418">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1419">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1420">
              <SourceParameter reference="Metabolite_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1421">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1422">
              <SourceParameter reference="Parameter_4783"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1423">
              <SourceParameter reference="Parameter_4782"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_126" name="MAPK_star_slash_MAPK_star_minus_feedback_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_126">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_114" stoichiometry="1"/>
          <Product metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4781" name="k3" value="1e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_149" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1416">
              <SourceParameter reference="Metabolite_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1394">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1399">
              <SourceParameter reference="Parameter_4781"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_127" name="MAPK_star_slash_phosph_Sos_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_127">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    See Porfiri and McCormick JBC 271:10 pp5871 1996 for the existence of this step. We\&apos;ll take the rates from the ones used for the phosph of Raf by MAPK. Sep 17 1997: The transient activation curve matches better with k1 up by 10 x.
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_146" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_104" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4777" name="k1" value="1.95e-11"/>
          <Constant key="Parameter_4778" name="k2" value="4e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_150" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1436">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1437">
              <SourceParameter reference="Metabolite_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1438">
              <SourceParameter reference="Metabolite_146"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1439">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1440">
              <SourceParameter reference="Parameter_4777"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1441">
              <SourceParameter reference="Parameter_4778"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_128" name="MAPK_star_slash_phosph_Sos_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_128">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_104" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_145" stoichiometry="1"/>
          <Product metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4779" name="k3" value="1e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_151" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1417">
              <SourceParameter reference="Metabolite_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1434">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1397">
              <SourceParameter reference="Parameter_4779"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_129" name="MAPK_star_slash_MAPK_4E_minus_BP_star_star_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_129">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_168" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4780" name="k1" value="4.46928e-14"/>
          <Constant key="Parameter_4776" name="k2" value="6.4e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_4780"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_168"/>
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4776"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_105"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_130" name="MAPK_star_slash_MAPK_4E_minus_BP_star_star_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_130">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
          <Product metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4775" name="k3" value="1.6e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_152" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1455">
              <SourceParameter reference="Metabolite_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1456">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1457">
              <SourceParameter reference="Parameter_4775"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_131" name="MAPK_star_slash_MAPK_4E_minus_BP_phospho_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_131">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_106" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4774" name="k1" value="4.46928e-14"/>
          <Constant key="Parameter_4773" name="k2" value="6.4e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_153" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1464">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1465">
              <SourceParameter reference="Metabolite_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1466">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1467">
              <SourceParameter reference="Parameter_4774"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1468">
              <SourceParameter reference="Parameter_4773"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1469">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_132" name="MAPK_star_slash_MAPK_4E_minus_BP_phospho_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_132">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_106" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
          <Product metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4772" name="k3" value="1.6e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_154" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1463">
              <SourceParameter reference="Metabolite_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1462">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1453">
              <SourceParameter reference="Parameter_4772"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_133" name="PKC_minus_active_slash_PKC_minus_act_minus_raf_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_133">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Rate consts from Chen et al Biochem 32, 1032 (1993) k3 = k2 = 4 k1 = 9e-5 recalculated gives 1.666e-5, which is not very different. Looks like k3 is rate-limiting in this case: there is a huge amount of craf locked up in the enz complex. Let us assume a 10x higher Km, ie, lower affinity. k1 drops by 10x. Also changed k2 to 4x k3. Lowerd k1 to 1e-6 to balance 10X DAG sensitivity of PKC
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_110" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_181" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4771" name="k1" value="9.9996e-13"/>
          <Constant key="Parameter_4770" name="k2" value="1.6e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_155" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1482">
              <SourceParameter reference="Metabolite_110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1483">
              <SourceParameter reference="Metabolite_181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1484">
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1485">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1486">
              <SourceParameter reference="Parameter_4771"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1487">
              <SourceParameter reference="Parameter_4770"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_134" name="PKC_minus_active_slash_PKC_minus_act_minus_raf_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_134">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_111" stoichiometry="1"/>
          <Product metabolite="Metabolite_181" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4769" name="k3" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_156" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1480">
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1461">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1452">
              <SourceParameter reference="Parameter_4769"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_135" name="PKC_minus_active_slash_PKC_minus_inact_minus_GAP_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_135">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Rate consts copied from PCK-act-raf This reaction inactivates GAP. The idea is from the Boguski and McCormick review.
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_137" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_181" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_108" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4768" name="k1" value="6e-12"/>
          <Constant key="Parameter_4767" name="k2" value="1.6e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_157" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1500">
              <SourceParameter reference="Metabolite_181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1501">
              <SourceParameter reference="Metabolite_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1502">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1503">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1504">
              <SourceParameter reference="Parameter_4768"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1505">
              <SourceParameter reference="Parameter_4767"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_136" name="PKC_minus_active_slash_PKC_minus_inact_minus_GAP_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_136">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_108" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_136" stoichiometry="1"/>
          <Product metabolite="Metabolite_181" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4766" name="k3" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_158" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1481">
              <SourceParameter reference="Metabolite_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1498">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1454">
              <SourceParameter reference="Parameter_4766"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_137" name="PKC_minus_active_slash_PKC_minus_act_minus_GEF_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_137">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Rate consts from PKC-act-raf. This reaction activates GEF. It can lead to at least 2X stim of ras, and a 2X stim of MAPK over and above that obtained via direct phosph of c-raf. Note that it is a push-pull reaction, and there is also a contribution through the phosphorylation and inactivation of GAPs. The original PKC-act-raf rate consts are too fast. We lower K1 by 10 X
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_130" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_181" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4765" name="k1" value="6e-12"/>
          <Constant key="Parameter_4764" name="k2" value="1.6e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_159" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1518">
              <SourceParameter reference="Metabolite_181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1519">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1520">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1521">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1522">
              <SourceParameter reference="Parameter_4765"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1523">
              <SourceParameter reference="Parameter_4764"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_138" name="PKC_minus_active_slash_PKC_minus_act_minus_GEF_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_138">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_132" stoichiometry="1"/>
          <Product metabolite="Metabolite_181" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4763" name="k3" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_160" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1499">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1516">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1479">
              <SourceParameter reference="Parameter_4763"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_139" name="MAPK_slash_MAPKK_star_slash_MAPKKtyr_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_139">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    The actual MAPKK is 2 forms from Seger et al JBC 267:20 14373(1992) Vmax = 150nmol/min/mg From Haystead et al FEBS 306(1):17-22 we get Km=46.6nM for at least one of the phosphs. Putting these together: k3=0.15/sec, scale to get k2=0.6. k1=0.75/46.6nM=2.7e-5
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_116" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4762" name="k1" value="3.24e-11"/>
          <Constant key="Parameter_4761" name="k2" value="1.2e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_161" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1536">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1537">
              <SourceParameter reference="Metabolite_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1538">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1539">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1540">
              <SourceParameter reference="Parameter_4762"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1541">
              <SourceParameter reference="Parameter_4761"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_140" name="MAPK_slash_MAPKK_star_slash_MAPKKtyr_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_140">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
          <Product metabolite="Metabolite_116" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4760" name="k3" value="3e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_162" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1534">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1497">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1517">
              <SourceParameter reference="Parameter_4760"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_141" name="MAPK_slash_MAPKK_star_slash_MAPKKthr_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_141">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Rate consts same as for MAPKKtyr.
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_116" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4759" name="k1" value="3.24e-11"/>
          <Constant key="Parameter_4758" name="k2" value="1.2e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_163" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1554">
              <SourceParameter reference="Metabolite_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1555">
              <SourceParameter reference="Metabolite_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1556">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1557">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1558">
              <SourceParameter reference="Parameter_4759"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1559">
              <SourceParameter reference="Parameter_4758"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_142" name="MAPK_slash_MAPKK_star_slash_MAPKKthr_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_142">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_101" stoichiometry="1"/>
          <Product metabolite="Metabolite_116" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4757" name="k3" value="3e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_164" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1535">
              <SourceParameter reference="Metabolite_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1552">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1515">
              <SourceParameter reference="Parameter_4757"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_143" name="MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_143">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Kinetics are the same as for the craf-1_star activity, ie., k1=1.1e-6, k2=.42, k3 =0.105 These are based on Force et al PNAS USA 91 1270-1274 1994. These parms cannot reach the observed 4X stim of MAPK. So lets increase the affinity, ie, raise k1 10X to 1.1e-5 Lets take it back down to where it was. Back up to 5X: 5.5e-6
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_112" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_120" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4756" name="k1" value="9.4284e-12"/>
          <Constant key="Parameter_4755" name="k2" value="1.2e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_165" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1572">
              <SourceParameter reference="Metabolite_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1573">
              <SourceParameter reference="Metabolite_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1574">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1575">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1576">
              <SourceParameter reference="Parameter_4756"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1577">
              <SourceParameter reference="Parameter_4755"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_144" name="MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_144">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_119" stoichiometry="1"/>
          <Product metabolite="Metabolite_120" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4754" name="k3" value="3e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_166" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1570">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1533">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1553">
              <SourceParameter reference="Parameter_4754"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_145" name="MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_145">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Same kinetics as other c-raf activated forms. See Force et al PNAS 91 1270-1274 1994. k1 = 1.1e-6, k2 = .42, k3 = 1.05 raise k1 to 5.5e-6
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_119" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_120" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_122" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4753" name="k1" value="9.4284e-12"/>
          <Constant key="Parameter_4752" name="k2" value="1.2e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_167" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1590">
              <SourceParameter reference="Metabolite_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1591">
              <SourceParameter reference="Metabolite_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1592">
              <SourceParameter reference="Metabolite_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1593">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1594">
              <SourceParameter reference="Parameter_4753"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1595">
              <SourceParameter reference="Parameter_4752"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_146" name="MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_146">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_122" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_116" stoichiometry="1"/>
          <Product metabolite="Metabolite_120" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4751" name="k3" value="3e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_168" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1588">
              <SourceParameter reference="Metabolite_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1551">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1571">
              <SourceParameter reference="Parameter_4751"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_147" name="MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_147">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    The original kinetics have been modified to obey the k2 = 4 * k3 rule, while keeping kcat and Km fixed. As noted in the NOTES, the only constraining data point is the time course of MAPK dephosphorylation, which this model satisfies. It would be nice to have more accurate estimates of rate consts and MKP-1 levels from the literature. Effective Km : 67 nM kcat = 1.43 umol/min/mg
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4750" name="k1" value="2.85714e-12"/>
          <Constant key="Parameter_4749" name="k2" value="1.6e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_169" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1608">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1609">
              <SourceParameter reference="Metabolite_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1610">
              <SourceParameter reference="Metabolite_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1611">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1612">
              <SourceParameter reference="Parameter_4750"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1613">
              <SourceParameter reference="Parameter_4749"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_148" name="MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_148">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
          <Product metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4748" name="k3" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_170" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1606">
              <SourceParameter reference="Metabolite_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1569">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1589">
              <SourceParameter reference="Parameter_4748"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_149" name="MKP_minus_1_slash_MKP1_minus_thr_minus_deph_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_149">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    See MKP1-tyr-deph
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_101" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4747" name="k1" value="2.85714e-12"/>
          <Constant key="Parameter_4746" name="k2" value="1.6e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_171" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1626">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1627">
              <SourceParameter reference="Metabolite_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1628">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1629">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1630">
              <SourceParameter reference="Parameter_4747"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1631">
              <SourceParameter reference="Parameter_4746"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_150" name="MKP_minus_1_slash_MKP1_minus_thr_minus_deph_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_150">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
          <Product metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4745" name="k3" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_172" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1624">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1587">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1607">
              <SourceParameter reference="Parameter_4745"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_151" name="PPhosphatase2A_slash_craf_minus_deph_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_151">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    See parent PPhosphatase2A for parms
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4744" name="k1" value="1.9161e-12"/>
          <Constant key="Parameter_4743" name="k2" value="2.4e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_173" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1644">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1645">
              <SourceParameter reference="Metabolite_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1646">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1647">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1648">
              <SourceParameter reference="Parameter_4744"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1649">
              <SourceParameter reference="Parameter_4743"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_152" name="PPhosphatase2A_slash_craf_minus_deph_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_152">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_110" stoichiometry="1"/>
          <Product metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4742" name="k3" value="6e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_174" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1642">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1605">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1625">
              <SourceParameter reference="Parameter_4742"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_153" name="PPhosphatase2A_slash_MAPKK_minus_deph_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_153">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    See: Kyriakis et al Nature 358 pp 417-421 1992 Ahn et al Curr Op Cell Biol 4:992-999 1992 for this pathway. See parent PPhosphatase2A for parms.
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_116" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_128" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4741" name="k1" value="1.9161e-12"/>
          <Constant key="Parameter_4740" name="k2" value="2.4e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_175" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1662">
              <SourceParameter reference="Metabolite_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1663">
              <SourceParameter reference="Metabolite_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1664">
              <SourceParameter reference="Metabolite_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1665">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1666">
              <SourceParameter reference="Parameter_4741"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1667">
              <SourceParameter reference="Parameter_4740"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_154" name="PPhosphatase2A_slash_MAPKK_minus_deph_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_154">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_128" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_119" stoichiometry="1"/>
          <Product metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4739" name="k3" value="6e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_176" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1660">
              <SourceParameter reference="Metabolite_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1623">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1643">
              <SourceParameter reference="Parameter_4739"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_155" name="PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_155">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_119" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4738" name="k1" value="1.9161e-12"/>
          <Constant key="Parameter_4737" name="k2" value="2.4e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_177" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1680">
              <SourceParameter reference="Metabolite_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1681">
              <SourceParameter reference="Metabolite_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1682">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1683">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1684">
              <SourceParameter reference="Parameter_4738"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1685">
              <SourceParameter reference="Parameter_4737"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_156" name="PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_156">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_112" stoichiometry="1"/>
          <Product metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4736" name="k3" value="6e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_178" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1678">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1641">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1661">
              <SourceParameter reference="Parameter_4736"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_157" name="PPhosphatase2A_slash_craf_star_star_minus_deph_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_157">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Ueki et al JBC 269(22) pp 15756-15761 1994 show hyperphosphorylation of craf, so this is there to dephosphorylate it. Identity of phosphatase is not known to me, but it may be PP2A like the rest, so I have made it so.
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_114" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4735" name="k1" value="1.9161e-12"/>
          <Constant key="Parameter_4734" name="k2" value="2.4e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_179" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1698">
              <SourceParameter reference="Metabolite_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1699">
              <SourceParameter reference="Metabolite_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1700">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1701">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1702">
              <SourceParameter reference="Parameter_4735"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1703">
              <SourceParameter reference="Parameter_4734"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_158" name="PPhosphatase2A_slash_craf_star_star_minus_deph_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_158">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_111" stoichiometry="1"/>
          <Product metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4733" name="k3" value="6e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_180" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1696">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1659">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1679">
              <SourceParameter reference="Parameter_4733"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_159" name="Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_159">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_130" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4732" name="k1" value="9.9e-15"/>
          <Constant key="Parameter_4731" name="k2" value="8e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_181" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1716">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1717">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1718">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1719">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1720">
              <SourceParameter reference="Parameter_4732"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1721">
              <SourceParameter reference="Parameter_4731"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_160" name="Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_160">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_134" stoichiometry="1"/>
          <Product metabolite="Metabolite_130" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4730" name="k3" value="2e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_182" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1714">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1677">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1697">
              <SourceParameter reference="Parameter_4730"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_161" name="Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_161">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Kinetics same as GEF-bg-act-ras
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_132" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4729" name="k1" value="1.98e-13"/>
          <Constant key="Parameter_4728" name="k2" value="8e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_183" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1734">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1735">
              <SourceParameter reference="Metabolite_132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1736">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1737">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1738">
              <SourceParameter reference="Parameter_4729"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1739">
              <SourceParameter reference="Parameter_4728"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_162" name="Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_162">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_134" stoichiometry="1"/>
          <Product metabolite="Metabolite_132" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4727" name="k3" value="2e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_184" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1732">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1695">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1715">
              <SourceParameter reference="Parameter_4727"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_163" name="Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_163">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    From Eccleston et al JBC 268(36)pp27012-19 get Kd &lt; 2uM, kcat - 10/sec From Martin et al Cell 63 843-849 1990 get Kd ~ 250 nM, kcat = 20/min I will go with the Eccleston figures as there are good error bars (10%). In general the values are reasonably close. k1 = 1.666e-3/sec, k2 = 1000/sec, k3 = 10/sec (note k3 is rate-limiting) 5 Nov 2002: Changed ratio term to 4 from 100. Now we have k1=8.25e-5; k2=40, k3=10. k3 is still rate-limiting.
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_134" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_138" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4726" name="k1" value="4.94856e-11"/>
          <Constant key="Parameter_4725" name="k2" value="4e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_185" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1752">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1753">
              <SourceParameter reference="Metabolite_138"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1754">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1755">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1756">
              <SourceParameter reference="Parameter_4726"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1757">
              <SourceParameter reference="Parameter_4725"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_164" name="Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_164">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_138" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_135" stoichiometry="1"/>
          <Product metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4724" name="k3" value="1e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_186" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1733">
              <SourceParameter reference="Metabolite_138"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1750">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1713">
              <SourceParameter reference="Parameter_4724"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_165" name="Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_165">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
	    Kinetics same as GEF-bg_act-ras
          </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4723" name="k1" value="1.98e-12"/>
          <Constant key="Parameter_4722" name="k2" value="8e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_187" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1770">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1771">
              <SourceParameter reference="Metabolite_140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1772">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1773">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1774">
              <SourceParameter reference="Parameter_4723"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1775">
              <SourceParameter reference="Parameter_4722"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_166" name="Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_166">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_134" stoichiometry="1"/>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4721" name="k3" value="2e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_188" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1751">
              <SourceParameter reference="Metabolite_140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1768">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1731">
              <SourceParameter reference="Parameter_4721"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_167" name="Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_167">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_142" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4720" name="k1" value="1.98e-12"/>
          <Constant key="Parameter_4719" name="k2" value="8e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_189" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1788">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1789">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1790">
              <SourceParameter reference="Metabolite_142"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1791">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1792">
              <SourceParameter reference="Parameter_4720"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1793">
              <SourceParameter reference="Parameter_4719"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_168" name="Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_168">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_142" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_134" stoichiometry="1"/>
          <Product metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4718" name="k3" value="2e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_190" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1786">
              <SourceParameter reference="Metabolite_142"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1749">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1769">
              <SourceParameter reference="Parameter_4718"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_169" name="Basal_Translation_slash_basal_syn_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_169">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_178" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_159" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_160" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4717" name="k1" value="1.81818e-12"/>
          <Constant key="Parameter_4716" name="k2" value="8e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_4717"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_178"/>
              <SourceParameter reference="Metabolite_159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4716"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_160"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_170" name="Basal_Translation_slash_basal_syn_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_170">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_160" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_95" stoichiometry="1"/>
          <Product metabolite="Metabolite_159" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4715" name="k1" value="2e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4715"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_160"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_171" name="Basal_Translation_slash_rad_basal_syn_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_171">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_162" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_159" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_161" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4714" name="k1" value="1.81818e-12"/>
          <Constant key="Parameter_4713" name="k2" value="8e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_4714"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_162"/>
              <SourceParameter reference="Metabolite_159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4713"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_161"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_172" name="Basal_Translation_slash_rad_basal_syn_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_172">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_161" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_95" stoichiometry="1"/>
          <Product metabolite="Metabolite_159" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4712" name="k1" value="2e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4712"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_161"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_173" name="num_40S_basal_slash_basal_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_173">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_176" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_166" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_167" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4711" name="k1" value="1.99998e-12"/>
          <Constant key="Parameter_4710" name="k2" value="4e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_4711"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_176"/>
              <SourceParameter reference="Metabolite_166"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4710"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_167"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_174" name="num_40S_basal_slash_basal_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_174">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_167" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
          <Product metabolite="Metabolite_166" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4709" name="k1" value="1e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4709"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_167"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_175" name="PTEN_slash_PIP3_dephosp_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_175">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_169" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_170" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4708" name="k1" value="3.43741e-10"/>
          <Constant key="Parameter_4707" name="k2" value="2.2e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_4708"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_2"/>
              <SourceParameter reference="Metabolite_169"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4707"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_170"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_176" name="PTEN_slash_PIP3_dephosp_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_176">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_170" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_169" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4706" name="k3" value="5.5e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_191" unitType="Default" scalingCompartment="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_15_sbc_]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1825">
              <SourceParameter reference="Metabolite_170"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1826">
              <SourceParameter reference="Compartment_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1827">
              <SourceParameter reference="Parameter_4706"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_177" name="Ras_minus_GTP_PI3K_slash_PIP2_phospho_Ras_minus_GTP_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_177">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_175" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_172" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4705" name="k1" value="4.99998e-12"/>
          <Constant key="Parameter_4704" name="k2" value="1.6e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_4705"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_175"/>
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4704"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_172"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_178" name="Ras_minus_GTP_PI3K_slash_PIP2_phospho_Ras_minus_GTP_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_178">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_172" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4703" name="k1" value="4e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4703"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_172"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="Ca switch off 1" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-21T12:23:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=mTOR_pathway,Reference=Time> == 6301
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ca]" targetKey="Metabolite_86">
            <Expression>
              0.08
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="Calcium entry 1" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-21T12:23:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=mTOR_pathway,Reference=Time> == 6300
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ca]" targetKey="Metabolite_86">
            <Expression>
              10
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_2" name="Calcium entry 2" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_2">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T12:27:43Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=mTOR_pathway,Reference=Time> == 6600
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ca]" targetKey="Metabolite_86">
            <Expression>
              10
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_3" name="Calcium entry 3" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_3">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T12:27:42Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=mTOR_pathway,Reference=Time> == 6900
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ca]" targetKey="Metabolite_86">
            <Expression>
              10
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_4" name="Ca switch off 2" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-21T12:27:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=mTOR_pathway,Reference=Time> == 6601
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ca]" targetKey="Metabolite_86">
            <Expression>
              0.08
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_5" name="Ca switch off 3" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-21T12:27:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=mTOR_pathway,Reference=Time> == 6901
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ca]" targetKey="Metabolite_86">
            <Expression>
              0.08
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_6" name="BDNF entry 1" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-21T12:00:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=mTOR_pathway,Reference=Time> == 6300
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[BDNF]" targetKey="Metabolite_173">
            <Expression>
              0.0037
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_7" name="BDNF entry 2" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_7">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T12:27:41Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=mTOR_pathway,Reference=Time> == 6600
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[BDNF]" targetKey="Metabolite_173">
            <Expression>
              0.0037
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_8" name="BDNF entry 3" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_8">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T12:27:40Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=mTOR_pathway,Reference=Time> == 6900
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[BDNF]" targetKey="Metabolite_173">
            <Expression>
              0.0037
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_9" name="BDNF switch off 1" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-21T12:00:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=mTOR_pathway,Reference=Time> == 6305
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[BDNF]" targetKey="Metabolite_173">
            <Expression>
              5E-05
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_10" name="BDNF switch off 2" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_10">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T12:27:40Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=mTOR_pathway,Reference=Time> == 6605
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[BDNF]" targetKey="Metabolite_173">
            <Expression>
              5e-05
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_11" name="BDNF switch off 3" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_11">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T12:27:39Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=mTOR_pathway,Reference=Time> == 6905
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[BDNF]" targetKey="Metabolite_173">
            <Expression>
              5e-05
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=mTOR_pathway" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[default_compartment]" value="1.0000000000000001e-18" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_1_sbc_]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_2_sbc_]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_3_sbc_]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_4_sbc_]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_5_sbc_]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_6_sbc_]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_7_sbc_]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_8_sbc_]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_9_sbc_]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_10_sbc_]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_11_sbc_]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_12_sbc_]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_13_sbc_]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_14_sbc_]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_15_sbc_]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_16_sbc_]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PLC_g]" value="60221.40857" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PLC_g_star]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PIP3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_2_sbc_],Vector=Metabolites[PDK1]" value="602214.08569999994" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_2_sbc_],Vector=Metabolites[PDK1_slash_S6K_phospho_slash_S6K_phospho_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A]" value="90332.112855000029" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_dephos_clus_S6K_slash_dephos_clus_S6K_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_dephos_S6K_slash_dephos_S6K_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_dephosp_S6K_slash_dephosp_S6K_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_Dephos_AKTser473_slash_Dephos_AKTser473_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_Dephosph_AKTthr308_slash_Dephosph_AKTthr308_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_eEF2thr_minus_56_dephospho_slash_eEF2thr_minus_56_dephospho_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_PP2A_4E_minus_BP_star_star_slash_PP2A_4E_minus_BP_star_star_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_PP2A_4E_minus_BP_star_slash_PP2A_4E_minus_BP_star_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_PP2A_4E_minus_BP_slash_PP2A_4E_minus_BP_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_PP2A_4EBP_slash_PP2A_4EBP_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_AKT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_PDK1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_slash_phospho_thr308_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_PDK2]" value="1806.6422570999998" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_slash_phosp_AKTser473_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_AKT_thr308]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_AKT_minus_t308_s473]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_slash_TSC2_phospho_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_AKT]" value="120446.83203440097" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_TSC1_minus_TSC2_star]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TrKB_mod_slash_TrKB]" value="150553.52142499998" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TrKB_mod_slash_BDNF_TrkB2_clx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TrKB_mod_slash_BDNF_TrkB_clx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TrKB_mod_slash_BDNF_TrkB2_star_clx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_slash_PLC_g_phospho_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_slash_Shc_phospho_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_slash_Phospho_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PI3K_mod_slash_PI3K]" value="60221.40857" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PI3K_mod_slash_PI3K_basal]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PI3K_mod_slash_PI3K_basal_slash_basal_phosp_slash_basal_phosp_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PI3K_mod_slash_Shc]" value="301107.04284999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_2_sbc_],Vector=Metabolites[PI3K_mod_slash_Shc_star_Grb2_clx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_1_sbc_],Vector=Metabolites[PI3K_mod_slash_Gab1]" value="421549.85999000003" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PI3K_mod_slash_Shc_star_Grb2_minus_Gab1_clx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_4_sbc_],Vector=Metabolites[PLCg_basal]" value="421.54985998999996" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_4_sbc_],Vector=Metabolites[PLCg_basal_slash_PLC_g_phospho_slash_PLC_g_phospho_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TSC1_minus_TSC2]" value="602214.08569999994" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TSC1_minus_TSC2_slash_TSC2phospho_slash_TSC2phospho_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[eIF4E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Rheb_minus_GTP]" value="602214.08569999994" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_6_sbc_],Vector=Metabolites[Rheb_minus_GDP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[mTOR_model_slash_TOR_minus_clx]" value="361328.45142000011" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TOR_Rheb_minus_GTP_clx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_slash_S6K_phospho_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_slash_TOR_4E_minus_BP_phospho_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_star_slash_TOR_4E_minus_BP_star_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6Kinase_slash_S6K_star]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6Kinase_slash_S6K]" value="752767.60712499998" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6Kinase_slash_S6K_thr_minus_412]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_slash_S6_phos_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_4E_minus_BP_mod_slash_4E_minus_BP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_4E_minus_BP_mod_slash_4E_minus_BP_thr37_46_s65]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_4E_minus_BP_mod_slash_eIF4E_minus_BP]" value="120442.81714" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_4E_minus_BP_mod_slash_eIF4E_minus_BP_thr37_46]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_4E_minus_BP_mod_slash_eIF4E_4E_minus_BP_t37_46_s65]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_40S]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[eIF4G_minus_A_clx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[eIF4A]" value="120444.82455374267" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[eIF4G]" value="24088.964910748549" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[eIF4F]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[mRNA]" value="48176.92611462577" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PPhosphatase2A_slash_craf_star_star_minus_deph_slash_craf_star_star_minus_deph_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[eIF4F_minus_mRNA_clx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_43S_complex_slash_Q_dot_R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_43S_complex_slash_RM]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_43S_complex_slash_Quaternary_clx]" value="28304.062027900003" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6K_thr_minus_252]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6K_thr_minus_252_slash_camkIII_phospho_slash_camkIII_phospho_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6K_thr_minus_252_slash_S6_phospho_slash_S6_phospho_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaM_minus_Ca4]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaMKIII]" value="36132.845142000013" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaMKIII_CaM_minus_Ca4]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaMKIII_CaM_minus_Ca4_slash_phospho_slash_phospho_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[eEF2]" value="301107.04284999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[eEFthr_minus_56]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaM_slash_CaM]" value="12044281.714" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaM_slash_CaM_minus_Ca3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaM_slash_CaM_minus_Ca2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaM_slash_CaM_minus_Ca]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ca]" value="48177.126856000024" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaMKIII_basal]" value="6.0221408570000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaMKIII_basal_slash_eEF2thr56_basal_slash_eEF2thr56_basal_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaMKIII_star]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6K_basal]" value="602.2140857000004" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6K_basal_slash_CaMKIII_basal_slash_CaMKIII_basal_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Translation_clx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Translation_clx_slash_pro_syn_slash_pro_syn_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Translation_clx_slash_rad_pro_syn_slash_rad_pro_syn_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[peptide]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[degraded_protein]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[protein]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_80S_ribos_clx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Grb2]" value="602214.08569999994" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Shc_star]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_star]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_star_slash_cluster_phospho_S6K_slash_cluster_phospho_S6K_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_star_slash_MAPK_star_minus_feedback_slash_MAPK_star_minus_feedback_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_star_slash_phosph_Sos_slash_phosph_Sos_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_star_slash_MAPK_4E_minus_BP_star_star_slash_MAPK_4E_minus_BP_star_star_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_star_slash_MAPK_4E_minus_BP_phospho_slash_MAPK_4E_minus_BP_phospho_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_minus_active_slash_PKC_minus_act_minus_raf_slash_PKC_minus_act_minus_raf_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_minus_active_slash_PKC_minus_inact_minus_GAP_slash_PKC_minus_inact_minus_GAP_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_minus_active_slash_PKC_minus_act_minus_GEF_slash_PKC_minus_act_minus_GEF_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_craf_minus_1]" value="301107.04284999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_craf_minus_1_star]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_MAPKK]" value="301107.04284999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_MAPK]" value="2167970.7085199999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_craf_minus_1_star_star]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_MAPK_minus_tyr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_MAPKK_star]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_MAPKK_star_slash_MAPKKtyr_slash_MAPKKtyr_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_MAPKK_star_slash_MAPKKthr_slash_MAPKKthr_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_MAPKK_minus_ser]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_Raf_star_minus_GTP_minus_Ras]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_slash_Raf_star_minus_GTP_minus_Ras_dot_1_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_slash_Raf_star_minus_GTP_minus_Ras_dot_2_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MKP_minus_1]" value="12044.281714000006" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_slash_MKP1_minus_tyr_minus_deph_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MKP_minus_1_slash_MKP1_minus_thr_minus_deph_slash_MKP1_minus_thr_minus_deph_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PPhosphatase2A]" value="602214.08569999994" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PPhosphatase2A_slash_craf_minus_deph_slash_craf_minus_deph_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PPhosphatase2A_slash_MAPKK_minus_deph_slash_MAPKK_minus_deph_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_slash_MAPKK_minus_deph_minus_ser_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_inact_minus_GEF]" value="60221.40857" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_slash_basal_GEF_activity_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_GEF_star]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_slash_GEF_star_minus_act_minus_ras_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_GTP_minus_Ras]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_GDP_minus_Ras]" value="301107.04284999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_GAP_star]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_GAP]" value="6022.1408570000031" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_slash_GAP_minus_inact_minus_ras_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_CaM_minus_GEF]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_slash_CaM_minus_GEF_minus_act_minus_ras_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Shc_star_dot_Sos_dot_Grb2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_slash_Sos_dot_Ras_GEF_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Sos_slash_Sos_star_dot_Grb2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Sos_slash_Sos_dot_Grb2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Sos_slash_Sos_star]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Sos_slash_Sos]" value="60221.40857" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_43Scomplex]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_Ca]" value="2.2407382438754153e-11" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_DAG_minus_AA_star]" value="2.9590792791012349e-12" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_Ca_minus_AA_star]" value="1.0538746499750002e-10" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_Ca_minus_memb_star]" value="8.3683669348872003e-12" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_DAG_minus_memb_star]" value="5.6819902675937855e-15" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_basal_star]" value="12044.281714000006" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_AA_star]" value="1.0920148754026647e-11" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_Ca_minus_DAG]" value="5.096638176293385e-17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_DAG]" value="6.9918059039913029e-11" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_DAG_minus_AA]" value="1.5168769128640144e-13" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_cytosolic]" value="602214.08569999994" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_10_sbc_],Vector=Metabolites[Basal_Translation]" value="120.44281714000002" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_10_sbc_],Vector=Metabolites[Basal_Translation_slash_basal_syn_slash_basal_syn_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_10_sbc_],Vector=Metabolites[Basal_Translation_slash_rad_basal_syn_slash_rad_basal_syn_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_13_sbc_],Vector=Metabolites[rad_AA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_13_sbc_],Vector=Metabolites[rad_peptide]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_13_sbc_],Vector=Metabolites[rad_protein]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_13_sbc_],Vector=Metabolites[rad_deg_pro]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_14_sbc_],Vector=Metabolites[num_40S_basal]" value="60.221408570000008" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_14_sbc_],Vector=Metabolites[num_40S_basal_slash_basal_slash_basal_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_11_sbc_],Vector=Metabolites[num_4E_minus_BP_t37_46]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_15_sbc_],Vector=Metabolites[PTEN]" value="162597.803139" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_15_sbc_],Vector=Metabolites[PTEN_slash_PIP3_dephosp_slash_PIP3_dephosp_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_16_sbc_],Vector=Metabolites[Ras_minus_GTP_PI3K]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_16_sbc_],Vector=Metabolites[Ras_minus_GTP_PI3K_slash_PIP2_phospho_Ras_minus_GTP_slash_PIP2_phospho_Ras_minus_GTP_cplx]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[BDNF]" value="30.110704285000004" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TrKB_mod_slash_Int_BDNF_TrKB2_star_clx]" value="150553.52142499998" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PI3K_mod_slash_PIP2]" value="4215498.5998999998" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6Kinase_slash_40S_inact]" value="12044.281714000006" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_60S_R]" value="40950.557827600001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AA]" value="60221.40857" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[DAG]" value="6624354.9426999995" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Arachidonic_Acid]" value="3011070.4284999999" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_minus_active]" value="12044.281714000133" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_bind_AKT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_bind_AKT],ParameterGroup=Parameters,Parameter=kf" value="4.4998799930001998e-11" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_bind_AKT],ParameterGroup=Parameters,Parameter=kb" value="8.8997033333333299e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_bind_PDK1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_bind_PDK1],ParameterGroup=Parameters,Parameter=k1" value="6.9999666600000003e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_bind_PDK1],ParameterGroup=Parameters,Parameter=k2" value="9.8000000000000007e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_TSC1_minus_2_dephospho]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_TSC1_minus_2_dephospho],ParameterGroup=Parameters,Parameter=kf" value="1e-14" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_TSC1_minus_2_dephospho],ParameterGroup=Parameters,Parameter=kb" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_Autophos_TrKB]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_Autophos_TrKB],ParameterGroup=Parameters,Parameter=kf" value="1.9999333333333299e-14" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_Autophos_TrKB],ParameterGroup=Parameters,Parameter=kb" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_Dimeriz_TrKB]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_Dimeriz_TrKB],ParameterGroup=Parameters,Parameter=kf" value="9.9988666844453305e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_Dimeriz_TrKB],ParameterGroup=Parameters,Parameter=kb" value="1.9999333333333299e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_Ligand_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_Ligand_binding],ParameterGroup=Parameters,Parameter=kf" value="9.9997999422240004e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_Ligand_binding],ParameterGroup=Parameters,Parameter=kb" value="4.99966666666667e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_PLC_g_star_dephospho]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_PLC_g_star_dephospho],ParameterGroup=Parameters,Parameter=kf" value="7.0000000000000005e-14" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_PLC_g_star_dephospho],ParameterGroup=Parameters,Parameter=kb" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[eIF4F_mRNA_clx]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[eIF4F_mRNA_clx],ParameterGroup=Parameters,Parameter=kf" value="1.9999733325555701e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[eIF4F_mRNA_clx],ParameterGroup=Parameters,Parameter=kb" value="7.7e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_LR_Internalize]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_LR_Internalize],ParameterGroup=Parameters,Parameter=kf" value="9.9996666666666699e-15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_LR_Internalize],ParameterGroup=Parameters,Parameter=kb" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_LR_cycling]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_LR_cycling],ParameterGroup=Parameters,Parameter=kf" value="1.0000000000000001e-15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_LR_cycling],ParameterGroup=Parameters,Parameter=kb" value="9.9993333333333299e-16" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_Shc_star_dephospho]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_Shc_star_dephospho],ParameterGroup=Parameters,Parameter=kf" value="2.0000000000000001e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_Shc_star_dephospho],ParameterGroup=Parameters,Parameter=kb" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_Grb2_bind_Shc]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_Grb2_bind_Shc],ParameterGroup=Parameters,Parameter=k1" value="1.00002e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_Grb2_bind_Shc],ParameterGroup=Parameters,Parameter=k2" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_bind_Gab1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_bind_Gab1],ParameterGroup=Parameters,Parameter=k1" value="2.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_bind_Gab1],ParameterGroup=Parameters,Parameter=k2" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_PI3K_act]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_PI3K_act],ParameterGroup=Parameters,Parameter=kf" value="4.9999933279999998e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_PI3K_act],ParameterGroup=Parameters,Parameter=kb" value="7.9997333333333296e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_basal_PI3K_act]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_basal_PI3K_act],ParameterGroup=Parameters,Parameter=kf" value="6.7997733333333298e-16" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_basal_PI3K_act],ParameterGroup=Parameters,Parameter=kb" value="4.5e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[mTOR_model_slash_Rheb_minus_GTP_bind_TORclx]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[mTOR_model_slash_Rheb_minus_GTP_bind_TORclx],ParameterGroup=Parameters,Parameter=kf" value="6.0000000000000003e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[mTOR_model_slash_Rheb_minus_GTP_bind_TORclx],ParameterGroup=Parameters,Parameter=kb" value="3.0000000000000001e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6Kinase_slash_S6_dephosph]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6Kinase_slash_S6_dephosph],ParameterGroup=Parameters,Parameter=kf" value="1e-14" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6Kinase_slash_S6_dephosph],ParameterGroup=Parameters,Parameter=kb" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_4E_minus_BP_mod_slash_eIF4E_bind_BP2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_4E_minus_BP_mod_slash_eIF4E_bind_BP2],ParameterGroup=Parameters,Parameter=kf" value="4.9998966669999998e-11" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_4E_minus_BP_mod_slash_eIF4E_bind_BP2],ParameterGroup=Parameters,Parameter=kb" value="1.4999999999999999e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_4E_minus_BP_mod_slash_eIF4E_minus_BP2_disso]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_4E_minus_BP_mod_slash_eIF4E_minus_BP2_disso],ParameterGroup=Parameters,Parameter=kf" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_4E_minus_BP_mod_slash_eIF4E_minus_BP2_disso],ParameterGroup=Parameters,Parameter=kb" value="1.000003333e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[eIF4F_clx]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[eIF4F_clx],ParameterGroup=Parameters,Parameter=kf" value="2.9999599988333498e-11" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[eIF4F_clx],ParameterGroup=Parameters,Parameter=kb" value="9.9998333333333296e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[eIF4G_A_clx]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[eIF4G_A_clx],ParameterGroup=Parameters,Parameter=kf" value="2.9999599988333502e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[eIF4G_A_clx],ParameterGroup=Parameters,Parameter=kb" value="9.9998333333333298e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_43S_complex_slash_Q_binds_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_43S_complex_slash_Q_binds_R],ParameterGroup=Parameters,Parameter=kf" value="4.7999999999999997e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_43S_complex_slash_Q_binds_R],ParameterGroup=Parameters,Parameter=kb" value="4.9999999999999999e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_43S_complex_slash_QR_binds_M]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_43S_complex_slash_QR_binds_M],ParameterGroup=Parameters,Parameter=kf" value="4.9000199999999998e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_43S_complex_slash_QR_binds_M],ParameterGroup=Parameters,Parameter=kb" value="4.4999999999999998e-15" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_43S_complex_slash_R_binds_M]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_43S_complex_slash_R_binds_M],ParameterGroup=Parameters,Parameter=kf" value="1.27998e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_43S_complex_slash_R_binds_M],ParameterGroup=Parameters,Parameter=kb" value="7.1899999999999997e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_43S_complex_slash_RM_binds_Q]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_43S_complex_slash_RM_binds_Q],ParameterGroup=Parameters,Parameter=kf" value="9.7998000000000006e-14" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_43S_complex_slash_RM_binds_Q],ParameterGroup=Parameters,Parameter=kb" value="1.69e-15" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaM_slash_CaM_minus_Ca3_minus_bind_minus_Ca]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaM_slash_CaM_minus_Ca3_minus_bind_minus_Ca],ParameterGroup=Parameters,Parameter=kf" value="4.6500599999999997e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaM_slash_CaM_minus_Ca3_minus_bind_minus_Ca],ParameterGroup=Parameters,Parameter=kb" value="9.9999999999999994e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaM_slash_CaM_minus_bind_minus_Ca]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaM_slash_CaM_minus_bind_minus_Ca],ParameterGroup=Parameters,Parameter=kf" value="8.4846000000000004e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaM_slash_CaM_minus_bind_minus_Ca],ParameterGroup=Parameters,Parameter=kb" value="8.4853000000000006e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaM_slash_CaM_minus_Ca2_minus_bind_minus_Ca]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaM_slash_CaM_minus_Ca2_minus_bind_minus_Ca],ParameterGroup=Parameters,Parameter=kf" value="3.6000599999999999e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaM_slash_CaM_minus_Ca2_minus_bind_minus_Ca],ParameterGroup=Parameters,Parameter=kb" value="9.9999999999999994e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaM_slash_CaM_minus_Ca_minus_bind_minus_Ca]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaM_slash_CaM_minus_Ca_minus_bind_minus_Ca],ParameterGroup=Parameters,Parameter=kf" value="8.4846000000000004e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaM_slash_CaM_minus_Ca_minus_bind_minus_Ca],ParameterGroup=Parameters,Parameter=kb" value="8.4853000000000006e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[dephosp_CaMKIII]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[dephosp_CaMKIII],ParameterGroup=Parameters,Parameter=kf" value="7.0000000000000005e-14" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[dephosp_CaMKIII],ParameterGroup=Parameters,Parameter=kb" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[elongation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[elongation],ParameterGroup=Parameters,Parameter=kf" value="4.0000200000000003e-11" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[elongation],ParameterGroup=Parameters,Parameter=kb" value="9.9999999999999994e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[activation],ParameterGroup=Parameters,Parameter=kf" value="1.00002e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[activation],ParameterGroup=Parameters,Parameter=kb" value="9e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_minus_act_minus_craf]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_minus_act_minus_craf],ParameterGroup=Parameters,Parameter=kf" value="9.9995999999999995e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_minus_act_minus_craf],ParameterGroup=Parameters,Parameter=kb" value="4.9999999999999999e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_dephosph_minus_GEF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_dephosph_minus_GEF],ParameterGroup=Parameters,Parameter=kf" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_dephosph_minus_GEF],ParameterGroup=Parameters,Parameter=kb" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_Ras_minus_intrinsic_minus_GTPase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_Ras_minus_intrinsic_minus_GTPase],ParameterGroup=Parameters,Parameter=kf" value="9.9999999999999998e-17" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_Ras_minus_intrinsic_minus_GTPase],ParameterGroup=Parameters,Parameter=kb" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_dephosph_minus_GAP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_dephosph_minus_GAP],ParameterGroup=Parameters,Parameter=kf" value="1e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_dephosph_minus_GAP],ParameterGroup=Parameters,Parameter=kb" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_CaM_minus_bind_minus_GEF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_CaM_minus_bind_minus_GEF],ParameterGroup=Parameters,Parameter=kf" value="1.9999799999999999e-10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_CaM_minus_bind_minus_GEF],ParameterGroup=Parameters,Parameter=kb" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Sos_slash_Shc_bind_Sos_dot_Grb2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Sos_slash_Shc_bind_Sos_dot_Grb2],ParameterGroup=Parameters,Parameter=kf" value="4.9997400000000003e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Sos_slash_Shc_bind_Sos_dot_Grb2],ParameterGroup=Parameters,Parameter=kb" value="1e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Sos_slash_Grb2_bind_Sos_star]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Sos_slash_Grb2_bind_Sos_star],ParameterGroup=Parameters,Parameter=kf" value="2.5000199999999999e-14" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Sos_slash_Grb2_bind_Sos_star],ParameterGroup=Parameters,Parameter=kb" value="1.6799999999999998e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Sos_slash_dephosph_Sos]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Sos_slash_dephosph_Sos],ParameterGroup=Parameters,Parameter=kf" value="1.0000000000000001e-15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Sos_slash_dephosph_Sos],ParameterGroup=Parameters,Parameter=kb" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Sos_slash_Grb2_bind_Sos]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Sos_slash_Grb2_bind_Sos],ParameterGroup=Parameters,Parameter=kf" value="2.5000199999999999e-14" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Sos_slash_Grb2_bind_Sos],ParameterGroup=Parameters,Parameter=kb" value="1.6799999999999998e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaMKIII_bind_CaM_minus_Ca4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaMKIII_bind_CaM_minus_Ca4],ParameterGroup=Parameters,Parameter=kf" value="9.8999999999999994e-11" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaMKIII_bind_CaM_minus_Ca4],ParameterGroup=Parameters,Parameter=kb" value="8.9999999999999995e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[pep_elongation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[pep_elongation],ParameterGroup=Parameters,Parameter=kf" value="1e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[pep_elongation],ParameterGroup=Parameters,Parameter=kb" value="1.0000000000000001e-15" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[protein_deg]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[protein_deg],ParameterGroup=Parameters,Parameter=kf" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[protein_deg],ParameterGroup=Parameters,Parameter=kb" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[GDP_to_GTP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[GDP_to_GTP],ParameterGroup=Parameters,Parameter=k1" value="2.0000000000000001e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[GDP_to_GTP],ParameterGroup=Parameters,Parameter=k2" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_act_minus_by_minus_Ca]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_act_minus_by_minus_Ca],ParameterGroup=Parameters,Parameter=kf" value="5.9999999999999997e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_act_minus_by_minus_Ca],ParameterGroup=Parameters,Parameter=kb" value="4.9999999999999999e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_act_minus_by_minus_DAG]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_act_minus_by_minus_DAG],ParameterGroup=Parameters,Parameter=kf" value="7.9998000000000003e-15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_act_minus_by_minus_DAG],ParameterGroup=Parameters,Parameter=kb" value="8.6348000000000003e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_Ca_minus_to_minus_memb]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_Ca_minus_to_minus_memb],ParameterGroup=Parameters,Parameter=kf" value="1.2705000000000001e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_Ca_minus_to_minus_memb],ParameterGroup=Parameters,Parameter=kb" value="3.5026e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_DAG_minus_to_minus_memb]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_DAG_minus_to_minus_memb],ParameterGroup=Parameters,Parameter=kf" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_DAG_minus_to_minus_memb],ParameterGroup=Parameters,Parameter=kb" value="1e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_act_minus_by_minus_Ca_minus_AA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_act_minus_by_minus_Ca_minus_AA],ParameterGroup=Parameters,Parameter=kf" value="1.2e-15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_act_minus_by_minus_Ca_minus_AA],ParameterGroup=Parameters,Parameter=kb" value="1e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_act_minus_by_minus_DAG_minus_AA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_act_minus_by_minus_DAG_minus_AA],ParameterGroup=Parameters,Parameter=kf" value="2e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_act_minus_by_minus_DAG_minus_AA],ParameterGroup=Parameters,Parameter=kb" value="2.0000000000000001e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_basal_minus_act]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_basal_minus_act],ParameterGroup=Parameters,Parameter=kf" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_basal_minus_act],ParameterGroup=Parameters,Parameter=kb" value="5.0000000000000002e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_act_minus_by_minus_AA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_act_minus_by_minus_AA],ParameterGroup=Parameters,Parameter=kf" value="1.2e-16" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_act_minus_by_minus_AA],ParameterGroup=Parameters,Parameter=kb" value="1e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_n_minus_DAG]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_n_minus_DAG],ParameterGroup=Parameters,Parameter=kf" value="5.9999999999999999e-16" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_n_minus_DAG],ParameterGroup=Parameters,Parameter=kb" value="1e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_n_minus_DAG_minus_AA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_n_minus_DAG_minus_AA],ParameterGroup=Parameters,Parameter=kf" value="1.7999999999999999e-14" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_slash_PKC_minus_n_minus_DAG_minus_AA],ParameterGroup=Parameters,Parameter=kb" value="2e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[eIF4E_minus_BP_disso]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[eIF4E_minus_BP_disso],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[eIF4E_minus_BP_disso],ParameterGroup=Parameters,Parameter=k2" value="1.000003333e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[basal_S6K]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[basal_S6K],ParameterGroup=Parameters,Parameter=kf" value="1e-14" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[basal_S6K],ParameterGroup=Parameters,Parameter=kb" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[rad_pep_elongation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[rad_pep_elongation],ParameterGroup=Parameters,Parameter=kf" value="1e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[rad_pep_elongation],ParameterGroup=Parameters,Parameter=kb" value="1.0000000000000001e-15" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[rad_protein_deg]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[rad_protein_deg],ParameterGroup=Parameters,Parameter=kf" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[rad_protein_deg],ParameterGroup=Parameters,Parameter=kb" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[labelling]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[labelling],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[labelling],ParameterGroup=Parameters,Parameter=k2" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_bind_Ras_minus_GTP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_bind_Ras_minus_GTP],ParameterGroup=Parameters,Parameter=k1" value="1.7999399999999999e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_bind_Ras_minus_GTP],ParameterGroup=Parameters,Parameter=k2" value="4.9999999999999997e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PDK1_slash_S6K_phospho_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PDK1_slash_S6K_phospho_1],ParameterGroup=Parameters,Parameter=k1" value="4.9998133340000005e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PDK1_slash_S6K_phospho_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PDK1_slash_S6K_phospho_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PDK1_slash_S6K_phospho_2],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_dephos_clus_S6K_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_dephos_clus_S6K_1],ParameterGroup=Parameters,Parameter=k1" value="5.6815706080000005e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_dephos_clus_S6K_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_dephos_clus_S6K_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_dephos_clus_S6K_2],ParameterGroup=Parameters,Parameter=k3" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_dephos_S6K_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_dephos_S6K_1],ParameterGroup=Parameters,Parameter=k1" value="5.6815706080000005e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_dephos_S6K_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_dephos_S6K_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_dephos_S6K_2],ParameterGroup=Parameters,Parameter=k3" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_dephosp_S6K_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_dephosp_S6K_1],ParameterGroup=Parameters,Parameter=k1" value="5.6817600000000002e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_dephosp_S6K_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_dephosp_S6K_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_dephosp_S6K_2],ParameterGroup=Parameters,Parameter=k3" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_Dephos_AKTser473_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_Dephos_AKTser473_1],ParameterGroup=Parameters,Parameter=k1" value="1.875e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_Dephos_AKTser473_1],ParameterGroup=Parameters,Parameter=k2" value="7.2e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_Dephos_AKTser473_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_Dephos_AKTser473_2],ParameterGroup=Parameters,Parameter=k3" value="1.8e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_Dephosph_AKTthr308_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_Dephosph_AKTthr308_1],ParameterGroup=Parameters,Parameter=k1" value="1.8748775019999999e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_Dephosph_AKTthr308_1],ParameterGroup=Parameters,Parameter=k2" value="7.2e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_Dephosph_AKTthr308_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_Dephosph_AKTthr308_2],ParameterGroup=Parameters,Parameter=k3" value="1.8e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_eEF2thr_minus_56_dephospho_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_eEF2thr_minus_56_dephospho_1],ParameterGroup=Parameters,Parameter=k1" value="2.67036e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_eEF2thr_minus_56_dephospho_1],ParameterGroup=Parameters,Parameter=k2" value="1.8800000000000001e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_eEF2thr_minus_56_dephospho_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_eEF2thr_minus_56_dephospho_2],ParameterGroup=Parameters,Parameter=k3" value="4.7000000000000002e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4E_minus_BP_star_star_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4E_minus_BP_star_star_1],ParameterGroup=Parameters,Parameter=k1" value="5.6818199999999995e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4E_minus_BP_star_star_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4E_minus_BP_star_star_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4E_minus_BP_star_star_2],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4E_minus_BP_star_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4E_minus_BP_star_1],ParameterGroup=Parameters,Parameter=k1" value="5.6818199999999995e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4E_minus_BP_star_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4E_minus_BP_star_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4E_minus_BP_star_2],ParameterGroup=Parameters,Parameter=k3" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4E_minus_BP_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4E_minus_BP_1],ParameterGroup=Parameters,Parameter=k1" value="5.6816399999999996e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4E_minus_BP_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4E_minus_BP_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4E_minus_BP_2],ParameterGroup=Parameters,Parameter=k3" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4EBP_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4EBP_1],ParameterGroup=Parameters,Parameter=k1" value="5.6816399999999996e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4EBP_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4EBP_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PP2A_slash_PP2A_4EBP_2],ParameterGroup=Parameters,Parameter=k3" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_1],ParameterGroup=Parameters,Parameter=k1" value="1.249998332e-10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999998e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_2],ParameterGroup=Parameters,Parameter=k3" value="9.9999999999999994e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_1],ParameterGroup=Parameters,Parameter=k1" value="1.249938334e-10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_1],ParameterGroup=Parameters,Parameter=k2" value="7.9999999999999995e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_2],ParameterGroup=Parameters,Parameter=k3" value="1.9999999999999999e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_1],ParameterGroup=Parameters,Parameter=k1" value="2.91264e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_1],ParameterGroup=Parameters,Parameter=k2" value="2.4000000000000001e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_2],ParameterGroup=Parameters,Parameter=k3" value="6.0000000000000003e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_1],ParameterGroup=Parameters,Parameter=k1" value="8.3331222200000006e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_1],ParameterGroup=Parameters,Parameter=k2" value="1.9999333333333299e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_2],ParameterGroup=Parameters,Parameter=k3" value="4.9998333333333299e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_1],ParameterGroup=Parameters,Parameter=k1" value="1.800059996e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_1],ParameterGroup=Parameters,Parameter=k2" value="1.1999600000000001e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_2],ParameterGroup=Parameters,Parameter=k3" value="2.9999000000000002e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_1],ParameterGroup=Parameters,Parameter=k1" value="4.9999933279999998e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_1],ParameterGroup=Parameters,Parameter=k2" value="1.5999466666666701e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_2],ParameterGroup=Parameters,Parameter=k3" value="3.9998666666666704e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_PI3K_basal_slash_basal_phosp_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_PI3K_basal_slash_basal_phosp_1],ParameterGroup=Parameters,Parameter=k1" value="4.9999800000000003e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_PI3K_basal_slash_basal_phosp_1],ParameterGroup=Parameters,Parameter=k2" value="1.6e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_PI3K_basal_slash_basal_phosp_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PI3K_mod_slash_PI3K_basal_slash_basal_phosp_2],ParameterGroup=Parameters,Parameter=k3" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PLCg_basal_slash_PLC_g_phospho_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PLCg_basal_slash_PLC_g_phospho_1],ParameterGroup=Parameters,Parameter=k1" value="8.3334e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PLCg_basal_slash_PLC_g_phospho_1],ParameterGroup=Parameters,Parameter=k2" value="2e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PLCg_basal_slash_PLC_g_phospho_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PLCg_basal_slash_PLC_g_phospho_2],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999999e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TSC1_minus_TSC2_slash_TSC2phospho_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TSC1_minus_TSC2_slash_TSC2phospho_1],ParameterGroup=Parameters,Parameter=k1" value="3.3333599999999997e-10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TSC1_minus_TSC2_slash_TSC2phospho_1],ParameterGroup=Parameters,Parameter=k2" value="7.9999999999999995e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TSC1_minus_TSC2_slash_TSC2phospho_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TSC1_minus_TSC2_slash_TSC2phospho_2],ParameterGroup=Parameters,Parameter=k1" value="1.9999999999999999e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_1],ParameterGroup=Parameters,Parameter=k1" value="3.7499949959999999e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_1],ParameterGroup=Parameters,Parameter=k2" value="2.3999999999999999e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_2],ParameterGroup=Parameters,Parameter=k3" value="5.9999999999999997e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_1],ParameterGroup=Parameters,Parameter=k1" value="2.7777600000000001e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_2],ParameterGroup=Parameters,Parameter=k3" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_star_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_star_1],ParameterGroup=Parameters,Parameter=k1" value="2.7777600000000001e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_star_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_star_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_star_2],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_1],ParameterGroup=Parameters,Parameter=k1" value="1.9999733319999999e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_1],ParameterGroup=Parameters,Parameter=k2" value="3.9998666666666698e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_2],ParameterGroup=Parameters,Parameter=k3" value="9.9996666666666699e-15" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6K_thr_minus_252_slash_camkIII_phospho_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6K_thr_minus_252_slash_camkIII_phospho_1],ParameterGroup=Parameters,Parameter=k1" value="4.9999800000000003e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6K_thr_minus_252_slash_camkIII_phospho_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6K_thr_minus_252_slash_camkIII_phospho_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6K_thr_minus_252_slash_camkIII_phospho_2],ParameterGroup=Parameters,Parameter=k3" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6K_thr_minus_252_slash_S6_phospho_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6K_thr_minus_252_slash_S6_phospho_1],ParameterGroup=Parameters,Parameter=k1" value="1.9999800000000001e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6K_thr_minus_252_slash_S6_phospho_1],ParameterGroup=Parameters,Parameter=k2" value="4.0000000000000001e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6K_thr_minus_252_slash_S6_phospho_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6K_thr_minus_252_slash_S6_phospho_2],ParameterGroup=Parameters,Parameter=k3" value="1e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaMKIII_CaM_minus_Ca4_slash_phospho_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaMKIII_CaM_minus_Ca4_slash_phospho_1],ParameterGroup=Parameters,Parameter=k1" value="2.50002e-11" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaMKIII_CaM_minus_Ca4_slash_phospho_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999998e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaMKIII_CaM_minus_Ca4_slash_phospho_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaMKIII_CaM_minus_Ca4_slash_phospho_2],ParameterGroup=Parameters,Parameter=k3" value="9.9999999999999994e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaMKIII_basal_slash_eEF2thr56_basal_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaMKIII_basal_slash_eEF2thr56_basal_1],ParameterGroup=Parameters,Parameter=k1" value="2.50002e-11" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaMKIII_basal_slash_eEF2thr56_basal_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999998e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaMKIII_basal_slash_eEF2thr56_basal_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[CaMKIII_basal_slash_eEF2thr56_basal_2],ParameterGroup=Parameters,Parameter=k3" value="9.9999999999999994e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6K_basal_slash_CaMKIII_basal_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6K_basal_slash_CaMKIII_basal_1],ParameterGroup=Parameters,Parameter=k1" value="5.0005199999999999e-11" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6K_basal_slash_CaMKIII_basal_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999998e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6K_basal_slash_CaMKIII_basal_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[S6K_basal_slash_CaMKIII_basal_2],ParameterGroup=Parameters,Parameter=k3" value="9.9999999999999994e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Translation_clx_slash_pro_syn_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Translation_clx_slash_pro_syn_1],ParameterGroup=Parameters,Parameter=k1" value="1.8182399999999999e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Translation_clx_slash_pro_syn_1],ParameterGroup=Parameters,Parameter=k2" value="8e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Translation_clx_slash_pro_syn_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Translation_clx_slash_pro_syn_2],ParameterGroup=Parameters,Parameter=k3" value="2e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Translation_clx_slash_rad_pro_syn_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Translation_clx_slash_rad_pro_syn_1],ParameterGroup=Parameters,Parameter=k1" value="1.6666799999999999e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Translation_clx_slash_rad_pro_syn_1],ParameterGroup=Parameters,Parameter=k2" value="8e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Translation_clx_slash_rad_pro_syn_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Translation_clx_slash_rad_pro_syn_2],ParameterGroup=Parameters,Parameter=k1" value="2e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_cluster_phospho_S6K_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_cluster_phospho_S6K_1],ParameterGroup=Parameters,Parameter=k1" value="2.8902000000000001e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_cluster_phospho_S6K_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_cluster_phospho_S6K_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_cluster_phospho_S6K_2],ParameterGroup=Parameters,Parameter=k3" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_MAPK_star_minus_feedback_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_MAPK_star_minus_feedback_1],ParameterGroup=Parameters,Parameter=k1" value="1.95e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_MAPK_star_minus_feedback_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999998e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_MAPK_star_minus_feedback_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_MAPK_star_minus_feedback_2],ParameterGroup=Parameters,Parameter=k3" value="9.9999999999999994e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_phosph_Sos_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_phosph_Sos_1],ParameterGroup=Parameters,Parameter=k1" value="1.9500000000000001e-11" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_phosph_Sos_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999998e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_phosph_Sos_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_phosph_Sos_2],ParameterGroup=Parameters,Parameter=k3" value="9.9999999999999994e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_MAPK_4E_minus_BP_star_star_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_MAPK_4E_minus_BP_star_star_1],ParameterGroup=Parameters,Parameter=k1" value="4.4692799999999998e-14" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_MAPK_4E_minus_BP_star_star_1],ParameterGroup=Parameters,Parameter=k2" value="6.4e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_MAPK_4E_minus_BP_star_star_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_MAPK_4E_minus_BP_star_star_2],ParameterGroup=Parameters,Parameter=k3" value="1.6e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_MAPK_4E_minus_BP_phospho_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_MAPK_4E_minus_BP_phospho_1],ParameterGroup=Parameters,Parameter=k1" value="4.4692799999999998e-14" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_MAPK_4E_minus_BP_phospho_1],ParameterGroup=Parameters,Parameter=k2" value="6.4e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_MAPK_4E_minus_BP_phospho_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_star_slash_MAPK_4E_minus_BP_phospho_2],ParameterGroup=Parameters,Parameter=k3" value="1.6e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_minus_active_slash_PKC_minus_act_minus_raf_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_minus_active_slash_PKC_minus_act_minus_raf_1],ParameterGroup=Parameters,Parameter=k1" value="9.9995999999999991e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_minus_active_slash_PKC_minus_act_minus_raf_1],ParameterGroup=Parameters,Parameter=k2" value="1.6e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_minus_active_slash_PKC_minus_act_minus_raf_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_minus_active_slash_PKC_minus_act_minus_raf_2],ParameterGroup=Parameters,Parameter=k3" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_minus_active_slash_PKC_minus_inact_minus_GAP_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_minus_active_slash_PKC_minus_inact_minus_GAP_1],ParameterGroup=Parameters,Parameter=k1" value="6.0000000000000003e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_minus_active_slash_PKC_minus_inact_minus_GAP_1],ParameterGroup=Parameters,Parameter=k2" value="1.6e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_minus_active_slash_PKC_minus_inact_minus_GAP_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_minus_active_slash_PKC_minus_inact_minus_GAP_2],ParameterGroup=Parameters,Parameter=k3" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_minus_active_slash_PKC_minus_act_minus_GEF_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_minus_active_slash_PKC_minus_act_minus_GEF_1],ParameterGroup=Parameters,Parameter=k1" value="6.0000000000000003e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_minus_active_slash_PKC_minus_act_minus_GEF_1],ParameterGroup=Parameters,Parameter=k2" value="1.6e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_minus_active_slash_PKC_minus_act_minus_GEF_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PKC_minus_active_slash_PKC_minus_act_minus_GEF_2],ParameterGroup=Parameters,Parameter=k3" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_MAPKK_star_slash_MAPKKtyr_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_MAPKK_star_slash_MAPKKtyr_1],ParameterGroup=Parameters,Parameter=k1" value="3.2399999999999999e-11" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_MAPKK_star_slash_MAPKKtyr_1],ParameterGroup=Parameters,Parameter=k2" value="1.1999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_MAPKK_star_slash_MAPKKtyr_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_MAPKK_star_slash_MAPKKtyr_2],ParameterGroup=Parameters,Parameter=k3" value="2.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_MAPKK_star_slash_MAPKKthr_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_MAPKK_star_slash_MAPKKthr_1],ParameterGroup=Parameters,Parameter=k1" value="3.2399999999999999e-11" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_MAPKK_star_slash_MAPKKthr_1],ParameterGroup=Parameters,Parameter=k2" value="1.1999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_MAPKK_star_slash_MAPKKthr_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_MAPKK_star_slash_MAPKKthr_2],ParameterGroup=Parameters,Parameter=k3" value="2.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_1],ParameterGroup=Parameters,Parameter=k1" value="9.4284000000000005e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_1],ParameterGroup=Parameters,Parameter=k2" value="1.1999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_2],ParameterGroup=Parameters,Parameter=k3" value="2.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_1],ParameterGroup=Parameters,Parameter=k1" value="9.4284000000000005e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_1],ParameterGroup=Parameters,Parameter=k2" value="1.1999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_2],ParameterGroup=Parameters,Parameter=k3" value="2.9999999999999998e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_1],ParameterGroup=Parameters,Parameter=k1" value="2.8571400000000001e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_1],ParameterGroup=Parameters,Parameter=k2" value="1.6e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_2],ParameterGroup=Parameters,Parameter=k3" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MKP_minus_1_slash_MKP1_minus_thr_minus_deph_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MKP_minus_1_slash_MKP1_minus_thr_minus_deph_1],ParameterGroup=Parameters,Parameter=k1" value="2.8571400000000001e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MKP_minus_1_slash_MKP1_minus_thr_minus_deph_1],ParameterGroup=Parameters,Parameter=k2" value="1.6e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MKP_minus_1_slash_MKP1_minus_thr_minus_deph_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[MKP_minus_1_slash_MKP1_minus_thr_minus_deph_2],ParameterGroup=Parameters,Parameter=k3" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_craf_minus_deph_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_craf_minus_deph_1],ParameterGroup=Parameters,Parameter=k1" value="1.9160999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_craf_minus_deph_1],ParameterGroup=Parameters,Parameter=k2" value="2.4000000000000001e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_craf_minus_deph_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_craf_minus_deph_2],ParameterGroup=Parameters,Parameter=k3" value="6.0000000000000003e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_MAPKK_minus_deph_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_MAPKK_minus_deph_1],ParameterGroup=Parameters,Parameter=k1" value="1.9160999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_MAPKK_minus_deph_1],ParameterGroup=Parameters,Parameter=k2" value="2.4000000000000001e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_MAPKK_minus_deph_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_MAPKK_minus_deph_2],ParameterGroup=Parameters,Parameter=k3" value="6.0000000000000003e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_1],ParameterGroup=Parameters,Parameter=k1" value="1.9160999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_1],ParameterGroup=Parameters,Parameter=k2" value="2.4000000000000001e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_2],ParameterGroup=Parameters,Parameter=k3" value="6.0000000000000003e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_craf_star_star_minus_deph_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_craf_star_star_minus_deph_1],ParameterGroup=Parameters,Parameter=k1" value="1.9160999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_craf_star_star_minus_deph_1],ParameterGroup=Parameters,Parameter=k2" value="2.4000000000000001e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_craf_star_star_minus_deph_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PPhosphatase2A_slash_craf_star_star_minus_deph_2],ParameterGroup=Parameters,Parameter=k3" value="6.0000000000000003e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_1],ParameterGroup=Parameters,Parameter=k1" value="9.9000000000000007e-15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_1],ParameterGroup=Parameters,Parameter=k2" value="8e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_2],ParameterGroup=Parameters,Parameter=k3" value="2e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_1],ParameterGroup=Parameters,Parameter=k1" value="1.9799999999999999e-13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_1],ParameterGroup=Parameters,Parameter=k2" value="8e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_2],ParameterGroup=Parameters,Parameter=k3" value="2e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_1],ParameterGroup=Parameters,Parameter=k1" value="4.9485600000000002e-11" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_1],ParameterGroup=Parameters,Parameter=k2" value="3.9999999999999998e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_2],ParameterGroup=Parameters,Parameter=k3" value="9.9999999999999994e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_1],ParameterGroup=Parameters,Parameter=k1" value="1.98e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_1],ParameterGroup=Parameters,Parameter=k2" value="8.0000000000000002e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_2],ParameterGroup=Parameters,Parameter=k3" value="2.0000000000000001e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_1],ParameterGroup=Parameters,Parameter=k1" value="1.98e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_1],ParameterGroup=Parameters,Parameter=k2" value="8.0000000000000002e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_2],ParameterGroup=Parameters,Parameter=k3" value="2.0000000000000001e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Basal_Translation_slash_basal_syn_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Basal_Translation_slash_basal_syn_1],ParameterGroup=Parameters,Parameter=k1" value="1.81818e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Basal_Translation_slash_basal_syn_1],ParameterGroup=Parameters,Parameter=k2" value="8e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Basal_Translation_slash_basal_syn_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Basal_Translation_slash_basal_syn_2],ParameterGroup=Parameters,Parameter=k1" value="2e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Basal_Translation_slash_rad_basal_syn_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Basal_Translation_slash_rad_basal_syn_1],ParameterGroup=Parameters,Parameter=k1" value="1.81818e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Basal_Translation_slash_rad_basal_syn_1],ParameterGroup=Parameters,Parameter=k2" value="8e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Basal_Translation_slash_rad_basal_syn_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Basal_Translation_slash_rad_basal_syn_2],ParameterGroup=Parameters,Parameter=k1" value="2e-14" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_40S_basal_slash_basal_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_40S_basal_slash_basal_1],ParameterGroup=Parameters,Parameter=k1" value="1.9999800000000001e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_40S_basal_slash_basal_1],ParameterGroup=Parameters,Parameter=k2" value="4.0000000000000001e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_40S_basal_slash_basal_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[num_40S_basal_slash_basal_2],ParameterGroup=Parameters,Parameter=k1" value="1e-13" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PTEN_slash_PIP3_dephosp_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PTEN_slash_PIP3_dephosp_1],ParameterGroup=Parameters,Parameter=k1" value="3.4374054160000002e-10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PTEN_slash_PIP3_dephosp_1],ParameterGroup=Parameters,Parameter=k2" value="2.2000000000000002e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PTEN_slash_PIP3_dephosp_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[PTEN_slash_PIP3_dephosp_2],ParameterGroup=Parameters,Parameter=k3" value="5.5000000000000004e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_minus_GTP_PI3K_slash_PIP2_phospho_Ras_minus_GTP_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_minus_GTP_PI3K_slash_PIP2_phospho_Ras_minus_GTP_1],ParameterGroup=Parameters,Parameter=k1" value="4.9999800000000003e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_minus_GTP_PI3K_slash_PIP2_phospho_Ras_minus_GTP_1],ParameterGroup=Parameters,Parameter=k2" value="1.6e-11" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_minus_GTP_PI3K_slash_PIP2_phospho_Ras_minus_GTP_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=mTOR_pathway,Vector=Reactions[Ras_minus_GTP_PI3K_slash_PIP2_phospho_Ras_minus_GTP_2],ParameterGroup=Parameters,Parameter=k1" value="3.9999999999999999e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_101"/>
      <StateTemplateVariable objectReference="Metabolite_126"/>
      <StateTemplateVariable objectReference="Metabolite_134"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_62"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_135"/>
      <StateTemplateVariable objectReference="Metabolite_116"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_92"/>
      <StateTemplateVariable objectReference="Metabolite_120"/>
      <StateTemplateVariable objectReference="Metabolite_130"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_111"/>
      <StateTemplateVariable objectReference="Metabolite_168"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_148"/>
      <StateTemplateVariable objectReference="Metabolite_159"/>
      <StateTemplateVariable objectReference="Metabolite_123"/>
      <StateTemplateVariable objectReference="Metabolite_100"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_158"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_80"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_137"/>
      <StateTemplateVariable objectReference="Metabolite_132"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_147"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_145"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_95"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_119"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_76"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_146"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_162"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_141"/>
      <StateTemplateVariable objectReference="Metabolite_115"/>
      <StateTemplateVariable objectReference="Metabolite_171"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_157"/>
      <StateTemplateVariable objectReference="Metabolite_164"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_78"/>
      <StateTemplateVariable objectReference="Metabolite_110"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_166"/>
      <StateTemplateVariable objectReference="Metabolite_155"/>
      <StateTemplateVariable objectReference="Metabolite_169"/>
      <StateTemplateVariable objectReference="Metabolite_136"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_97"/>
      <StateTemplateVariable objectReference="Metabolite_114"/>
      <StateTemplateVariable objectReference="Metabolite_139"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_72"/>
      <StateTemplateVariable objectReference="Metabolite_112"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_163"/>
      <StateTemplateVariable objectReference="Metabolite_156"/>
      <StateTemplateVariable objectReference="Metabolite_117"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_99"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_128"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_98"/>
      <StateTemplateVariable objectReference="Metabolite_106"/>
      <StateTemplateVariable objectReference="Metabolite_107"/>
      <StateTemplateVariable objectReference="Metabolite_75"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_124"/>
      <StateTemplateVariable objectReference="Metabolite_131"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_160"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_122"/>
      <StateTemplateVariable objectReference="Metabolite_66"/>
      <StateTemplateVariable objectReference="Metabolite_68"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_84"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="Metabolite_144"/>
      <StateTemplateVariable objectReference="Metabolite_151"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_153"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_133"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_150"/>
      <StateTemplateVariable objectReference="Metabolite_103"/>
      <StateTemplateVariable objectReference="Metabolite_138"/>
      <StateTemplateVariable objectReference="Metabolite_91"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_154"/>
      <StateTemplateVariable objectReference="Metabolite_96"/>
      <StateTemplateVariable objectReference="Metabolite_113"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_165"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_118"/>
      <StateTemplateVariable objectReference="Metabolite_143"/>
      <StateTemplateVariable objectReference="Metabolite_149"/>
      <StateTemplateVariable objectReference="Metabolite_109"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_102"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_82"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_152"/>
      <StateTemplateVariable objectReference="Metabolite_121"/>
      <StateTemplateVariable objectReference="Metabolite_142"/>
      <StateTemplateVariable objectReference="Metabolite_70"/>
      <StateTemplateVariable objectReference="Metabolite_74"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_105"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_129"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_140"/>
      <StateTemplateVariable objectReference="Metabolite_127"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_104"/>
      <StateTemplateVariable objectReference="Metabolite_172"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_64"/>
      <StateTemplateVariable objectReference="Metabolite_108"/>
      <StateTemplateVariable objectReference="Metabolite_167"/>
      <StateTemplateVariable objectReference="Metabolite_125"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_94"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_170"/>
      <StateTemplateVariable objectReference="Metabolite_88"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_161"/>
      <StateTemplateVariable objectReference="Metabolite_90"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_181"/>
      <StateTemplateVariable objectReference="Metabolite_86"/>
      <StateTemplateVariable objectReference="Metabolite_173"/>
      <StateTemplateVariable objectReference="Metabolite_174"/>
      <StateTemplateVariable objectReference="Metabolite_175"/>
      <StateTemplateVariable objectReference="Metabolite_176"/>
      <StateTemplateVariable objectReference="Metabolite_177"/>
      <StateTemplateVariable objectReference="Metabolite_178"/>
      <StateTemplateVariable objectReference="Metabolite_179"/>
      <StateTemplateVariable objectReference="Metabolite_180"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="Compartment_4"/>
      <StateTemplateVariable objectReference="Compartment_5"/>
      <StateTemplateVariable objectReference="Compartment_6"/>
      <StateTemplateVariable objectReference="Compartment_7"/>
      <StateTemplateVariable objectReference="Compartment_8"/>
      <StateTemplateVariable objectReference="Compartment_9"/>
      <StateTemplateVariable objectReference="Compartment_10"/>
      <StateTemplateVariable objectReference="Compartment_11"/>
      <StateTemplateVariable objectReference="Compartment_12"/>
      <StateTemplateVariable objectReference="Compartment_13"/>
      <StateTemplateVariable objectReference="Compartment_14"/>
      <StateTemplateVariable objectReference="Compartment_15"/>
      <StateTemplateVariable objectReference="Compartment_16"/>
      <StateTemplateVariable objectReference="Compartment_17"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 90332.112855000029 0 602214.08569999994 0 0 0 0 0 301107.04284999997 0 0 0 0 0 60221.40857 0 0 0 0 602214.08569999994 2.2407382438754153e-11 120.44281714000002 12044.281714000006 0 36132.845142000013 602214.08569999994 0 301107.04284999997 0 0 6022.1408570000031 0 150553.52142499998 0 0 0 60221.40857 0 0 0 0 602214.08569999994 0 0 0 60221.40857 0 0 120442.81714 752767.60712499998 602214.08569999994 0 60221.40857 0 0 0 0 0 0 1.5168769128640144e-13 0 0 0 0 301107.04284999997 0 60.221408570000008 5.096638176293385e-17 162597.803139 0 0 0 0 0 0 0 0 28304.062027900003 301107.04284999997 1806.6422570999998 301107.04284999997 0 0 6.9918059039913029e-11 0 0 602214.08569999994 0 0 0 0 0 0 0 0 6.0221408570000001 0 0 0 0 0 0 0 0 0 0 0 0 0 8.3683669348872003e-12 0 0 12044.281714000006 0 0 421.54985998999996 1.0538746499750002e-10 0 0 0 0 1.0920148754026647e-11 0 2167970.7085199999 0 0 0 0 120446.83203440097 0 0 2.9590792791012349e-12 0 0 0 0 0 12044281.714 0 48176.92611462577 5.6819902675937855e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 361328.45142000011 120444.82455374267 0 0 0 421549.85999000003 0 0 0 0 0 0 0 602.2140857000004 24088.964910748549 12044.281714000133 48177.126856000024 30.110704285000004 150553.52142499998 4215498.5998999998 12044.281714000006 40950.557827600001 60221.40857 6624354.9426999995 3011070.4284999999 1.0000000000000001e-18 9.9999999999999998e-13 9.9999999999999998e-13 9.9999999999999998e-13 9.9999999999999998e-13 9.9999999999999998e-13 9.9999999999999998e-13 9.9999999999999998e-13 9.9999999999999998e-13 9.9999999999999998e-13 9.9999999999999998e-13 9.9999999999999998e-13 9.9999999999999998e-13 9.9999999999999998e-13 9.9999999999999998e-13 9.9999999999999998e-13 9.9999999999999998e-13 9.9999999999999998e-13 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="JB_original.txt" append="0" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="10000"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="10000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_10" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_9" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_8" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_4" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_2" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_1" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_14" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_9" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_8" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Time, Concentrations, Volumes, and Global Quantity Values" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        A table of time, variable species concentrations, variable compartment volumes, and variable global quantity values.
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=mTOR_pathway,Reference=Time"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PLC_g],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PLC_g_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PIP3],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_2_sbc_],Vector=Metabolites[PDK1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_2_sbc_],Vector=Metabolites[PDK1_slash_S6K_phospho_slash_S6K_phospho_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_dephos_clus_S6K_slash_dephos_clus_S6K_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_dephos_S6K_slash_dephos_S6K_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_dephosp_S6K_slash_dephosp_S6K_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_Dephos_AKTser473_slash_Dephos_AKTser473_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_Dephosph_AKTthr308_slash_Dephosph_AKTthr308_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_eEF2thr_minus_56_dephospho_slash_eEF2thr_minus_56_dephospho_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_PP2A_4E_minus_BP_star_star_slash_PP2A_4E_minus_BP_star_star_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_PP2A_4E_minus_BP_star_slash_PP2A_4E_minus_BP_star_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_PP2A_4E_minus_BP_slash_PP2A_4E_minus_BP_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PP2A_slash_PP2A_4EBP_slash_PP2A_4EBP_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_AKT],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_PDK1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_slash_phospho_thr308_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_PDK2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_slash_phosp_AKTser473_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_AKT_thr308],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_AKT_minus_t308_s473],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_slash_TSC2_phospho_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_AKT],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_TSC1_minus_TSC2_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TrKB_mod_slash_TrKB],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TrKB_mod_slash_BDNF_TrkB2_clx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TrKB_mod_slash_BDNF_TrkB_clx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TrKB_mod_slash_BDNF_TrkB2_star_clx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_slash_PLC_g_phospho_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_slash_Shc_phospho_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_slash_Phospho_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PI3K_mod_slash_PI3K],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PI3K_mod_slash_PI3K_basal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PI3K_mod_slash_PI3K_basal_slash_basal_phosp_slash_basal_phosp_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PI3K_mod_slash_Shc],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_2_sbc_],Vector=Metabolites[PI3K_mod_slash_Shc_star_Grb2_clx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_1_sbc_],Vector=Metabolites[PI3K_mod_slash_Gab1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PI3K_mod_slash_Shc_star_Grb2_minus_Gab1_clx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_4_sbc_],Vector=Metabolites[PLCg_basal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_4_sbc_],Vector=Metabolites[PLCg_basal_slash_PLC_g_phospho_slash_PLC_g_phospho_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TSC1_minus_TSC2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TSC1_minus_TSC2_slash_TSC2phospho_slash_TSC2phospho_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[eIF4E],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Rheb_minus_GTP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_6_sbc_],Vector=Metabolites[Rheb_minus_GDP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[mTOR_model_slash_TOR_minus_clx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TOR_Rheb_minus_GTP_clx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_slash_S6K_phospho_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_slash_TOR_4E_minus_BP_phospho_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_star_slash_TOR_4E_minus_BP_star_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6Kinase_slash_S6K_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6Kinase_slash_S6K],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6Kinase_slash_S6K_thr_minus_412],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_slash_S6_phos_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_4E_minus_BP_mod_slash_4E_minus_BP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_4E_minus_BP_mod_slash_4E_minus_BP_thr37_46_s65],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_4E_minus_BP_mod_slash_eIF4E_minus_BP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_4E_minus_BP_mod_slash_eIF4E_minus_BP_thr37_46],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_4E_minus_BP_mod_slash_eIF4E_4E_minus_BP_t37_46_s65],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_40S],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[eIF4G_minus_A_clx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[eIF4A],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[eIF4G],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[eIF4F],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[mRNA],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PPhosphatase2A_slash_craf_star_star_minus_deph_slash_craf_star_star_minus_deph_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[eIF4F_minus_mRNA_clx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_43S_complex_slash_Q_dot_R],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_43S_complex_slash_RM],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_43S_complex_slash_Quaternary_clx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6K_thr_minus_252],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6K_thr_minus_252_slash_camkIII_phospho_slash_camkIII_phospho_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6K_thr_minus_252_slash_S6_phospho_slash_S6_phospho_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaM_minus_Ca4],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaMKIII],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaMKIII_CaM_minus_Ca4],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaMKIII_CaM_minus_Ca4_slash_phospho_slash_phospho_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[eEF2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[eEFthr_minus_56],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaM_slash_CaM],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaM_slash_CaM_minus_Ca3],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaM_slash_CaM_minus_Ca2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaM_slash_CaM_minus_Ca],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaMKIII_basal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaMKIII_basal_slash_eEF2thr56_basal_slash_eEF2thr56_basal_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaMKIII_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6K_basal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[S6K_basal_slash_CaMKIII_basal_slash_CaMKIII_basal_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Translation_clx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Translation_clx_slash_pro_syn_slash_pro_syn_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Translation_clx_slash_rad_pro_syn_slash_rad_pro_syn_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[peptide],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[degraded_protein],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[protein],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_80S_ribos_clx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Grb2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Shc_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_star_slash_cluster_phospho_S6K_slash_cluster_phospho_S6K_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_star_slash_MAPK_star_minus_feedback_slash_MAPK_star_minus_feedback_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_star_slash_phosph_Sos_slash_phosph_Sos_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_star_slash_MAPK_4E_minus_BP_star_star_slash_MAPK_4E_minus_BP_star_star_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_star_slash_MAPK_4E_minus_BP_phospho_slash_MAPK_4E_minus_BP_phospho_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_minus_active_slash_PKC_minus_act_minus_raf_slash_PKC_minus_act_minus_raf_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_minus_active_slash_PKC_minus_inact_minus_GAP_slash_PKC_minus_inact_minus_GAP_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_minus_active_slash_PKC_minus_act_minus_GEF_slash_PKC_minus_act_minus_GEF_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_craf_minus_1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_craf_minus_1_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_MAPKK],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_MAPK],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_craf_minus_1_star_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_MAPK_minus_tyr],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_MAPKK_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_MAPKK_star_slash_MAPKKtyr_slash_MAPKKtyr_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_MAPKK_star_slash_MAPKKthr_slash_MAPKKthr_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_MAPKK_minus_ser],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_Raf_star_minus_GTP_minus_Ras],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_slash_Raf_star_minus_GTP_minus_Ras_dot_1_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_slash_Raf_star_minus_GTP_minus_Ras_dot_2_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MKP_minus_1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_slash_MKP1_minus_tyr_minus_deph_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MKP_minus_1_slash_MKP1_minus_thr_minus_deph_slash_MKP1_minus_thr_minus_deph_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PPhosphatase2A],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PPhosphatase2A_slash_craf_minus_deph_slash_craf_minus_deph_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PPhosphatase2A_slash_MAPKK_minus_deph_slash_MAPKK_minus_deph_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_slash_MAPKK_minus_deph_minus_ser_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_inact_minus_GEF],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_slash_basal_GEF_activity_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_GEF_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_slash_GEF_star_minus_act_minus_ras_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_GTP_minus_Ras],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_GDP_minus_Ras],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_GAP_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_GAP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_slash_GAP_minus_inact_minus_ras_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_CaM_minus_GEF],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_slash_CaM_minus_GEF_minus_act_minus_ras_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Shc_star_dot_Sos_dot_Grb2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_slash_Sos_dot_Ras_GEF_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Sos_slash_Sos_star_dot_Grb2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Sos_slash_Sos_dot_Grb2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Sos_slash_Sos_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Sos_slash_Sos],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[num_43Scomplex],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_Ca],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_DAG_minus_AA_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_Ca_minus_AA_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_Ca_minus_memb_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_DAG_minus_memb_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_basal_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_AA_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_Ca_minus_DAG],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_DAG],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_DAG_minus_AA],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_slash_PKC_minus_cytosolic],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_10_sbc_],Vector=Metabolites[Basal_Translation],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_10_sbc_],Vector=Metabolites[Basal_Translation_slash_basal_syn_slash_basal_syn_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_10_sbc_],Vector=Metabolites[Basal_Translation_slash_rad_basal_syn_slash_rad_basal_syn_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_13_sbc_],Vector=Metabolites[rad_AA],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_13_sbc_],Vector=Metabolites[rad_peptide],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_13_sbc_],Vector=Metabolites[rad_protein],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_13_sbc_],Vector=Metabolites[rad_deg_pro],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_14_sbc_],Vector=Metabolites[num_40S_basal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_14_sbc_],Vector=Metabolites[num_40S_basal_slash_basal_slash_basal_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_11_sbc_],Vector=Metabolites[num_4E_minus_BP_t37_46],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_15_sbc_],Vector=Metabolites[PTEN],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_15_sbc_],Vector=Metabolites[PTEN_slash_PIP3_dephosp_slash_PIP3_dephosp_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_16_sbc_],Vector=Metabolites[Ras_minus_GTP_PI3K],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry_sbo_16_sbc_],Vector=Metabolites[Ras_minus_GTP_PI3K_slash_PIP2_phospho_Ras_minus_GTP_slash_PIP2_phospho_Ras_minus_GTP_cplx],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[PKC_minus_active],Reference=Concentration"/>
      </Table>
    </Report>
    <Report key="Report_18" name="JB_report" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=mTOR_pathway,Reference=Time"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_AKT_thr308],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[BDNF],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaMKIII_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ca],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_star],Reference=Concentration"/>
        <Object cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[protein],Reference=Concentration"/>
      </Table>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="MAPK" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[MAPK_star]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=mTOR_pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[MAPK_star],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="CaMKIII" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[CaMKIII_star]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=mTOR_pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[CaMKIII_star],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Protein" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[protein]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=mTOR_pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Akt" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[AKT_mod_slash_PIP3_AKT_minus_t308_s473]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=mTOR_pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_AKT_minus_t308_s473],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[AKT_mod_slash_PIP3_AKT_thr308]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=mTOR_pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[AKT_mod_slash_PIP3_AKT_thr308],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Ca bdnf" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[BDNF]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=mTOR_pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[BDNF],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=mTOR_pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=mTOR_pathway,Vector=Compartments[geometry],Vector=Metabolites[Ca],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Jain_Bhalla_2009.xml">
    <SBMLMap SBMLid="AA" COPASIkey="Metabolite_178"/>
    <SBMLMap SBMLid="AKT_mod_slash_AKT" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="AKT_mod_slash_PIP3_AKT" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="AKT_mod_slash_PIP3_AKT_minus_t308_s473" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_1" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_2" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="AKT_mod_slash_PIP3_AKT_minus_t308_s473_slash_TSC2_phospho_slash_TSC2_phospho_cplx" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="AKT_mod_slash_PIP3_AKT_thr308" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="AKT_mod_slash_PIP3_PDK1" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_1" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_2" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="AKT_mod_slash_PIP3_PDK1_slash_phospho_thr308_slash_phospho_thr308_cplx" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="AKT_mod_slash_PIP3_PDK2" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_1" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_2" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="AKT_mod_slash_PIP3_PDK2_slash_phosp_AKTser473_slash_phosp_AKTser473_cplx" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="AKT_mod_slash_PIP3_bind_AKT" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="AKT_mod_slash_PIP3_bind_PDK1" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="AKT_mod_slash_TSC1_minus_2_dephospho" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="AKT_mod_slash_TSC1_minus_TSC2_star" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="Arachidonic_Acid" COPASIkey="Metabolite_180"/>
    <SBMLMap SBMLid="BDNF" COPASIkey="Metabolite_173"/>
    <SBMLMap SBMLid="Basal_Translation" COPASIkey="Metabolite_159"/>
    <SBMLMap SBMLid="Basal_Translation_slash_basal_syn_1" COPASIkey="Reaction_169"/>
    <SBMLMap SBMLid="Basal_Translation_slash_basal_syn_2" COPASIkey="Reaction_170"/>
    <SBMLMap SBMLid="Basal_Translation_slash_basal_syn_slash_basal_syn_cplx" COPASIkey="Metabolite_160"/>
    <SBMLMap SBMLid="Basal_Translation_slash_rad_basal_syn_1" COPASIkey="Reaction_171"/>
    <SBMLMap SBMLid="Basal_Translation_slash_rad_basal_syn_2" COPASIkey="Reaction_172"/>
    <SBMLMap SBMLid="Basal_Translation_slash_rad_basal_syn_slash_rad_basal_syn_cplx" COPASIkey="Metabolite_161"/>
    <SBMLMap SBMLid="Ca" COPASIkey="Metabolite_86"/>
    <SBMLMap SBMLid="CaMKIII" COPASIkey="Metabolite_77"/>
    <SBMLMap SBMLid="CaMKIII_CaM_minus_Ca4" COPASIkey="Metabolite_78"/>
    <SBMLMap SBMLid="CaMKIII_CaM_minus_Ca4_slash_phospho_1" COPASIkey="Reaction_113"/>
    <SBMLMap SBMLid="CaMKIII_CaM_minus_Ca4_slash_phospho_2" COPASIkey="Reaction_114"/>
    <SBMLMap SBMLid="CaMKIII_CaM_minus_Ca4_slash_phospho_slash_phospho_cplx" COPASIkey="Metabolite_79"/>
    <SBMLMap SBMLid="CaMKIII_basal" COPASIkey="Metabolite_87"/>
    <SBMLMap SBMLid="CaMKIII_basal_slash_eEF2thr56_basal_1" COPASIkey="Reaction_115"/>
    <SBMLMap SBMLid="CaMKIII_basal_slash_eEF2thr56_basal_2" COPASIkey="Reaction_116"/>
    <SBMLMap SBMLid="CaMKIII_basal_slash_eEF2thr56_basal_slash_eEF2thr56_basal_cplx" COPASIkey="Metabolite_88"/>
    <SBMLMap SBMLid="CaMKIII_bind_CaM_minus_Ca4" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="CaMKIII_star" COPASIkey="Metabolite_89"/>
    <SBMLMap SBMLid="CaM_minus_Ca4" COPASIkey="Metabolite_76"/>
    <SBMLMap SBMLid="CaM_slash_CaM" COPASIkey="Metabolite_82"/>
    <SBMLMap SBMLid="CaM_slash_CaM_minus_Ca" COPASIkey="Metabolite_85"/>
    <SBMLMap SBMLid="CaM_slash_CaM_minus_Ca2" COPASIkey="Metabolite_84"/>
    <SBMLMap SBMLid="CaM_slash_CaM_minus_Ca2_minus_bind_minus_Ca" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="CaM_slash_CaM_minus_Ca3" COPASIkey="Metabolite_83"/>
    <SBMLMap SBMLid="CaM_slash_CaM_minus_Ca3_minus_bind_minus_Ca" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="CaM_slash_CaM_minus_Ca_minus_bind_minus_Ca" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="CaM_slash_CaM_minus_bind_minus_Ca" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="DAG" COPASIkey="Metabolite_179"/>
    <SBMLMap SBMLid="GDP_to_GTP" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="Grb2" COPASIkey="Metabolite_99"/>
    <SBMLMap SBMLid="MAPK_slash_MAPK" COPASIkey="Metabolite_113"/>
    <SBMLMap SBMLid="MAPK_slash_MAPKK" COPASIkey="Metabolite_112"/>
    <SBMLMap SBMLid="MAPK_slash_MAPKK_minus_ser" COPASIkey="Metabolite_119"/>
    <SBMLMap SBMLid="MAPK_slash_MAPKK_star" COPASIkey="Metabolite_116"/>
    <SBMLMap SBMLid="MAPK_slash_MAPKK_star_slash_MAPKKthr_1" COPASIkey="Reaction_141"/>
    <SBMLMap SBMLid="MAPK_slash_MAPKK_star_slash_MAPKKthr_2" COPASIkey="Reaction_142"/>
    <SBMLMap SBMLid="MAPK_slash_MAPKK_star_slash_MAPKKthr_slash_MAPKKthr_cplx" COPASIkey="Metabolite_118"/>
    <SBMLMap SBMLid="MAPK_slash_MAPKK_star_slash_MAPKKtyr_1" COPASIkey="Reaction_139"/>
    <SBMLMap SBMLid="MAPK_slash_MAPKK_star_slash_MAPKKtyr_2" COPASIkey="Reaction_140"/>
    <SBMLMap SBMLid="MAPK_slash_MAPKK_star_slash_MAPKKtyr_slash_MAPKKtyr_cplx" COPASIkey="Metabolite_117"/>
    <SBMLMap SBMLid="MAPK_slash_MAPK_minus_tyr" COPASIkey="Metabolite_115"/>
    <SBMLMap SBMLid="MAPK_slash_Raf_star_minus_GTP_minus_Ras" COPASIkey="Metabolite_120"/>
    <SBMLMap SBMLid="MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_1" COPASIkey="Reaction_143"/>
    <SBMLMap SBMLid="MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_2" COPASIkey="Reaction_144"/>
    <SBMLMap SBMLid="MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_1_slash_Raf_star_minus_GTP_minus_Ras_dot_1_cplx" COPASIkey="Metabolite_121"/>
    <SBMLMap SBMLid="MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_1" COPASIkey="Reaction_145"/>
    <SBMLMap SBMLid="MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_2" COPASIkey="Reaction_146"/>
    <SBMLMap SBMLid="MAPK_slash_Raf_star_minus_GTP_minus_Ras_slash_Raf_star_minus_GTP_minus_Ras_dot_2_slash_Raf_star_minus_GTP_minus_Ras_dot_2_cplx" COPASIkey="Metabolite_122"/>
    <SBMLMap SBMLid="MAPK_slash_craf_minus_1" COPASIkey="Metabolite_110"/>
    <SBMLMap SBMLid="MAPK_slash_craf_minus_1_star" COPASIkey="Metabolite_111"/>
    <SBMLMap SBMLid="MAPK_slash_craf_minus_1_star_star" COPASIkey="Metabolite_114"/>
    <SBMLMap SBMLid="MAPK_star" COPASIkey="Metabolite_101"/>
    <SBMLMap SBMLid="MAPK_star_slash_MAPK_4E_minus_BP_phospho_1" COPASIkey="Reaction_131"/>
    <SBMLMap SBMLid="MAPK_star_slash_MAPK_4E_minus_BP_phospho_2" COPASIkey="Reaction_132"/>
    <SBMLMap SBMLid="MAPK_star_slash_MAPK_4E_minus_BP_phospho_slash_MAPK_4E_minus_BP_phospho_cplx" COPASIkey="Metabolite_106"/>
    <SBMLMap SBMLid="MAPK_star_slash_MAPK_4E_minus_BP_star_star_1" COPASIkey="Reaction_129"/>
    <SBMLMap SBMLid="MAPK_star_slash_MAPK_4E_minus_BP_star_star_2" COPASIkey="Reaction_130"/>
    <SBMLMap SBMLid="MAPK_star_slash_MAPK_4E_minus_BP_star_star_slash_MAPK_4E_minus_BP_star_star_cplx" COPASIkey="Metabolite_105"/>
    <SBMLMap SBMLid="MAPK_star_slash_MAPK_star_minus_feedback_1" COPASIkey="Reaction_125"/>
    <SBMLMap SBMLid="MAPK_star_slash_MAPK_star_minus_feedback_2" COPASIkey="Reaction_126"/>
    <SBMLMap SBMLid="MAPK_star_slash_MAPK_star_minus_feedback_slash_MAPK_star_minus_feedback_cplx" COPASIkey="Metabolite_103"/>
    <SBMLMap SBMLid="MAPK_star_slash_cluster_phospho_S6K_1" COPASIkey="Reaction_123"/>
    <SBMLMap SBMLid="MAPK_star_slash_cluster_phospho_S6K_2" COPASIkey="Reaction_124"/>
    <SBMLMap SBMLid="MAPK_star_slash_cluster_phospho_S6K_slash_cluster_phospho_S6K_cplx" COPASIkey="Metabolite_102"/>
    <SBMLMap SBMLid="MAPK_star_slash_phosph_Sos_1" COPASIkey="Reaction_127"/>
    <SBMLMap SBMLid="MAPK_star_slash_phosph_Sos_2" COPASIkey="Reaction_128"/>
    <SBMLMap SBMLid="MAPK_star_slash_phosph_Sos_slash_phosph_Sos_cplx" COPASIkey="Metabolite_104"/>
    <SBMLMap SBMLid="MKP_minus_1" COPASIkey="Metabolite_123"/>
    <SBMLMap SBMLid="MKP_minus_1_slash_MKP1_minus_thr_minus_deph_1" COPASIkey="Reaction_149"/>
    <SBMLMap SBMLid="MKP_minus_1_slash_MKP1_minus_thr_minus_deph_2" COPASIkey="Reaction_150"/>
    <SBMLMap SBMLid="MKP_minus_1_slash_MKP1_minus_thr_minus_deph_slash_MKP1_minus_thr_minus_deph_cplx" COPASIkey="Metabolite_125"/>
    <SBMLMap SBMLid="MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_1" COPASIkey="Reaction_147"/>
    <SBMLMap SBMLid="MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_2" COPASIkey="Reaction_148"/>
    <SBMLMap SBMLid="MKP_minus_1_slash_MKP1_minus_tyr_minus_deph_slash_MKP1_minus_tyr_minus_deph_cplx" COPASIkey="Metabolite_124"/>
    <SBMLMap SBMLid="PDK1" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="PDK1_slash_S6K_phospho_1" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="PDK1_slash_S6K_phospho_2" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="PDK1_slash_S6K_phospho_slash_S6K_phospho_cplx" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="PI3K_bind_Ras_minus_GTP" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="PI3K_mod_slash_Gab1" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="PI3K_mod_slash_Grb2_bind_Shc" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="PI3K_mod_slash_PI3K" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="PI3K_mod_slash_PI3K_act" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="PI3K_mod_slash_PI3K_basal" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="PI3K_mod_slash_PI3K_basal_slash_basal_phosp_1" COPASIkey="Reaction_95"/>
    <SBMLMap SBMLid="PI3K_mod_slash_PI3K_basal_slash_basal_phosp_2" COPASIkey="Reaction_96"/>
    <SBMLMap SBMLid="PI3K_mod_slash_PI3K_basal_slash_basal_phosp_slash_basal_phosp_cplx" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="PI3K_mod_slash_PIP2" COPASIkey="Metabolite_175"/>
    <SBMLMap SBMLid="PI3K_mod_slash_Shc" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="PI3K_mod_slash_Shc_star_Grb2_clx" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="PI3K_mod_slash_Shc_star_Grb2_minus_Gab1_clx" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="PI3K_mod_slash_Shc_star_dephospho" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="PI3K_mod_slash_basal_PI3K_act" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="PI3K_mod_slash_bind_Gab1" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="PIP3" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="PKC_minus_active" COPASIkey="Metabolite_181"/>
    <SBMLMap SBMLid="PKC_minus_active_slash_PKC_minus_act_minus_GEF_1" COPASIkey="Reaction_137"/>
    <SBMLMap SBMLid="PKC_minus_active_slash_PKC_minus_act_minus_GEF_2" COPASIkey="Reaction_138"/>
    <SBMLMap SBMLid="PKC_minus_active_slash_PKC_minus_act_minus_GEF_slash_PKC_minus_act_minus_GEF_cplx" COPASIkey="Metabolite_109"/>
    <SBMLMap SBMLid="PKC_minus_active_slash_PKC_minus_act_minus_raf_1" COPASIkey="Reaction_133"/>
    <SBMLMap SBMLid="PKC_minus_active_slash_PKC_minus_act_minus_raf_2" COPASIkey="Reaction_134"/>
    <SBMLMap SBMLid="PKC_minus_active_slash_PKC_minus_act_minus_raf_slash_PKC_minus_act_minus_raf_cplx" COPASIkey="Metabolite_107"/>
    <SBMLMap SBMLid="PKC_minus_active_slash_PKC_minus_inact_minus_GAP_1" COPASIkey="Reaction_135"/>
    <SBMLMap SBMLid="PKC_minus_active_slash_PKC_minus_inact_minus_GAP_2" COPASIkey="Reaction_136"/>
    <SBMLMap SBMLid="PKC_minus_active_slash_PKC_minus_inact_minus_GAP_slash_PKC_minus_inact_minus_GAP_cplx" COPASIkey="Metabolite_108"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_AA_star" COPASIkey="Metabolite_154"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_Ca" COPASIkey="Metabolite_148"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_Ca_minus_AA_star" COPASIkey="Metabolite_150"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_Ca_minus_DAG" COPASIkey="Metabolite_155"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_Ca_minus_memb_star" COPASIkey="Metabolite_151"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_Ca_minus_to_minus_memb" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_DAG" COPASIkey="Metabolite_156"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_DAG_minus_AA" COPASIkey="Metabolite_157"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_DAG_minus_AA_star" COPASIkey="Metabolite_149"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_DAG_minus_memb_star" COPASIkey="Metabolite_152"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_DAG_minus_to_minus_memb" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_act_minus_by_minus_AA" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_act_minus_by_minus_Ca" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_act_minus_by_minus_Ca_minus_AA" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_act_minus_by_minus_DAG" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_act_minus_by_minus_DAG_minus_AA" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_basal_minus_act" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_basal_star" COPASIkey="Metabolite_153"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_cytosolic" COPASIkey="Metabolite_158"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_n_minus_DAG" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="PKC_slash_PKC_minus_n_minus_DAG_minus_AA" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="PLC_g" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="PLC_g_star" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="PLCg_basal" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="PLCg_basal_slash_PLC_g_phospho_1" COPASIkey="Reaction_97"/>
    <SBMLMap SBMLid="PLCg_basal_slash_PLC_g_phospho_2" COPASIkey="Reaction_98"/>
    <SBMLMap SBMLid="PLCg_basal_slash_PLC_g_phospho_slash_PLC_g_phospho_cplx" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="PP2A" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="PP2A_slash_Dephos_AKTser473_1" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="PP2A_slash_Dephos_AKTser473_2" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="PP2A_slash_Dephos_AKTser473_slash_Dephos_AKTser473_cplx" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="PP2A_slash_Dephosph_AKTthr308_1" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="PP2A_slash_Dephosph_AKTthr308_2" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="PP2A_slash_Dephosph_AKTthr308_slash_Dephosph_AKTthr308_cplx" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="PP2A_slash_PP2A_4EBP_1" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="PP2A_slash_PP2A_4EBP_2" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="PP2A_slash_PP2A_4EBP_slash_PP2A_4EBP_cplx" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="PP2A_slash_PP2A_4E_minus_BP_1" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="PP2A_slash_PP2A_4E_minus_BP_2" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="PP2A_slash_PP2A_4E_minus_BP_slash_PP2A_4E_minus_BP_cplx" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="PP2A_slash_PP2A_4E_minus_BP_star_1" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="PP2A_slash_PP2A_4E_minus_BP_star_2" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="PP2A_slash_PP2A_4E_minus_BP_star_slash_PP2A_4E_minus_BP_star_cplx" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="PP2A_slash_PP2A_4E_minus_BP_star_star_1" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="PP2A_slash_PP2A_4E_minus_BP_star_star_2" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="PP2A_slash_PP2A_4E_minus_BP_star_star_slash_PP2A_4E_minus_BP_star_star_cplx" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="PP2A_slash_dephos_S6K_1" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="PP2A_slash_dephos_S6K_2" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="PP2A_slash_dephos_S6K_slash_dephos_S6K_cplx" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="PP2A_slash_dephos_clus_S6K_1" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="PP2A_slash_dephos_clus_S6K_2" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="PP2A_slash_dephos_clus_S6K_slash_dephos_clus_S6K_cplx" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="PP2A_slash_dephosp_S6K_1" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="PP2A_slash_dephosp_S6K_2" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="PP2A_slash_dephosp_S6K_slash_dephosp_S6K_cplx" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="PP2A_slash_eEF2thr_minus_56_dephospho_1" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="PP2A_slash_eEF2thr_minus_56_dephospho_2" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="PP2A_slash_eEF2thr_minus_56_dephospho_slash_eEF2thr_minus_56_dephospho_cplx" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="PPhosphatase2A" COPASIkey="Metabolite_126"/>
    <SBMLMap SBMLid="PPhosphatase2A_slash_MAPKK_minus_deph_1" COPASIkey="Reaction_153"/>
    <SBMLMap SBMLid="PPhosphatase2A_slash_MAPKK_minus_deph_2" COPASIkey="Reaction_154"/>
    <SBMLMap SBMLid="PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_1" COPASIkey="Reaction_155"/>
    <SBMLMap SBMLid="PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_2" COPASIkey="Reaction_156"/>
    <SBMLMap SBMLid="PPhosphatase2A_slash_MAPKK_minus_deph_minus_ser_slash_MAPKK_minus_deph_minus_ser_cplx" COPASIkey="Metabolite_129"/>
    <SBMLMap SBMLid="PPhosphatase2A_slash_MAPKK_minus_deph_slash_MAPKK_minus_deph_cplx" COPASIkey="Metabolite_128"/>
    <SBMLMap SBMLid="PPhosphatase2A_slash_craf_minus_deph_1" COPASIkey="Reaction_151"/>
    <SBMLMap SBMLid="PPhosphatase2A_slash_craf_minus_deph_2" COPASIkey="Reaction_152"/>
    <SBMLMap SBMLid="PPhosphatase2A_slash_craf_minus_deph_slash_craf_minus_deph_cplx" COPASIkey="Metabolite_127"/>
    <SBMLMap SBMLid="PPhosphatase2A_slash_craf_star_star_minus_deph_1" COPASIkey="Reaction_157"/>
    <SBMLMap SBMLid="PPhosphatase2A_slash_craf_star_star_minus_deph_2" COPASIkey="Reaction_158"/>
    <SBMLMap SBMLid="PPhosphatase2A_slash_craf_star_star_minus_deph_slash_craf_star_star_minus_deph_cplx" COPASIkey="Metabolite_68"/>
    <SBMLMap SBMLid="PTEN" COPASIkey="Metabolite_169"/>
    <SBMLMap SBMLid="PTEN_slash_PIP3_dephosp_1" COPASIkey="Reaction_175"/>
    <SBMLMap SBMLid="PTEN_slash_PIP3_dephosp_2" COPASIkey="Reaction_176"/>
    <SBMLMap SBMLid="PTEN_slash_PIP3_dephosp_slash_PIP3_dephosp_cplx" COPASIkey="Metabolite_170"/>
    <SBMLMap SBMLid="Ras_minus_GTP_PI3K" COPASIkey="Metabolite_171"/>
    <SBMLMap SBMLid="Ras_minus_GTP_PI3K_slash_PIP2_phospho_Ras_minus_GTP_1" COPASIkey="Reaction_177"/>
    <SBMLMap SBMLid="Ras_minus_GTP_PI3K_slash_PIP2_phospho_Ras_minus_GTP_2" COPASIkey="Reaction_178"/>
    <SBMLMap SBMLid="Ras_minus_GTP_PI3K_slash_PIP2_phospho_Ras_minus_GTP_slash_PIP2_phospho_Ras_minus_GTP_cplx" COPASIkey="Metabolite_172"/>
    <SBMLMap SBMLid="Ras_minus_act_minus_craf" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="Ras_slash_CaM_minus_GEF" COPASIkey="Metabolite_139"/>
    <SBMLMap SBMLid="Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_1" COPASIkey="Reaction_165"/>
    <SBMLMap SBMLid="Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_2" COPASIkey="Reaction_166"/>
    <SBMLMap SBMLid="Ras_slash_CaM_minus_GEF_slash_CaM_minus_GEF_minus_act_minus_ras_slash_CaM_minus_GEF_minus_act_minus_ras_cplx" COPASIkey="Metabolite_140"/>
    <SBMLMap SBMLid="Ras_slash_CaM_minus_bind_minus_GEF" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="Ras_slash_GAP" COPASIkey="Metabolite_137"/>
    <SBMLMap SBMLid="Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_1" COPASIkey="Reaction_163"/>
    <SBMLMap SBMLid="Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_2" COPASIkey="Reaction_164"/>
    <SBMLMap SBMLid="Ras_slash_GAP_slash_GAP_minus_inact_minus_ras_slash_GAP_minus_inact_minus_ras_cplx" COPASIkey="Metabolite_138"/>
    <SBMLMap SBMLid="Ras_slash_GAP_star" COPASIkey="Metabolite_136"/>
    <SBMLMap SBMLid="Ras_slash_GDP_minus_Ras" COPASIkey="Metabolite_135"/>
    <SBMLMap SBMLid="Ras_slash_GEF_star" COPASIkey="Metabolite_132"/>
    <SBMLMap SBMLid="Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_1" COPASIkey="Reaction_161"/>
    <SBMLMap SBMLid="Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_2" COPASIkey="Reaction_162"/>
    <SBMLMap SBMLid="Ras_slash_GEF_star_slash_GEF_star_minus_act_minus_ras_slash_GEF_star_minus_act_minus_ras_cplx" COPASIkey="Metabolite_133"/>
    <SBMLMap SBMLid="Ras_slash_GTP_minus_Ras" COPASIkey="Metabolite_134"/>
    <SBMLMap SBMLid="Ras_slash_Ras_minus_intrinsic_minus_GTPase" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="Ras_slash_dephosph_minus_GAP" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="Ras_slash_dephosph_minus_GEF" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="Ras_slash_inact_minus_GEF" COPASIkey="Metabolite_130"/>
    <SBMLMap SBMLid="Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_1" COPASIkey="Reaction_159"/>
    <SBMLMap SBMLid="Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_2" COPASIkey="Reaction_160"/>
    <SBMLMap SBMLid="Ras_slash_inact_minus_GEF_slash_basal_GEF_activity_slash_basal_GEF_activity_cplx" COPASIkey="Metabolite_131"/>
    <SBMLMap SBMLid="Rheb_minus_GDP" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="Rheb_minus_GTP" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="S6K_basal" COPASIkey="Metabolite_90"/>
    <SBMLMap SBMLid="S6K_basal_slash_CaMKIII_basal_1" COPASIkey="Reaction_117"/>
    <SBMLMap SBMLid="S6K_basal_slash_CaMKIII_basal_2" COPASIkey="Reaction_118"/>
    <SBMLMap SBMLid="S6K_basal_slash_CaMKIII_basal_slash_CaMKIII_basal_cplx" COPASIkey="Metabolite_91"/>
    <SBMLMap SBMLid="S6K_thr_minus_252" COPASIkey="Metabolite_73"/>
    <SBMLMap SBMLid="S6K_thr_minus_252_slash_S6_phospho_1" COPASIkey="Reaction_111"/>
    <SBMLMap SBMLid="S6K_thr_minus_252_slash_S6_phospho_2" COPASIkey="Reaction_112"/>
    <SBMLMap SBMLid="S6K_thr_minus_252_slash_S6_phospho_slash_S6_phospho_cplx" COPASIkey="Metabolite_75"/>
    <SBMLMap SBMLid="S6K_thr_minus_252_slash_camkIII_phospho_1" COPASIkey="Reaction_109"/>
    <SBMLMap SBMLid="S6K_thr_minus_252_slash_camkIII_phospho_2" COPASIkey="Reaction_110"/>
    <SBMLMap SBMLid="S6K_thr_minus_252_slash_camkIII_phospho_slash_camkIII_phospho_cplx" COPASIkey="Metabolite_74"/>
    <SBMLMap SBMLid="S6Kinase_slash_40S_inact" COPASIkey="Metabolite_176"/>
    <SBMLMap SBMLid="S6Kinase_slash_S6K" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="S6Kinase_slash_S6K_star" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="S6Kinase_slash_S6K_thr_minus_412" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_1" COPASIkey="Reaction_107"/>
    <SBMLMap SBMLid="S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_2" COPASIkey="Reaction_108"/>
    <SBMLMap SBMLid="S6Kinase_slash_S6K_thr_minus_412_slash_S6_phos_slash_S6_phos_cplx" COPASIkey="Metabolite_56"/>
    <SBMLMap SBMLid="S6Kinase_slash_S6_dephosph" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="Shc_star" COPASIkey="Metabolite_100"/>
    <SBMLMap SBMLid="Shc_star_dot_Sos_dot_Grb2" COPASIkey="Metabolite_141"/>
    <SBMLMap SBMLid="Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_1" COPASIkey="Reaction_167"/>
    <SBMLMap SBMLid="Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_2" COPASIkey="Reaction_168"/>
    <SBMLMap SBMLid="Shc_star_dot_Sos_dot_Grb2_slash_Sos_dot_Ras_GEF_slash_Sos_dot_Ras_GEF_cplx" COPASIkey="Metabolite_142"/>
    <SBMLMap SBMLid="Sos_slash_Grb2_bind_Sos" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="Sos_slash_Grb2_bind_Sos_star" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="Sos_slash_Shc_bind_Sos_dot_Grb2" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="Sos_slash_Sos" COPASIkey="Metabolite_146"/>
    <SBMLMap SBMLid="Sos_slash_Sos_dot_Grb2" COPASIkey="Metabolite_144"/>
    <SBMLMap SBMLid="Sos_slash_Sos_star" COPASIkey="Metabolite_145"/>
    <SBMLMap SBMLid="Sos_slash_Sos_star_dot_Grb2" COPASIkey="Metabolite_143"/>
    <SBMLMap SBMLid="Sos_slash_dephosph_Sos" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="TOR_Rheb_minus_GTP_clx" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_1" COPASIkey="Reaction_101"/>
    <SBMLMap SBMLid="TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_2" COPASIkey="Reaction_102"/>
    <SBMLMap SBMLid="TOR_Rheb_minus_GTP_clx_slash_S6K_phospho_slash_S6K_phospho_cplx" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_1" COPASIkey="Reaction_103"/>
    <SBMLMap SBMLid="TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_2" COPASIkey="Reaction_104"/>
    <SBMLMap SBMLid="TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_phospho_slash_TOR_4E_minus_BP_phospho_cplx" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_star_1" COPASIkey="Reaction_105"/>
    <SBMLMap SBMLid="TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_star_2" COPASIkey="Reaction_106"/>
    <SBMLMap SBMLid="TOR_Rheb_minus_GTP_clx_slash_TOR_4E_minus_BP_star_slash_TOR_4E_minus_BP_star_cplx" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="TSC1_minus_TSC2" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="TSC1_minus_TSC2_slash_TSC2phospho_1" COPASIkey="Reaction_99"/>
    <SBMLMap SBMLid="TSC1_minus_TSC2_slash_TSC2phospho_2" COPASIkey="Reaction_100"/>
    <SBMLMap SBMLid="TSC1_minus_TSC2_slash_TSC2phospho_slash_TSC2phospho_cplx" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="TrKB_mod_slash_Autophos_TrKB" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="TrKB_mod_slash_BDNF_TrkB2_clx" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="TrKB_mod_slash_BDNF_TrkB2_star_clx" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_1" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_2" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_PLC_g_phospho_slash_PLC_g_phospho_cplx" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_1" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_2" COPASIkey="Reaction_92"/>
    <SBMLMap SBMLid="TrKB_mod_slash_BDNF_TrkB2_star_clx_slash_Shc_phospho_slash_Shc_phospho_cplx" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="TrKB_mod_slash_BDNF_TrkB_clx" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="TrKB_mod_slash_Dimeriz_TrKB" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="TrKB_mod_slash_Int_BDNF_TrKB2_star_clx" COPASIkey="Metabolite_174"/>
    <SBMLMap SBMLid="TrKB_mod_slash_LR_Internalize" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="TrKB_mod_slash_LR_cycling" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="TrKB_mod_slash_Ligand_binding" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="TrKB_mod_slash_PLC_g_star_dephospho" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_1" COPASIkey="Reaction_93"/>
    <SBMLMap SBMLid="TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_2" COPASIkey="Reaction_94"/>
    <SBMLMap SBMLid="TrKB_mod_slash_Shc_star_Grb2_minus_Gab1_PI3K_clx_slash_Phospho_slash_Phospho_cplx" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="TrKB_mod_slash_TrKB" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="Translation_clx" COPASIkey="Metabolite_92"/>
    <SBMLMap SBMLid="Translation_clx_slash_pro_syn_1" COPASIkey="Reaction_119"/>
    <SBMLMap SBMLid="Translation_clx_slash_pro_syn_2" COPASIkey="Reaction_120"/>
    <SBMLMap SBMLid="Translation_clx_slash_pro_syn_slash_pro_syn_cplx" COPASIkey="Metabolite_93"/>
    <SBMLMap SBMLid="Translation_clx_slash_rad_pro_syn_1" COPASIkey="Reaction_121"/>
    <SBMLMap SBMLid="Translation_clx_slash_rad_pro_syn_2" COPASIkey="Reaction_122"/>
    <SBMLMap SBMLid="Translation_clx_slash_rad_pro_syn_slash_rad_pro_syn_cplx" COPASIkey="Metabolite_94"/>
    <SBMLMap SBMLid="activation" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="basal_S6K" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="default_compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="degraded_protein" COPASIkey="Metabolite_96"/>
    <SBMLMap SBMLid="dephosp_CaMKIII" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="eEF2" COPASIkey="Metabolite_80"/>
    <SBMLMap SBMLid="eEFthr_minus_56" COPASIkey="Metabolite_81"/>
    <SBMLMap SBMLid="eIF4A" COPASIkey="Metabolite_64"/>
    <SBMLMap SBMLid="eIF4E" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="eIF4E_minus_BP_disso" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="eIF4F" COPASIkey="Metabolite_66"/>
    <SBMLMap SBMLid="eIF4F_clx" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="eIF4F_mRNA_clx" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="eIF4F_minus_mRNA_clx" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="eIF4G" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="eIF4G_A_clx" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="eIF4G_minus_A_clx" COPASIkey="Metabolite_63"/>
    <SBMLMap SBMLid="elongation" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="geometry" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="geometry_sbo_10_sbc_" COPASIkey="Compartment_11"/>
    <SBMLMap SBMLid="geometry_sbo_11_sbc_" COPASIkey="Compartment_12"/>
    <SBMLMap SBMLid="geometry_sbo_12_sbc_" COPASIkey="Compartment_13"/>
    <SBMLMap SBMLid="geometry_sbo_13_sbc_" COPASIkey="Compartment_14"/>
    <SBMLMap SBMLid="geometry_sbo_14_sbc_" COPASIkey="Compartment_15"/>
    <SBMLMap SBMLid="geometry_sbo_15_sbc_" COPASIkey="Compartment_16"/>
    <SBMLMap SBMLid="geometry_sbo_16_sbc_" COPASIkey="Compartment_17"/>
    <SBMLMap SBMLid="geometry_sbo_1_sbc_" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="geometry_sbo_2_sbc_" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="geometry_sbo_3_sbc_" COPASIkey="Compartment_4"/>
    <SBMLMap SBMLid="geometry_sbo_4_sbc_" COPASIkey="Compartment_5"/>
    <SBMLMap SBMLid="geometry_sbo_5_sbc_" COPASIkey="Compartment_6"/>
    <SBMLMap SBMLid="geometry_sbo_6_sbc_" COPASIkey="Compartment_7"/>
    <SBMLMap SBMLid="geometry_sbo_7_sbc_" COPASIkey="Compartment_8"/>
    <SBMLMap SBMLid="geometry_sbo_8_sbc_" COPASIkey="Compartment_9"/>
    <SBMLMap SBMLid="geometry_sbo_9_sbc_" COPASIkey="Compartment_10"/>
    <SBMLMap SBMLid="labelling" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="mRNA" COPASIkey="Metabolite_67"/>
    <SBMLMap SBMLid="mTOR_model_slash_Rheb_minus_GTP_bind_TORclx" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="mTOR_model_slash_TOR_minus_clx" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="num_40S" COPASIkey="Metabolite_62"/>
    <SBMLMap SBMLid="num_40S_basal" COPASIkey="Metabolite_166"/>
    <SBMLMap SBMLid="num_40S_basal_slash_basal_1" COPASIkey="Reaction_173"/>
    <SBMLMap SBMLid="num_40S_basal_slash_basal_2" COPASIkey="Reaction_174"/>
    <SBMLMap SBMLid="num_40S_basal_slash_basal_slash_basal_cplx" COPASIkey="Metabolite_167"/>
    <SBMLMap SBMLid="num_43S_complex_slash_QR_binds_M" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="num_43S_complex_slash_Q_binds_R" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="num_43S_complex_slash_Q_dot_R" COPASIkey="Metabolite_70"/>
    <SBMLMap SBMLid="num_43S_complex_slash_Quaternary_clx" COPASIkey="Metabolite_72"/>
    <SBMLMap SBMLid="num_43S_complex_slash_RM" COPASIkey="Metabolite_71"/>
    <SBMLMap SBMLid="num_43S_complex_slash_RM_binds_Q" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="num_43S_complex_slash_R_binds_M" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="num_43Scomplex" COPASIkey="Metabolite_147"/>
    <SBMLMap SBMLid="num_4E_minus_BP_mod_slash_4E_minus_BP" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="num_4E_minus_BP_mod_slash_4E_minus_BP_thr37_46_s65" COPASIkey="Metabolite_58"/>
    <SBMLMap SBMLid="num_4E_minus_BP_mod_slash_eIF4E_4E_minus_BP_t37_46_s65" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="num_4E_minus_BP_mod_slash_eIF4E_bind_BP2" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="num_4E_minus_BP_mod_slash_eIF4E_minus_BP" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="num_4E_minus_BP_mod_slash_eIF4E_minus_BP2_disso" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="num_4E_minus_BP_mod_slash_eIF4E_minus_BP_thr37_46" COPASIkey="Metabolite_60"/>
    <SBMLMap SBMLid="num_4E_minus_BP_t37_46" COPASIkey="Metabolite_168"/>
    <SBMLMap SBMLid="num_60S_R" COPASIkey="Metabolite_177"/>
    <SBMLMap SBMLid="num_80S_ribos_clx" COPASIkey="Metabolite_98"/>
    <SBMLMap SBMLid="pep_elongation" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="peptide" COPASIkey="Metabolite_95"/>
    <SBMLMap SBMLid="protein" COPASIkey="Metabolite_97"/>
    <SBMLMap SBMLid="protein_deg" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="rad_AA" COPASIkey="Metabolite_162"/>
    <SBMLMap SBMLid="rad_deg_pro" COPASIkey="Metabolite_165"/>
    <SBMLMap SBMLid="rad_pep_elongation" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="rad_peptide" COPASIkey="Metabolite_163"/>
    <SBMLMap SBMLid="rad_protein" COPASIkey="Metabolite_164"/>
    <SBMLMap SBMLid="rad_protein_deg" COPASIkey="Reaction_58"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:37Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:37Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:37Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:37Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:37Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-21T11:45:37Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
