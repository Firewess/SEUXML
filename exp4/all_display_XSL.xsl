<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
  	<xsl:template match="/">
       	<html>
	    <head>
	    <meta name="referrer" content="no-referrer" />
	    </head>
            <body style="padding: 3%;">
                <div style="
                display: -webkit-flex;
                display: flex;
                -webkit-flex-wrap: wrap;
                flex-wrap: wrap;
                -webkit-justify-content: space-around;
                justify-content: space-around;
                width: 100%;
                height: 100%;">
                    <xsl:for-each select="animeList/anime">
                        <div style="
                        margin:20px;
                        min-width: 200px;
                        height: 500px;
                        max-width: 300px;
                        text-align: center;
                        background-color:#eee;
                        border-radius:3px; 
                        box-shadow:0 2px 2px 0 rgba(0,0,0,.16), 0 0 0 1px rgba(0,0,0,.08);">
                            <img style="max-width: 100%; max-height: 60%;">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="images/preview"/>
                                </xsl:attribute>
                            </img>
                            <div>
                                <h2 style="margin-bottom:0;">
                                    <xsl:value-of select="name[@language='Chinese'] | name"/>
                                </h2>
                                <xsl:choose>
                                    <xsl:when test="seasons/@current_season">
                                    <h3 style="margin:0 5px 0; text-align: right;">第<xsl:value-of select="seasons/@current_season"/>季</h3>
                                    </xsl:when>
                                    <xsl:otherwise/>
                                </xsl:choose>
                                <h1>
                                    <span style="font-size:16pt;">最小估价:</span>
                                    <xsl:value-of select="price_list/platform/price/@estimated_cost[not(. > ../../price/@estimated_cost)][1]"/> 
                                </h1>
                            </div>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
       	</html>
   	</xsl:template>
</xsl:stylesheet>
