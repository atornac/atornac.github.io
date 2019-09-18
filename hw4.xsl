<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>

<!-- begin root template -->
<xsl:template match="/"> 
	<html>
	<head>
	<title>ABC Financial Startup</title>
	</head>
	
	<body>
	<h1>ABC Financial Startup</h1>
	
	<p align="center"> 
	<img src="financialstartup.jpg" width="120" height="171" />
	</p>
	
	<p>
		We are a very young financial manager company and we are proud
		of our clients.
	</p>
	
	<p>
		We have started with 1 client a little bit more than 10 years 
		ago and now we have 
		<xsl:value-of select="count(Accounts/Client)"/> clients! 
	</p>
	
	<p>
		Our clients are 
		<xsl:for-each select="Accounts/Client/Name">
			<xsl:choose>
				<xsl:when test="position()=last()">
					<xsl:value-of select="concat('and ', First,' ')"/>
					<xsl:value-of select="Last"/>.
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="concat(First,' ')"/>
				<xsl:value-of select="Last"/>,
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</p>
	
	<p> 
		<xsl:value-of select="count(Accounts/Client/Years[. &gt; '7'])"/>
		of our clients are with us for more than 7 years!
	</p>
	
	
	</body>
</html>

</xsl:template> <!--closing bracket of root template-->

<!-- the below should be the last line of this xsl file-->
</xsl:stylesheet>



