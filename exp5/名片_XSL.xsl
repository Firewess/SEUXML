<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
  	<xsl:template match="/">
       	<html>
			<script>
			<![CDATA[
				function changeLogo() {
					var svg = document.getElementsByTagName("embed")[0]
					var srcStr = svg.getAttribute("src")
					var reg = /(\w+)(\d)\.svg/
					var num = srcStr.match(reg)[2]
					let newNum = num == 3 ? 1 : parseInt(num) + 1
					let newSrc = srcStr.replace(reg, "$1"+newNum+".svg")
					console.log(newSrc)
					svg.setAttribute("src", newSrc)
				}
				]]>
			</script>
            <body>
				<div style="text-align:center; height:200px; margin-top:50px"
						onclick="changeLogo()">
					<embed src="../assets/img/exp5/logo2.svg"
						type="image/svg+xml"
						pluginspage="http://www.adobe.com/svg/viewer/install/"/>
				</div>
				<div style="
				display: -webkit-flex;
                display: flex;
                -webkit-flex-wrap: wrap;
                flex-wrap: wrap;
                -webkit-justify-content: space-around;
                justify-content: space-around;
                width: 100%;
				padding: 30px;">
					<xsl:for-each select="人员/名片">
						<xsl:apply-templates select="."/>
					</xsl:for-each>
				</div>
            </body>
       	</html>
   	</xsl:template>

	<xsl:template match="人员/名片">
		<div style="width:25%; height: 600px;margin: 30px auto; padding:20px; background: linear-gradient(to bottom, rgba(118,75,196,.3), rgba(187,165,225,.1) 20%, rgba(118,75,196,.3) 60%, rgba(59, 59, 59, .5));  border-radius:3px; box-shadow:0 2px 2px 0 rgba(0,0,0,.16), 0 0 0 1px rgba(0,0,0,.08)">
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
		<h3>
			<span>手机: </span>
			<xsl:value-of select="手机"/><br/>
			<span>邮箱: </span>
			<xsl:value-of select="邮箱"/><br/>
		</h3>
	</xsl:template>

	<xsl:template match="人员/名片/身份">
		<h2>就读于: </h2>
		<h3>
			<xsl:value-of select="名称/@单位"/><br/>
			<span>学历: </span>
			<xsl:value-of select="名称"/><br/>
		</h3>
	</xsl:template>
</xsl:stylesheet>