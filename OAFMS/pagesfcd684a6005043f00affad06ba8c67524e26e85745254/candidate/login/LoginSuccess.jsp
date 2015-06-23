<%@ page language="java" session="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html" import="java.util.*"%>

<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href="<s:url value="/css/login.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/table.css"/>">
        
<style type="text/css">
<!--
table {
margin-left: 150px;
margin-top: 110px;
font-size: 115%;
}
-->
</style>

</head>      
<body>

<s:iterator value="userlistlist" var="userlist">
<table class="wwFormTable">
<tr><td><s:text name="regid"/></td>
<td><s:property value="#session['User'].oid" default="Guest"/></td></tr>

<tr><td><s:text name="name"/></td>
<td><s:property value="Name"/></td></tr>

<tr><td><s:text name="DOB"/></td>
<td><s:property value="DOB"/> <s:text name="DOB_format"/></td></tr>

<tr><td><s:text name="gender"/></td>
<td><s:property value="Gender"/></td></tr>

<tr><td><s:text name="email"/></td>
<td><s:property value="Email"/></td></tr>
</table>
</s:iterator>


<!--  	
	<s:url id="addemp" action="addEmployeeAction"/>
	<s:a href="%{addemp}" >Add Employee</s:a><br><br>
	
	<b>Session Time: </b><%=new Date(session.getLastAccessedTime())%></b> 
-->	
	<s:set name="user" value="#session['User']"/>
	
	<s:if test="%{#user==null}">
	<META HTTP-EQUIV="Refresh" CONTENT="0;URL=/INAT/Candidate/Login.ncra">
	</s:if>
	
	<s:else>
		<s:url id="logout" action="logoutAction"/>
		<s:a href="%{logout}"></s:a>
	</s:else>

    </body>
</html>
