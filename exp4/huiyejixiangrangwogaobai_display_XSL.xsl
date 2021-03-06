<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
  	<xsl:template match="/">
       	<html>
            <body style="padding:200px 100px;background-image:url(../assets/img/exp4/huiyejixiangrangwogaobai_1.jpg);background-size:cover;">
                <img style="float: left; width: 30%; min-width:500px;" src="../assets/img/exp4/huiyejixiangrangwogaobai_2.jpg"/>
                <xsl:apply-templates select="animeList/anime[@id='huiyejixiangrangwogaobai']"/>
            </body>
       	</html>
   	</xsl:template>
    <xsl:template match="animeList/anime[@id='huiyejixiangrangwogaobai']">
       	<div style="float:left; width:60%;padding:50px;margin:auto;text-align:center; background-color:rgba(254, 254, 254, .8);border-radius:0 5px 5px 0;">
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
                width: 100%;">
                    <xsl:for-each select="price_list/platform/price">
                        <div style="
                        margin:20px;
                        padding: 20px;
                        text-align: center;
                        font-size: 16pt;
                        color:white;
                        background-color:rgba(216, 5, 46, 1);
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
