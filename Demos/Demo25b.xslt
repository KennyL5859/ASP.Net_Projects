<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="no" omit-xml-declaration="yes"/>

    <xsl:template match="/">
      <table>
        <tr>
          <th>State Name</th>
          <th>State Abbreviation</th>
        </tr>
  
        <xsl:for-each select="States/State|States/Other">
          <xsl:sort select="@Name"/>
          <tr>
            <td>
              <a>
                <xsl:attribute name="href">
                  <xsl:value-of select="concat('https://en.wikipedia.org/wiki/', @Name)"/>
                </xsl:attribute>
                <xsl:value-of select="@Name"/>
              </a>              
            </td>
            <td>
              <xsl:value-of select="@Abbreviation"/>
            </td>
          </tr>
        </xsl:for-each>


        
      </table>
    </xsl:template>

</xsl:stylesheet>
