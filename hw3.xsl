<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>

<xsl:template match="/">
	<html>
	<head>
	<style>
  		table, tr, td {border: 2px solid blue;}
  		
  		.boldredrt 
  				{
  				font-weight: 
  				bold; color: red;
  				text-align: right;
  				}
  		
  		.rj	{text-align: right;}
  		
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
      		<xsl:when test="Account_Total&lt;=&#36;80000">
         		<td class="boldredrt">
         		<xsl:value-of select="Account_Total"/>
         		</td>
      		</xsl:when>
      		<xsl:otherwise>
				<td class="rj">
					<xsl:value-of select="Account_Total"/>
				</td>
			</xsl:otherwise>
      		</xsl:choose>
		</tr>
		</xsl:for-each>
	</table>
	</body>
</html>


</xsl:template>

</xsl:stylesheet>
