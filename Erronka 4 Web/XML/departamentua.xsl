<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" version="5"></xsl:output>
  <xsl:template match="enpresak">
    <html>
      <head>
        <title>Elorrieta zinema | Home</title>
        <meta charset="UTF-8" />
        <meta name="keywords" content="ElorrietaMusic, musika, podcast, playlist" />
        <meta name="author" content="FloppyClub" />
        <meta name="description" content="ElorrietaMusic webgunea. Hurrengo HTMLa FloppyClub egin du." />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="../CSS/style.css" />
        <link rel="stylesheet" href="../CSS/main.css" />
        <link rel="stylesheet" href="../CSS/departamentua.css"/>
        <style>
          /* Aquí va el CSS para los departamentos */
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
              <a href="departamentua.php">Departamenduak</a>
            </li>
            <li>
              <a href="langileak.php">Langileak</a>
            </li>
          </ul>
        </nav>
        <main>
          <div id="departamentuak-container">
            <div class="departamentuak-group">
              <xsl:apply-templates select="departamentuak[position() &lt;= 4]" />
            </div>
            <div class="departamentuak-group">
              <xsl:apply-templates select="departamentuak[position() &gt; 4]" />
            </div>
          </div>
        </main>
      </body>
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
  
  <xsl:template match="departamentua">
    <div class="departamentuak_info">
      <img src="../IMG/departamento.png" alt="Departamentu Argazkia" class="departamentua_img" />
      <h3><xsl:value-of select="izena" /></h3>
      <p>
        <strong>Mugikorra:</strong> 
        <xsl:value-of select="mugikorra" /><br />
        <strong>E-posta:</strong> 
        <xsl:value-of select="e-posta" /><br />
        <strong>Deskribapena:</strong> 
        <xsl:value-of select="deskribapena" /><br />
      </p>
    </div>
  </xsl:template>
</xsl:stylesheet>
