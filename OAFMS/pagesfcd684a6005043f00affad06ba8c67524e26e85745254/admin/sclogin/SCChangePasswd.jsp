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
-->
</style>

<script type="text/javascript"><!--
function validateForm() {
with (document.SCChangePasswd) {
var alertMsg = ".::ERROR::..\nThe REQUIRED fields are Missing:\n";
if (newpasswd.value == "") alertMsg += "\nPlease enter your New Password!";
if (enteragain.value == "") alertMsg += "\nPlease repeat your New Password!";

var pass1 = document.SCChangePasswd.newpasswd;
var pass2 = document.SCChangePasswd.enteragain;
if (pass1.value != pass2.value){
	alert("..::ERROR::..\n\nPassword fields are not matching! Please Re-enter!!");
	pass1.value="";
	pass2.value="";
	pass1.focus();
	return false;
}
	
if (alertMsg != ".::ERROR::..\nThe REQUIRED fields are Missing:\n") {
alert(alertMsg);
return false;
} else {
return true;
} } }
// --></script>

</head>      
<body>
<div id="adminacc_heading"><s:text name="reset_passwd"/></div>	
	<s:if test="hasActionErrors()">
	<div class="error_greenlabel">
	<s:actionerror/>
	</div>
	</s:if>
	
	<s:form method="POST" action="SCChangePasswd" tooltipConfig="#{'tooltipIcon':'../images/tooltip.png'}" onsubmit="return validateForm()">
	<tr><td align="center" colspan="2"><s:text name="newpassword"/></td></tr>
	<s:password name="newpasswd" key="passwd_attempt1" required="true" onpaste="return false"/>
	<s:password name="enteragain" key="passwd_enteragain" required="true" onpaste="return false"/>
	<s:submit key="change_passwd" id ="submit" align="center"/>
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