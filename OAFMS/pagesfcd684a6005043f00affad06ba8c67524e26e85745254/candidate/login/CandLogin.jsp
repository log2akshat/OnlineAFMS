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

<link rel="SHORTCUT ICON" href= "../images/ncralogo.jpg"/> 
<div id="heading">
<h2> <s:text name="title_Candlogin"/> </h2>
</div>

<div id="applyindex">
	<s:if test="hasActionErrors()">
	<div class="error_alreadyapp">
	<s:actionerror/>
	</div>
	</s:if>


	<s:hidden name="loginAttempt" value="%{'1'}" />  
		
	<s:form method="POST" action="CandLogin" validate ="true" tooltipConfig="#{'tooltipIcon':'../images/tooltip.png'}">
	<tr><td align="center" colspan="2"><s:text name="details"/></td></tr>
	<s:textfield name="oid" key="refapply_oid" required="true" onpaste="return false" tooltip="Enter your OnlineID"/>
	<s:password name="password" key="refapply_Passwd" required="true" tooltip="Enter the password as communicated by the E-mail"/>
	<s:submit key="app_login" id ="submit" align="center"/>
	</s:form>

	| <a href="sendpassword.ncra">Forgot Password?</a> |

</div>
