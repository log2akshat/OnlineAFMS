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

<!-- JavaScript for disabling Double Submit -->
<script type="text/javascript"><!--
var formSubmitted=false;
function preventDoubleSubmit() {
   if(formSubmitted) {
      return false;
   }
 
   var submitButton = document.Register.app_submit;
   //submitButton.disabled=true;
   submitButton.style.display="none"; 
 
   formSubmitted = true;
   return true;
}
//--></script>
</head>

<div id="heading">
<h2> <s:text name="title_howtoapply"/> </h2>
</div>

<div id="index">		  
<s:text name="app.instructions"/>			    
</div>

<div id="regindex">
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

<div id="browser">	

<s:text name="olap_link"/>

<div id="applybuttonposition">
<!-- Apply Button -->
	<s:form method="POST" action="Apply">			
				<s:submit name="submit" id="submit" key="apply" theme="css_xhtml" onsubmit="preventDoubleSubmit()"/>
				<br><br><br><br>
	</s:form>
	</div>
		  
<s:text name="Supported_Browsers"/>			    
</div>