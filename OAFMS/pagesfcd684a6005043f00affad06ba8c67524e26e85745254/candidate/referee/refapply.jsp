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
<h2> <s:text name="title_OLRF"/> </h2>
</div>

<div id="applyindex">
	<s:if test="hasActionErrors()">
	<div class="error_notregistered">
	<s:actionerror/>
	</div>
	</s:if>
 	
	<s:form method="POST" action="RefApplyOL" validate ="true" tooltipConfig="#{'tooltipIcon':'../images/tooltip.png'}">
	<tr><td align="center" colspan="2"><b><s:text name="enter_details_referee"/></b></td></tr>
	<s:textfield name="refapply.onlineid" key="refapply_oid" required="true" maxLength="4" onpaste="return false" tooltip="Enter the OnlineID of the applicant as communicated by the E-mail"/>
	<s:password name="refapply.password" key="refapply_Passwd" maxLength="10" required="true" tooltip="Enter the password as communicated by the E-mail"/>
	<s:textfield name="refapply.email" key="refapply_Email" onpaste="return false" required="true" tooltip="Enter your E-mail ID"/></td>
	<s:submit key="apply_submit" id ="submit" align="center"/>
	</s:form>
	
</div>