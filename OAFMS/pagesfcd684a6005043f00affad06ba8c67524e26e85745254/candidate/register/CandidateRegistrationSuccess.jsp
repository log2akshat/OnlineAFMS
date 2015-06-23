<%@ taglib prefix="s" uri="/struts-tags" %>

<style type="text/css">
<!--
.style1 {font-size: 125%; font-weight: bold; color: #15317E}
.style2 {font-weight: bold; color: #15317E; background-color: #CCCCFF}
.style3 {color: #15317E; background-color: #E6E6FA}
-->
</style>

<!-- CSS Scripts -->
<link rel="stylesheet" type="text/css" href="<s:url value="/css/Button.css"/>">

<div id="heading">
<h2> <s:text name="title_registration"/> </h2>
</div>

<div id="index">	
<span class="style1"><s:text name="app_RegSuccess1"/></span>
<br>
<br>
<s:text name="app_RegSuccess2"/>
<br>
<br>
<table align="center" width="372" height="70">
	<tr>
		<td class="style2"><s:text name="regs_name"/></td> 
		<td class="style3"><%=request.getParameter("register.name")%></td>
	</tr>
	<tr>
		<td class="style2"><s:text name="regs_email"/></td> 
		<td class="style3"><%=request.getParameter("register.email")%></td>
	</tr>
</table>

<br>
<p align="justify">
<s:text name="app_RegSuccess3"/>	  
</p>	    
</div>

<div align="right">
<!-- Apply Button -->
	<s:form method="POST" action="Apply">			
				<s:submit name="submit" id="submit" key="apply" theme="css_xhtml"/>
	</s:form>
</div>	