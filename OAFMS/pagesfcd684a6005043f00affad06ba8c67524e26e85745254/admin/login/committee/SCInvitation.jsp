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
margin-top: 115px;
font-size: 115%;
}

.error_alreadyapp{
	color: #FEA500;
	font-size: 15px;
	background-color:#FFFDE5;
	border:1px solid #FFE600;
	width:360px;
	height:45px;
	margin: -110px;
	margin-left: 155px;
	margin-top: 60px;
	}
.error_alreadyapp li{ 
	list-style: none; 
}
-->
</style>

</head>      
<body>
<div id="adminacc_heading"><s:text name="sc_invitation"/></div>

	<s:if test="hasActionErrors()">
	<div class="error_alreadyapp">
	<s:actionerror/>
	</div>
	</s:if>
	
	<s:form method="POST" action="SCInvitationProcess" validate ="true" tooltipConfig="#{'tooltipIcon':'../images/tooltip.png'}">
	<tr><td align="center" colspan="2"><s:text name="enter_scdetail"/></td></tr>
	<s:textfield name="Scname" key="sc_name" required="true" size="25" onpaste="return false" tooltip="Enter committee member name" onKeyPress="return alphaonly(event, false)"/>
	<s:textfield name="Scemail" key="sc_email" required="true" size="25" onpaste="return false" tooltip="Enter committee member e-mail ID"/>
	<s:submit key="sc_button_invite" id ="submit" align="center"/>
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
