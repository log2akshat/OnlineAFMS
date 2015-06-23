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
margin-top: 25px;
font-size: 115%;
}
-->
</style>

</head>      
<body>
<div id="adminacc_heading"><s:text name="welcome"/><s:iterator value="adminuserlistlist" var="adminuserlist"><s:property value="Name"/></s:iterator>!</div>

<table class="wwFormTable">
<tr><td colspan="3" align="center"> <s:text name="at_a_glance"/></td></tr>
<tr><td><s:text name="applications_rx"/></td>
<td><s:property value="%{applications}"/></td>
<td><a href="SCCandCombReport.ncra"><s:text name="red_arrow"/></a></td></tr>

<tr><td><s:text name="refereereport_rx"/></td>
<td><s:property value="%{refereereport}"/></td>
<td><a href="SCRefCombReport.ncra"><s:text name="red_arrow"/></a></td></tr>

<tr><td><s:text name="distinctrefreport_rx"/></td>
<td><s:property value="%{distinctrefreport}"/></td>
<td></td></tr>

<tr><td><s:text name="zerorefreport_rx"/></td>
<td><s:property value="%{zerorefreport}"/></td>
<td></td></tr>

<tr><td><s:text name="onerefreport_rx"/></td>
<td><s:property value="%{onerefreport}"/></td>
<td></td></tr>

<tr><td><s:text name="tworefreport_rx"/></td>
<td><s:property value="%{tworefreport}"/></td>
<td></td></tr>

<tr><td><s:text name="selected_count"/></td>
<td><s:property value="%{selected}"/></td>
<td><a href="SCselected.ncra"><s:text name="red_arrow"/></a></td></tr>

<tr><td><s:text name="waiting_count"/></td>
<td><s:property value="%{waiting}"/></td>
<td><a href="SCWaiting.ncra"><s:text name="red_arrow"/></a></td></tr>

<tr><td><s:text name="rejected_count"/></td>
<td><s:property value="%{rejected}"/></td>
<td><a href="SCRejected.ncra"><s:text name="red_arrow"/></a></td></tr>
</table>
<br>

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
