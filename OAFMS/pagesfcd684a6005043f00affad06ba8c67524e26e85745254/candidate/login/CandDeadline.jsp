<%@ page language="java" session="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ page language="java" contentType="text/html" import="java.util.*"%>

<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    
<!-- CSS Scripts -->
<link rel="stylesheet" type="text/css" href="<s:url value="/css/table.css"/>">
       
<style type="text/css">
<!--
#applyindex_deadline {
        width: 600px;
        font-size: 15px;
        margin-top: 180px;
        margin-left: 80px;
        }
-->
</style>

</head>      

<body>

<div id="applyindex_deadline">
<font color="red"><s:text name="update_deadline"/></font>
</div>

<br><br><br><br>

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
