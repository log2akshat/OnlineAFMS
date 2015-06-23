<%@ page language="java" session="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html" import="java.util.*"%>

<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- CSS Scripts -->
<link rel="stylesheet" type="text/css" href="<s:url value="/css/login.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/table.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/Button.css"/>">

<style type="text/css">
<!--
table {
margin-left: 150px;
margin-top: 110px;
font-size: 115%;
}

.error_yellowlabel{
	font-size: 16px;
	background-color:#FFFDE5;
	border:1px solid #FFE600;
	color: green;
	width:720px;
	height:125px;
	margin-top: 15px;
	margin-left: 40px;
	margin-bottom:-90px;
	}

.error_yellowlabel li{ 
	list-style: none; 
}
-->
</style>
        
</head>      
<body>
<div id="adminacc_heading"><s:text name="excel_print"/></div>
<br>
	<s:if test="hasActionErrors()">
	<div class="error_yellowlabel">
	<s:actionerror/>
	</div>
	</s:if>
	
<table>
<tr>
<td><s:text name="generate_excel"/></td>
<td><s:text name="excel_image"/></td>
</tr>
</table>
	<s:set name="user" value="#session['User']"/>
	
	<s:if test="%{#user==null}">
	<META HTTP-EQUIV="Refresh" CONTENT="0;URL=<s:text name="refresh_url"/>">
	</s:if>
	
	<s:else>
		<s:url id="logout" action="logoutAction"/>
		<s:a href="%{logout}"></s:a>
	</s:else>

    </body>
</html>