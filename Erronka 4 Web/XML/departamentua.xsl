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
              <a href="main.html">Home</a>
            </li>
            <li>
              <a href="langileak.php">Langileak</a>
            </li>
            <li>
              <a href="departamentua.php">Departamenduak</a>
            </li>
            <li>
              <a href="login.php">Login</a>
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
