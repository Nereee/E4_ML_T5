<?php
session_start();
?>

<?php

/* DOM dokumentu berri bat sortzen dugu XSLT arauekin eta XML datuekin */

   $arauak = new DOMDocument();
   $arauak ->load("../XML/departamentua.xsl");

   $datuak = new DOMDocument();
   $datuak->load("../XML/langileak.xml");

/* Arau horiek aplikatzeko "motor" bat sortzen dugu. Transformazio-arauak kargatuko dizkizugu. Arau horiek aplikatuko dizkiogu dokumentuari */

   $proc = new XSLTProcessor();
   $proc->importStylesheet($arauak);

   echo $proc->transformToXML($datuak);

?>