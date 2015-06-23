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
<div id="adminacc_heading"><s:text name="view_candprofile"/></div>

	<s:if test="hasActionErrors()">
	<div class="error_alreadyapp">
	<s:actionerror/>
	</div>
	</s:if>
	
	<s:form method="POST" action="SCOFDRProcess" tooltipConfig="#{'tooltipIcon':'../images/tooltip.png'}" onsubmit="return validateForm()">
	<tr><td align="center" colspan="2"><s:text name="enter_detail"/></td></tr>
	<s:textfield name="oid" key="refapply_oid" required="true" onpaste="return false" tooltip="Enter candidate's OnlineID" onKeyPress="return numbersonly(event, false)"/>
	<s:submit key="get_data" id ="submit" align="center"/>
	</s:form>


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
		<s:url id="logout" action="logoutAction"/>
		<s:a href="%{logout}"></s:a>
	</s:else>

    </body>
</html>
