<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Notes Universitàries</title>
                <style>
                    table {
                        width: 300px;
                        border-collapse: collapse;
                        margin-bottom: 20px;
                        background-color: grey;
                    }
                    th {
                        background-color: grey;
                        color: black;
                        text-align: left;
                        padding: 5px;
                        textfont: bold;
                    }
                    td {
                        padding: 5px;
                        border: 1px solid black;
                    }
                    .suspès {
                        background-color: red;
                        color: black;
                    }
                </style>
            </head>
            <body>
                <xsl:apply-templates select="notes/assignatura"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="assignatura">
        <table>
            <tr>
                <th colspan="2">
                    <xsl:value-of select="nom_assignatura"/>
                </th>
            </tr>
            <xsl:apply-templates select="alumnes/alumne"/>
        </table>
        <br/>
    </xsl:template>

<xsl:template match="alumne">
    <tr>
        <td>
            <xsl:attribute name="class">
                <xsl:if test="nota &lt; 5">suspès</xsl:if>
            </xsl:attribute>
            <xsl:value-of select="nom"/>
        </td>
        <td>
            <xsl:attribute name="class">
                <xsl:if test="nota &lt; 5">suspès</xsl:if>
            </xsl:attribute>
            <xsl:value-of select="nota"/>                
        </td>
    </tr>
</xsl:template>

</xsl:stylesheet>
