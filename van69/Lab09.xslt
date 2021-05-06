<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="no" omit-xml-declaration="yes"/>

    <xsl:template match="/">
        <table>
            <tr>
                <th>Car Brand</th>
                <th>URL</th>
                <th>Impressions</th>
                <th>Image</th>
            </tr>            

            <xsl:for-each select="Advertisements/Ad">
                <xsl:sort select="AlternateText"/>
                <tr>                  
                    <td>
                        <a>
                          <xsl:attribute name="href">
                              <xsl:value-of select="NavigateUrl"/>
                          </xsl:attribute>
                          <xsl:value-of select="AlternateText"/>
                        </a>
                    </td>                  
                    <td>
                      <a>
                        <xsl:attribute name="href">
                          <xsl:value-of select="NavigateUrl"/>
                        </xsl:attribute>
                        <xsl:value-of select="NavigateUrl"/>
                      </a>
                    </td>                  
                    <td>
                        <xsl:value-of select="Impressions"/>
                    </td>
                    <td>
                      <a>
                        <xsl:attribute name="href">
                          <xsl:value-of select="ImageUrl"/>
                        </xsl:attribute>
                        <img>
                          <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"/>
                          </xsl:attribute>
                          <xsl:attribute name="alt">
                            <xsl:value-of select="AlternateText"/>
                          </xsl:attribute>
                        </img>
                      </a>
                  </td>
                </tr>
            </xsl:for-each>
        
        </table>
    
    </xsl:template>

</xsl:stylesheet>
