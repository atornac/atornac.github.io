<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>

<!-- begin root template -->
<xsl:template match="/"> 
	<html>
	<head>
	<title>List of Clients</title>
	<style type = "text/css">
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
                <xsl:when test = "translate(Account_Total,'$','') &lt;= 80000">
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

</xsl:template> <!--closing bracket of root template-->

<!-- the below should be the last line of this xsl file-->
</xsl:stylesheet>
