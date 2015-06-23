<%@ page language="java" session="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html" import="java.util.*"%>

<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- CSS Scripts -->
<link rel="stylesheet" type="text/css" href="<s:url value="/css/formstyle.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/table.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/Button.css"/>">
        
<style type="text/css">
<!--
table {
margin-left: 10px;
margin-top: 25px;
font-size: 115%;
width:700px;
}

table td {
	width:350px;
	text-align: justify;
	}
	
table.EduTable {
margin-left: -209px;
width:920px;
}

#profile {
margin-left: 15px;
margin-top: 28px;
}
-->
</style>

<script type="text/javascript" language="javascript" src="<s:url value="/JS/Back.js"/>"> </script>
</head>      

<body>
<div id="adminacc_heading"><s:iterator value="refereelistlist" var="refereelist">
<a href="OFDRProcess.ncra?oid=<s:property value="OnlineID"/>"><s:text name="candimg"/></a>
<s:text name="Candname"/> [<s:text name="regid"/> <s:property value="OnlineID"/>]</s:iterator></div>

<s:iterator value="refereelistlist" var="refereelist">
<div id="profile">
<s:text name="refereeimg"/> <font size="3"><s:text name="details_submittedby"/> : <font color="#660033"> <s:property value="Refname"/> 
[<s:text name="ref_id"/> : <s:property value="RefID"/>]</font></font>
<input type="submit" id ="submit" name="Previous View" value="Last View" onclick="backPage();"/>
</div>
</s:iterator>

<s:iterator value="refereelistlist" var="refereelist">
<table class="wwFormTable">
<tr><td><s:text name="refform_OID"/></td>
<td><s:property value="OnlineID"/></td></tr>

<tr><td><s:text name="refform_CandName"/></td>
<td><s:property value="Candname"/></td></tr>

<tr><td><s:text name="refform_CandKnowing"/></td>
<td><s:property value="Knowing"/></td></tr>

<tr><td><s:text name="reffform_CandSkills"/></td>
<td><s:property value="Gender"/></td></tr>

<tr><td><s:text name="refform_GI"/></td>
<td><s:property value="Gi"/></td></tr>

<tr><td><s:text name="refform_GSK"/></td>
<td><s:property value="Gsk"/></td></tr>

<tr><td><s:text name="refform_OAP"/></td>
<td><s:property value="Oap"/></td></tr>

<tr><td><s:text name="refform_MFR"/></td>
<td><s:property value="Mfr"/></td></tr>

<tr><td><s:text name="refform_MA"/></td>
<td><s:property value="Ma"/></td></tr>

<tr><td><s:text name="refform_EOS"/></td>
<td><s:property value="Eos"/></td></tr>

<tr><td><s:text name="refform_PSA"/></td>
<td><s:property value="Psa"/></td></tr>

<tr><td><s:text name="refform_CS"/></td>
<td><s:property value="Cs"/></td></tr>

<tr><td><s:text name="refform_SC"/></td>
<td><s:property value="Sc"/></td></tr>

<tr><td><s:text name="refform_CIT"/></td>
<td><s:property value="Cit"/></td></tr>

<tr><td><s:text name="refform_Strength"/></td>
<td><s:property value="Strength"/></td></tr>

<tr><td><s:text name="refform_Weaknesses"/></td>
<td><s:property value="Weaknesses"/></td></tr>

<tr><td><s:text name="refform_Order"/></td>
<td><s:property value="Order"/></td></tr>

<tr><td><s:text name="refform_Recommending"/></td>
<td><s:property value="Recommending"/></td></tr>

<tr><td><s:text name="refform_Grades"/></td>
<td><s:property value="Grades"/></td></tr>

<tr><td><s:text name="refform_Gradesifno"/></td>
<td><s:property value="Gradesifno"/></td></tr>

<tr><td><s:text name="refform_Interest"/></td>
<td><s:property value="Interest"/></td></tr>

<tr><td><s:text name="refform_Excc"/></td>
<td><s:property value="Excc"/></td></tr>

<tr><td><s:text name="refform_Summary"/></td>
<td><s:property value="Summary"/></td></tr>

<tr><td><s:text name="ref_Partition"/></td></tr>

<tr><td><s:text name="refform_Refname"/></td>
<td><s:property value="Refname"/></td></tr>

<tr><td><s:text name="refform_Designation"/></td>
<td><s:property value="Designation"/></td></tr>

<tr><td><s:text name="refform_Institute"/></td>
<td><s:property value="Institute"/></td></tr>

<tr><td><s:text name="refform_City"/></td>
<td><s:property value="City"/></td></tr>

<tr><td><s:text name="refform_Pin"/></td>
<td><s:property value="Pin"/></td></tr>

<tr><td><s:text name="refform_Mobilenum"/></td>
<td><s:property value="Mobilenum"/></td></tr>

<tr><td><s:text name="refform_Telephone"/></td>
<td><s:property value="Telephone"/></td></tr>

<tr><td><s:text name="refform_Email"/></td>
<td><s:property value="Email"/></td></tr>

<tr><td><s:text name="Timing_of_Submission"/></td>
<td><s:property value="RefTiming"/> <s:text name="Timing_Format"/></td></tr>
</table>
</s:iterator>
<br>

			  <div align="center">
		        <input type="submit" id ="submit" name="Previous View" value="Last View" onclick="backPage();"/>
	          </div>

<br><br><br>
	          
	<s:set name="user" value="#session['User']"/>	
	<s:if test="%{#user==null}">
	<META HTTP-EQUIV="Refresh" CONTENT="0;URL=<s:text name="refresh_url"/>">
	</s:if>	
	<s:else>
		<s:url id="logout" action="adminlogoutAction"/>
		<s:a href="%{logout}"></s:a>
	</s:else>

    </body>
</html>
