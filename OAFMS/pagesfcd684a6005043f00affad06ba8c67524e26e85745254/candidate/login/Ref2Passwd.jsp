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
margin-top: 110px;
font-size: 115%;
}

.error_yellowlabel{
	font-size: 16px;
	background-color:#FFFDE5;
	border:1px solid #FFE600;
	width:490px;
	height:50px;
	margin-top: 35px;
	margin-left: 100px;
	margin-bottom:-100px;
	}

.error_yellowlabel li{ 
	list-style: none; 
}
-->
</style>

</head>      
<body>

	<s:if test="hasActionErrors()">
	<div class="error_yellowlabel">
	<s:actionerror/>
	</div>
	</s:if>
	
<s:form method="POST" action="Referee2Password">
<s:iterator value="userlistlist" var="userlist">
<tr><td colspan="2" align="center"><s:text name="send_ref2label"></s:text></td></tr>

<tr><td><s:text name="reg_id"/></td>
<td><s:property value="#session['User'].oid" default="Guest"/></td></tr>

<tr><td><s:text name="mail_Referee"/></td>
<td><s:property value="Referee2"/></td></tr>

<tr><td><s:text name="Referee_Email"/></td>
<td><s:property value="Ref2Email"/></td></tr>

</s:iterator>

<s:submit key="Send_Mail" id ="submit" align="center"/>
</s:form>


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
