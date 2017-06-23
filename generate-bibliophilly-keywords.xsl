<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:sp="urn:schemas-microsoft-com:office:spreadsheet"
    xmlns:o="urn:schemas-microsoft-com:office:office"
    xmlns:x="urn:schemas-microsoft-com:office:excel"
    xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
    xmlns:html="http://www.w3.org/TR/REC-html40"
    exclude-result-prefixes="xs sp o x ss html"
    version="2.0">
    
    <xsl:template match="/">
    <xsl:result-document href="bibliophilly-keywords.xml">
        <encodingDesc xmlns="http://www.tei-c.org/ns/1.0">
        <classDecl>
            <taxonomy xml:id="keywords">
                
                
                
                <xsl:for-each select="//sp:Row">
                    <category>
                        <xsl:variable name="rowNo"><xsl:number/></xsl:variable>
                        <xsl:attribute name="xml:id">keyword_<xsl:value-of select="$rowNo"/></xsl:attribute>
                        <catDesc><xsl:value-of select="sp:Cell[@ss:StyleID='s16']"/></catDesc>
                        <xsl:for-each select="sp:Cell[@ss:StyleID='s17']">
                            <category><xsl:attribute name="xml:id">keyword_<xsl:value-of select="$rowNo"/>.<xsl:number/></xsl:attribute><catDesc><xsl:value-of select="."/></catDesc></category>
                        </xsl:for-each>
                    </category>
                </xsl:for-each>
                
                
                
            </taxonomy>
        </classDecl>
    </encodingDesc></xsl:result-document>
    </xsl:template>
    
</xsl:stylesheet>