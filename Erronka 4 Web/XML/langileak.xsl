<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" version="5"></xsl:output>
  <xsl:template match="enpresak">
    <html>
      <head>
        <title>Elorrieta zinema | Home</title>
        <meta charset="UTF-8" />
        <meta name="keywords" content="ElorrietaMusic, musika, podcast, playlist" />
        <meta name="author" content="ElorrietaMusic Taldea" />
        <meta name="description" content="ElorrietaMusic. Hurrengo HTMLa T5 taldea egin du."/>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="../CSS/style.css" />
        <link rel="stylesheet" href="../CSS/main.css" />
        <link rel="stylesheet" href="../CSS/langileak.css" />
        <style>

        </style>
      </head>
      <body>
        <!-- Headerra eta bere nav barruan kategoriekin -->
        <nav id="menua">
          <ul>
            <li>
              <a href="main.html">Hasiera</a>
            </li>
            <li>
              <a href="langileak.php">Langileak</a>
            </li>
            <li>
              <a href="departamentua.php">Departamenduak</a>
            </li>
          </ul>
        </nav>
        <main>
          <div id="langileak-container">
            <xsl:apply-templates select="langileak/langilea[position() &lt;= 8]" mode="group1" />
            <xsl:apply-templates select="langileak/langilea[position() &gt; 8]" mode="group2" />
          </div>
         
        </main>
      </body>
      <!-- Footer -->
      <footer>
        <div id="footertext">
          <p>
            Agirre Lehendakariaren Etorb., 184
            48015 - Bilbo
            Autobusa: 70,46.
            Metroa: San Ignazio, Asturias irteera <br />
            Telefonoa: 944 02 80 00 <br />
            Email: elorrietamusic@gmail.com
          </p>
        </div>
        <div>
          <a href="https://www.instagram.com/" target="_blank"><img class="szicon" src="../IMG/instagram_icon_146245.png" alt="Instagram logo" /></a>
          <a href="https://twitter.com/?lang=es" target="_blank"><img class="szicon" src="../IMG/X.jpg" alt="X logo" /></a>
        </div>
      </footer>
    </html>
  </xsl:template>

  <!--Horrela irudikatuta dago 16 langileak banatu ahal izateko css ezberdinekin horretarako bi talde sortu dira group eta groupb-->
  <xsl:template match="langilea" mode="group1">
    <div class="langile-info">
      <img src="../IMG/Langilea.png" alt="Langilearen Argazkia" class="langilea_img" />
      <p>
        <strong>Izena:</strong>
        <xsl:value-of select="izena" />
        <br />
        <strong>Abizena:</strong>
        <xsl:value-of select="abizena" />
        <br />
        <strong>Jaiotze Urtea:</strong>
        <xsl:value-of select="jaiotzeUrtea" />
        <br />
        <strong>Helbidea:</strong>
        <xsl:value-of select="helbidea/herria" />
        <br />
        <strong>Ardura:</strong>
        <xsl:apply-templates select="//ardurak/ardura[@idard = current()/ardura/@idard]" />
      </p>
    </div>
  </xsl:template>
    <xsl:template match="langilea" mode="group2">
      <div class="langile-info">
        <img src="../IMG/langile2.png" alt="Langilearen Argazkia" class="langilea_img" />
        <p>
          <strong>Izena:</strong>
          <xsl:value-of select="izena" />
          <br />
          <strong>Abizena:</strong>
          <xsl:value-of select="abizena" />
          <br />
          <strong>Jaiotze Urtea:</strong>
          <xsl:value-of select="jaiotzeUrtea" />
          <br />
          <strong>Helbidea:</strong>
          <xsl:value-of select="helbidea/herria" />
          <br />
          <strong>Ardura:</strong>
          <xsl:apply-templates select="//ardurak/ardura[@idard = current()/ardura/@idard]" />
        </p>
      </div>
<!--hemen langile bakoitzeko ardurak ateratzen gaude-->
</xsl:template>
      <xsl:template match="ardura">
          <xsl:value-of select="izena" />
      </xsl:template>
</xsl:stylesheet>
