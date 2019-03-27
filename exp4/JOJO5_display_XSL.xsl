<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
  	<xsl:template match="/">
       	<html>
            <body style="padding:200px 100px;background-image:url(http://222.186.12.239:10010/katondge_201811027/001.jpg);">
                <xsl:apply-templates select="animeList/anime[@id='JOJO5']"/>
            </body>
       	</html>
   	</xsl:template>
    <xsl:template match="animeList/anime[@id='JOJO5']">
       	<div style="width:70%;padding:50px;margin:auto;text-align:center; background-color:rgba(255,235,245,.8);border-radius:5px;border:solid 3px rgb(73,35,120);">
            <h1><xsl:value-of select="name"/></h1>
            <h2>周更中</h2>
            <h3><span>类型: </span><xsl:value-of select="type"/></h3>
            <p style="font-size:14pt;"><xsl:value-of select="description"/></p>
            <hr/>
            <div>
                <h2><span>追番平台: </span><xsl:value-of select="price_list/platform/@platform_name"/></h2>
                <div style="
                display: -webkit-flex;
                display: flex;
                -webkit-flex-wrap: wrap;
                flex-wrap: wrap;
                -webkit-justify-content: space-around;
                justify-content: space-around;
                width: 100%;
                background-image:url(../assets/exp4/JOJO5_1.png);
                background-size:contain;">
                    <xsl:for-each select="price_list/platform/price">
                        <div style="
                        margin:20px;
                        padding: 20px;
                        text-align: center;
                        font-size: 16pt;
                        background-color:rgba(255,255,255,.8);
                        border-radius:3px; 
                        box-shadow:0 2px 2px 0 rgba(0,0,0,.16), 0 0 0 1px rgba(0,0,0,.08);">
                            <div style="">
                                <xsl:choose>
                                        <xsl:when test="@period='monthly'">
                                            包月大会员: <xsl:value-of select="."/>每月
                                        </xsl:when>
                                        <xsl:when test="@period='quarterly'">
                                            季度大会员: <xsl:value-of select="."/>每季度
                                        </xsl:when>
                                        <xsl:when test="@period='annually'">
                                            年费大会员: <xsl:value-of select="."/>每年
                                        </xsl:when>
                                        <xsl:otherwise/>
                                </xsl:choose>
                            </div>
                            <div style="font-size:20pt;">预估: ￥<xsl:value-of select="@estimated_cost"/></div>
                        </div>
                    </xsl:for-each>
                </div>
            </div>
        </div>
   	</xsl:template>
</xsl:stylesheet>
