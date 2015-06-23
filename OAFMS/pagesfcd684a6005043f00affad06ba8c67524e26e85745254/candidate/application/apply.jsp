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
<h2> <s:text name="title_OLAF"/> </h2>
</div>

<div id="applyindex">
	<s:if test="hasActionErrors()">
	<div class="error_notregistered">
	<s:actionerror/>
	</div>
	</s:if>
	
	<s:form method="POST" action="ApplyOL" validate ="true" tooltipConfig="#{'tooltipIcon':'../images/tooltip.png'}">
	<tr><td align="center" colspan="2"><b><s:text name="enter_details"/></b></td></tr>
	<s:textfield name="apply.email" key="apply_applicantEmail" required="true" onpaste="return false" tooltip="Enter your registered E-mail"/></td>
	<s:password name="apply.password" key="apply_applicantPasswd" required="true" tooltip="Enter the password as communicated by the E-mail"/>
	<s:submit key="apply_sub" id ="submit" align="center"/>
	</s:form>
	
	| <a href="sendpassword.ncra">Forgot Password?</a> |

</div>
