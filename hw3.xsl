<?xml version="1.0"?>
<!-- every XSLT style sheet is actually an XML document -->


<!-- specify namespace and declare xsl prefix -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version=1.0">

<xsl:output method="html"/>

<!--create the root template-->
<xsl:template match="/">

<html>
<body>
<h1>List of Clients</h1>
<table>
	<tr>
		<th>Name</th>
		<th>Phone</th>
		<th>Email</th>
		<th>Account Total</th>
	</tr>
	<xsl:for-each select="Account/Client">
	<tr>
		<td><xsl:value-of select"Name"/></td>
		<td><xsl:value-of select"Phone"/></td>
		<td><xsl:value-of select"Email"/></td>
		<td><xsl:value-of select"Account_Total"/></td>
	</tr>
	<xsl:for-each>
	



</table>
</body>
</html>


</xsl:template>

</xsl:stylesheet>