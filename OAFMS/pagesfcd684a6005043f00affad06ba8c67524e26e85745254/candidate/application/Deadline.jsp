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

<style type="text/css">
<!--
#applyindex_deadline {
        width: 600px;
        font-size: 15px;
        margin-top: -290px;
        margin-left: 280px;
        }
-->
</style>

</head>

<div id="heading">
<h2> <s:text name="title_OLAF"/> </h2>
</div>

<div id="applyindex_deadline">
	<s:if test="hasActionErrors()">
	<div class="error_notregistered">
	<s:actionerror/>
	</div>
	</s:if>
	
	<font color="red"><s:text name="deadline"/></font>
	
</div>