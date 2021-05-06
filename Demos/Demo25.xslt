<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="no" omit-xml-declaration="yes"/>

    <xsl:template match="/">
      <table>
        <tr>
          <th>Title</th>
          <th>Artist</th>
        </tr>

        <xsl:for-each select="catalog/cd">
          <tr>
            <td>
              <xsl:value-of select="title"/>
            </td>
            <td>
              <xsl:value-of select="artist"/>
            </td>
          </tr>
        </xsl:for-each>
        
      </table>
    </xsl:template>
  
    

</xsl:stylesheet>
