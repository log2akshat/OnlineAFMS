<%@ page language="java" session="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html" import="java.util.*"%>

<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href="<s:url value="/css/login.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/table.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/Button.css"/>">
        
<style type="text/css">
<!--
table {
margin-left: 150px;
margin-top: 80px;
font-size: 115%;
}
-->
</style>

<script type="text/javascript" language="javascript" src="<s:url value="/JS/Back.js"/>"> </script>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/tip.js"/>"> </script>
</head>      
<body>
<div id="adminacc_heading"><s:text name="SC_Profile_Update"/></div>

<s:iterator value="userlistlist" var="userlist">

<s:form method="POST" action="SCUpdateFinal" validate ="true">

<tr><td><s:text name="regid"/></td>
<td><s:property value="ID"/></td></tr>

<s:textfield name="Name" key="sc_name" required="true" size="25" onpaste="return false" onKeyPress="return alphaonly(event, false)"/>

<tr><td><s:text name="admin_uname"/> <span onmouseover="Tip('The Username will be updated automatically')" onmouseout="UnTip()"><font color="red">?</font></span></td>
<td><s:property value="Username"/></td></tr>

<s:textfield name="Email" key="sc_email" required="true" size="25" onpaste="return false"/>

<s:submit key="update_data" id ="submit" align="center"/>
</s:form>
</s:iterator>

<br><br>
<input type="submit" id ="submit" name="Previous View" value="Last View" onclick="backPage();"/>
<!--  	
	<s:url id="addemp" action="addEmployeeAction"/>
	<s:a href="%{addemp}" >Add Employee</s:a><br><br>
	
	<b>Session Time: </b><%=new Date(session.getLastAccessedTime())%></b> 
-->	
	<s:set name="user" value="#session['User']"/>
	
	<s:if test="%{#user==null}">
	<META HTTP-EQUIV="Refresh" CONTENT="0;URL=<s:text name="refresh_url_sc"/>">
	</s:if>
	
	<s:else>
		<s:url id="logout" action="adminlogoutAction"/>
		<s:a href="%{logout}"></s:a>
	</s:else>

    </body>
</html>
