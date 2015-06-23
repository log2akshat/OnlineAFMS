<%@ page language="java" session="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html" import="java.util.*"%>

<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- CSS Scripts -->
<link rel="stylesheet" type="text/css" href="<s:url value="/css/formstyle.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/table.css"/>">
        
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
-->
</style>
</head>      

<body>

<s:iterator value="userlistlist" var="userlist">
<table class="wwFormTable">
<tr><td><s:text name="regid"/></td>
<td><s:property value="#session['User'].oid" default="Guest"/></td></tr>

<tr><td><s:text name="appform_Name"/></td>
<td><s:property value="Name"/></td></tr>

<tr><td><s:text name="appform_DOB"/></td>
<td><s:property value="DOB"/> <s:text name="DOB_format"/></td></tr>

<tr><td><s:text name="appform_Gender"/></td>
<td><s:property value="Gender"/></td></tr>

<tr><td><s:text name="appform_Nationality"/></td>
<td><s:property value="Nationality"/></td></tr>

<tr><td><s:text name="appform_Email"/></td>
<td><s:property value="Email"/></td></tr>

<tr><td><s:text name="appform_CAddress"/></td>
<td><s:property value="CAddress"/></td></tr>

<tr><td><s:text name="appform_CPin"/></td>
<td><s:property value="CPin"/></td></tr>

<tr><td><s:text name="appform_CCity"/></td>
<td><s:property value="CCity"/></td></tr>

<tr><td><s:text name="appform_CState"/></td>
<td><s:property value="CState"/></td></tr>

<tr><td><s:text name="appform_Telephone"/></td>
<td><s:property value="Telephone"/></td></tr>

<tr><td><s:text name="appform_PAddress"/></td>
<td><s:property value="PAddress"/></td></tr>

<tr><td><s:text name="appform_PPin"/></td>
<td><s:property value="PPin"/></td></tr>

<tr><td><s:text name="appform_PCity"/></td>
<td><s:property value="PCity"/></td></tr>

<tr><td><s:text name="appform_PState"/></td>
<td><s:property value="PermanentState"/></td></tr>

<tr><td><s:text name="appform_Category"/></td>
<td><s:property value="Category"/></td></tr>
</table>

<table class="EduTable">
	<tr><td colspan="6"><s:text name="Educational_Qualif"></s:text></td></tr>
    <tr bgcolor="#DBCCC1">
        <th><s:text name="TableCol1Heading"></s:text></th>
        <th><s:text name="TableCol2Heading"></s:text></th>
        <th><s:text name="TableCol3Heading"></s:text></th>
        <th><s:text name="TableCol4Heading"></s:text></th>
        <th><s:text name="TableCol5Heading"></s:text></th>
        <th><s:text name="TableCol6Heading"></s:text></th>
    </tr>
    
    <tr bgcolor="#EEE9E9">
        <td><s:property value="Edu_XthStd"/></td>
        <td><s:property value="Edu_XthStd_Institute"/></td>
        <td><s:property value="Edu_XthStd_Board"/></td>
        <td><s:property value="Edu_XthStd_Year"/></td>
        <td><s:property value="Edu_XthStd_Grade"/></td>
        <td><s:property value="Edu_XthStd_Pc"/></td>
    </tr>
    
    <tr bgcolor="#F4F1F1">
        <td><s:property value="Edu_XIIthStd"/></td>
        <td><s:property value="Edu_XIIthStd_Institute"/></td>
        <td><s:property value="Edu_XIIthStd_Board"/></td>
        <td><s:property value="Edu_XIIthStd_Year"/></td>
        <td><s:property value="Edu_XIIthStd_Grade"/></td>
        <td><s:property value="Edu_XIIthStd_Pc"/></td>
    </tr>

    <tr bgcolor="#EEE9E9">
        <td><s:property value="Edu_UG"/></td>
        <td><s:property value="Edu_UG_Institute"/></td>
        <td><s:property value="Edu_UG_Board"/></td>
        <td><s:property value="Edu_UG_Year"/></td>
        <td><s:property value="Edu_UG_Grade"/></td>
        <td><s:property value="Edu_UG_Pc"/></td>
    </tr>

    <tr bgcolor="#F4F1F1">
        <td><s:property value="Edu_PG"/></td>
        <td><s:property value="Edu_PG_Institute"/></td>
        <td><s:property value="Edu_PG_Board"/></td>
        <td><s:property value="Edu_PG_Year"/></td>
        <td><s:property value="Edu_PG_Grade"/></td>
        <td><s:property value="Edu_PG_Pc"/></td>
    </tr>
</table>

<table class="EduTable">
<tr><td><s:text name="appform_Presentcourse"/></td>
<td><s:property value="Presentcourse"/></td></tr>

<tr><td><s:text name="appform_Coursecompyear"/></td>
<td><s:property value="Coursecompyear"/></td></tr>

<tr><td><s:text name="appform_Referee1_VP"/></td>
<td><s:property value="Referee1"/></td></tr>

<tr><td><s:text name="appform_Referee1Email"/></td>
<td><s:property value="Ref1Email"/></td></tr>

<tr><td><s:text name="appform_Referee2_VP"/></td>
<td><s:property value="Referee2"/></td></tr>

<tr><td><s:text name="appform_Referee2Email"/></td>
<td><s:property value="Ref2Email"/></td></tr>

<tr><td><s:text name="appform_Reason_VP"/></td>
<td><s:property value="Reason"/></td></tr>

<tr><td><s:text name="appform_Appliedbefore1"/></td>
<td><s:property value="Appliedbefore1"/></td></tr>

<tr><td><s:text name="appform_Appliedbefore2_VP"/></td>
<td><s:property value="Appliedbefore2"/></td></tr>

<tr><td><s:text name="appform_Interest"/></td>
<td><s:property value="Interest"/></td></tr>

<tr><td><s:text name="appform_GQ_Subject_VP"/></td>
<td><s:property value="GQ_Subject"/></td></tr>

<tr><td><s:text name="appform_GQ_Project_VP"/></td>
<td><s:property value="GQ_Project"/></td></tr>

<tr><td><s:text name="appform_GQ_Awards_VP"/></td>
<td><s:property value="GQ_Awards"/></td></tr>

<tr><td><s:text name="appform_GQ_Result_VP"/></td>
<td><s:property value="GQ_Result"/></td></tr>

<tr><td><s:text name="Timing_of_Submission"/></td>
<td><s:property value="Timing"/> <s:text name="Timing_Format"/></td></tr>
</table>
</s:iterator>
<br><br>

	<s:set name="user" value="#session['User']"/>	
	<s:if test="%{#user==null}">
	<META HTTP-EQUIV="Refresh" CONTENT="0;URL=/INAT/Candidate/Login.ncra">
	</s:if>	
	<s:else>
		<s:url id="logout" action="logoutAction"/>
		<s:a href="%{logout}"></s:a>
	</s:else>

    </body>
</html>
