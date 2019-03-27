<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
  	<xsl:template match="/">
       	<html>
            <body>
				<div style="text-align:center;"><img src="../assets/img/logo.png" alt="logo"/></div>
				<div style="padding: 30px;">
					<xsl:for-each select="人员/名片">
						<xsl:apply-templates select="."/>
					</xsl:for-each>
				</div>
            </body>
       	</html>
   	</xsl:template>

	<xsl:template match="人员/名片">
		<div style="margin: 30px auto; padding:20px; background: linear-gradient(to right, rgba(118,75,196,.3), rgba(187,165,225,.1) 20%, rgba(118,75,196,.3) 60%, rgba(59, 59, 59, .5));  border-radius:3px; box-shadow:0 2px 2px 0 rgba(0,0,0,.16), 0 0 0 1px rgba(0,0,0,.08)">
			<h1 style="text-align:center">个人名片</h1>
			<hr/>
			<div style="font-size: 24px">
				<div style="float: left; margin: 10px 10%">姓名: <xsl:value-of select="姓名"/></div>
				<div style="float: left; margin: 10px 10%">性别: <xsl:value-of select="性别"/></div>
				<div style="float: left; margin: 10px 10%">年龄: <xsl:value-of select="年龄"/>岁</div>
			</div>
			<div style="clear:both;height:0px;"></div>
			<hr/>
			<div style="float: left; margin: 10px 15%">
				<xsl:apply-templates select="身份"/>
			</div>
			<div style="float: left; margin: 10px 15%">
				<xsl:apply-templates select="联系方式"/>
			</div>
			<div style="clear:both;height:0px;"></div>
		</div>
	</xsl:template>

	<xsl:template match="人员/名片/联系方式">
		<h2>联系我: </h2>
		<span>手机: </span>
		<xsl:value-of select="手机"/><br/>
		<span>邮箱: </span>
		<xsl:value-of select="邮箱"/><br/>
	</xsl:template>

	<xsl:template match="人员/名片/身份">
		<h2>就读于: </h2>
		<xsl:value-of select="名称/@单位"/><br/>
		<span>学历: </span>
		<xsl:value-of select="名称"/><br/>
	</xsl:template>
</xsl:stylesheet>
