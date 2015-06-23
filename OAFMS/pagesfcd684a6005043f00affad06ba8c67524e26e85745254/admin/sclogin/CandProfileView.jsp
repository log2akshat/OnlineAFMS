<%@ page language="java" session="true" pageEncoding="ISO-8859-1" import="java.sql.*, net.database.*, java.io.*, java.util.*"%>
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
<%
Connection connect = null;
PreparedStatement pstmt = null;
connect = DBConnection.getCon();

	int Ref1ID = 0;
	int Ref2ID = 0;
	String Referee1EmailID = "";
	String Referee2EmailID = "";
	ResultSet result = null;
	String RegID = request.getParameter("oid");
	int OnlineID = Integer.parseInt(RegID);
	
	String RefMailqry = "SELECT Ref1Email, Ref2Email from security where OnlineID=?";
		pstmt = connect.prepareStatement(RefMailqry);
		pstmt.setInt(1,OnlineID);
		result = pstmt.executeQuery();
			while (result.next())
		{
			Referee1EmailID = result.getString(1);
			Referee2EmailID = result.getString(2);
		}
			
	String Ref1IDquery = "SELECT RefID from Referee where App_OnlineID=? and Email=?";
		pstmt = connect.prepareStatement(Ref1IDquery);
		pstmt.setInt(1,OnlineID);
		pstmt.setString(2,Referee1EmailID);
		result = pstmt.executeQuery();
			
	  	while (result.next())
	{	
		Ref1ID = result.getInt(1);
	}

	String RefID2query = "SELECT RefID from Referee where App_OnlineID=? and Email=?";
			pstmt = connect.prepareStatement(RefID2query);
			pstmt.setInt(1,OnlineID);
			pstmt.setString(2,Referee2EmailID);
			result = pstmt.executeQuery();
			
	  	while (result.next())
	{	
		Ref2ID = result.getInt(1);
	}		
%>

<div id="adminacc_heading"><s:text name="candimg"/> <s:iterator value="userlistlist" var="userlist">
<s:text name="Name"/> [<s:text name="regid"/> <s:property value="onlineID"/>]</s:iterator></div>

<s:iterator value="userlistlist" var="userlist">
<div id="profile">
<font size="3"><s:text name="appform_Status"/> : <font color="#660033"><s:property value="Status"/></font></font>

<input type="submit" id ="submit" name="Previous View" value="Last View" onclick="backPage();"/>
</div>
</s:iterator>

<br>
	          
<s:iterator value="userlistlist" var="userlist">
<s:form method="POST" action="SCCandselectform">
<!-- Applicant WrittenTestCall 			
	<s:select name="WrittenTestCall" key="appform_WrittenTestCall" headerKey=""
				list="#{'No':'No','Yes':'Yes'}" /> 
-->	

<!-- Applicant Status -->				
	<s:select name="Status" key="appform_Status" headerKey=""
				list="#{'No Action':'No Action','Selected':'Selected','Rejected':'Rejected','Waiting':'Waiting'}" />
				
	<s:submit key="apply_change" id ="submit"/>			
</s:form>
</s:iterator>

<div id="profile"><font size="4" color="#660033"><s:text name="Candidate_Profile"/></font></div>

<s:iterator value="userlistlist" var="userlist">
<table class="wwFormTable">
<tr><td><s:text name="regid"/></td>
<td><s:property value="onlineID"/></td></tr>

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
<td><s:property value="Referee1"/> <a href="SCAFDRProcess.ncra?refid=<%=Ref1ID%>"><s:text name="refimg"/></a></td></tr>

<tr><td><s:text name="appform_Referee1Email"/></td>
<td><s:property value="Ref1Email"/></td></tr>

<tr><td><s:text name="appform_Referee2_VP"/></td>
<td><s:property value="Referee2"/> <a href="SCAFDRProcess.ncra?refid=<%=Ref2ID%>"><s:text name="refimg"/></a></td></tr>

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
<br>

			  <div align="center">
		        <input type="submit" id ="submit" name="Previous View" value="Last View" onclick="backPage();"/>
	          </div>

<br><br><br>
	          
	<s:set name="user" value="#session['User']"/>	
	<s:if test="%{#user==null}">
	<META HTTP-EQUIV="Refresh" CONTENT="0;URL=<s:text name="refresh_url_sc"/>">
	</s:if>	
	<s:else>
		<s:url id="logout" action="adminlogoutAction"/>
		<s:a href="%{logout}"></s:a>
	</s:else>

    </body>
</html>
