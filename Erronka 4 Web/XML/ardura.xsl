<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" version="5"></xsl:output>
<xsl:template match="enpresa">
<html lang="eu">
<body>
   <!-- Headerra eta bere nav barruan kategoriekin -->
   <nav id="menua">
    <ul>
        <li><a href="main.html">Home</a></li>
        <li><a href="langileak.php">Langileak</a></li>
        <li><a href="departamenduak.php">Departamenduak</a></li>
        <li><a href="login.php">Login</a></li>
    </ul>
   </nav> 
   <main>
      <!--DEPARTAMENDUA TAULA -->
      <h2>Ardurak</h2>
        <table border="1">
        <thead>
        <tr>
        <th>ardura</th>
        <th>izena</th>
         </tr>
         </thead>
            <xsl:for-each select="departamentuak">
            <tr>
            <td><xsl:value-of select="ardura"/></td>
            <td><xsl:value-of select="izena"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </main>
</body>
</html>
  </xsl:template>
</xsl:stylesheet>
