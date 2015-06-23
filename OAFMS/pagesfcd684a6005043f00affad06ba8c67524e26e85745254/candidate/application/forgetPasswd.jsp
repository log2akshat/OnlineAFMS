<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<head>
<!-- CSS Scripts -->
<link rel="stylesheet" type="text/css" href="<s:url value="/css/login.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/Register.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/Button.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/table.css"/>">

<s:head theme="simple"/>
</head>

<div id="heading">
<h2> <s:text name="forget_passwd"/> </h2>
</div>

<div id="applyindex">
	<s:if test="hasActionErrors()">
	<div class="error_remindermail">
	<s:actionerror/>
	</div>
	</s:if>
	
	<s:form method="POST" action="sendapppassword" validate ="true" tooltipConfig="#{'tooltipIcon':'../images/tooltip.png'}">
	<tr><td align="center" colspan="2"><b><s:text name="enter_email"/></b></td></tr>
	<s:textfield name="Email" key="apply_applicantEmail" size="27" required="true" onpaste="return false" tooltip="Enter your registered E-mail"/></td>
	<s:submit key="Send_Mail" id ="submit" align="center"/>
	</s:form>

</div>