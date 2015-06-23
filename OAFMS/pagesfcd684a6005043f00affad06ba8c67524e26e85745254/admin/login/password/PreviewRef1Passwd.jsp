<%@ page language="java" session="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html" import="java.util.*"%>

<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href="<s:url value="/css/Button.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/adminStyle.css"/>">

<!-- JavaScript -->
<script type="text/javascript" language="javascript" src="<s:url value="/JS/Registration.js"/>"> </script>

<style type="text/css">
<!--
table {
margin-left: 480px;
margin-top: 15px;
}

#mail {
	margin-left: 20px;
	margin-top: 30px;
	font: large;
}

.error_yellowlabel{
	font-size: 16px;
	background-color:#FFFDE5;
	border:1px solid #FFE600;
	width:490px;
	height:50px;
	margin-top: 35px;
	margin-left: 100px;
	margin-bottom:25px;
	}

.error_yellowlabel li{ 
	list-style: none; 
}
-->
</style>

</head>      
<body>
<div id="adminacc_heading"><s:text name="send_Ref1Passwd"/></div>

	<s:if test="hasActionErrors()">
	<div class="error_yellowlabel">
	<s:actionerror/>
	</div>
	</s:if>
	
	<div id="mail" align="justify">
	<s:iterator value="userlistlist" var="userlist">
	<font size="3">
	<s:text name="Recipient"/><s:property value="Ref1Email"/>
	<br>
	<s:text name="Sender"/><s:text name="INAT_MailID"/>
	<br>
	<s:text name="Subject"/><s:text name="Referee1MailSubject"/>
	<br><br>
	<s:text name="Dear"/> <s:property value="Referee1"/>,
	<br>
	<br>
	<s:text name="RefPasswordMessage"/>
	<br>
	<br>
	<s:text name="onlineid"/> <s:property value="onlineID"/>
	<br>
	<br>
	<s:text name="name"/> <s:property value="Name"/>
	<br>
	<br>
	<s:text name="yourpasswd"/> <s:property value="Ref1Passwd"/>
	<br>
	<br>
	<br>
	<s:text name="RegRegards"/>
	</font>
	</s:iterator>
	</div>
	
	<s:form method="POST" action="SendRef1PasswdFinal">
	<s:submit key="Send_Mail" id ="submit"/>
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
