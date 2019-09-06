<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
	<html>
	<head>
	<style>
  		table, tr, th, td {border: 1px double black;}
  		.bgred { background-color: red; color: white; }
	</style>
	</head>
	<body>
	<h1>List of Clients</h1>
	<table>
		<tr>
			<th>Name</th>
			<th>Phone</th>
			<th>Email</th>
			<th>Account Total</th>
		</tr>
		<xsl:for-each select="Accounts/Client">
		<tr>
			<td><xsl:value-of select="Name"/></td>
			<td><xsl:value-of select="Phone"/></td>
			<td><xsl:value-of select="E-mail"/></td>
			<xsl:choose>
      		<xsl:when test="Account_Total &lt;= 80000">
         		<td class="bgred">
         		<xsl:value-of select="Account_Total"/>
         		</td>
      		</xsl:when>
      		<xsl:otherwise>
				<td><xsl:value-of select="Account_Total"/></td>
			</xsl:otherwise>
      		</xsl:choose>
		</tr>
		</xsl:for-each>
	</table>
	</body>
</html>


</xsl:template>

</xsl:stylesheet>