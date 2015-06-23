<%@ page language="java" session="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html" import="java.util.*"%>

<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href="<s:url value="/css/login.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/table.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/Button.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/adminStyle.css"/>">

<!-- JavaScript -->
<script type="text/javascript" language="javascript" src="<s:url value="/JS/Registration.js"/>"> </script>

<style type="text/css">
<!--
table {
margin-left: 150px;
margin-top: 145px;
font-size: 115%;
}
-->
</style>

</head>      
<body>
<div id="adminacc_heading"><s:text name="send_Ref1Passwd"/></div>

	<s:if test="hasActionErrors()">
	<div class="error_alreadyapp">
	<s:actionerror/>
	</div>
	</s:if>
	
	<s:form method="POST" action="Ref1PasswdProcess" tooltipConfig="#{'tooltipIcon':'../images/tooltip.png'}">
	<tr><td align="center" colspan="2"><s:text name="select_ref1Passwd"/></td></tr>
				
	 <s:select name="oid" key="app_Name"
	 headerKey="" headerValue="---- Select Applicant----" list="%{appid}"/>
	 
	<s:submit key="get_preview" id ="submit" align="center"/>
	</s:form>


<!--  	
	<s:url id="addemp" action="addEmployeeAction"/>
	<s:a href="%{addemp}" >Add Employee</s:a><br><br>
	
	<b>Session Time: </b><%=new Date(session.getLastAccessedTime())%></b> 
-->	
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
