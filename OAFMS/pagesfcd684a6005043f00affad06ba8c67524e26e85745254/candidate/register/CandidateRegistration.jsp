<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<head>
<!-- CSS Scripts -->
<link rel="stylesheet" type="text/css" href="<s:url value="/css/login.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="../css/Register.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/Button.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/table.css"/>">
<s:head theme="simple"/>
</head>

<div id="heading">
<h2> <s:text name="title_registration"/> </h2>
</div>

<div id="applyindex">
	<s:if test="hasActionErrors()">
	<div class="error_alreadyapp">
	<s:actionerror/>
	</div>
	</s:if>
	
	<s:form method="POST" action="Register" validate ="true" tooltipConfig="#{'tooltipIcon':'../images/tooltip.png'}">
	<tr><td align="center" colspan="2"><s:text name="register"/></td></tr>
	<s:textfield name="register.name" key="app_applicantName" required="true"/>
	<s:textfield name="register.email" key="app_applicantEmail" required="true" onpaste="return false"/></td>
	<s:submit key="app_submit" id ="submit" align="center"/>
	</s:form>
	
</div>