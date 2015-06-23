<%@ page contentType="text/html; charset=windows-1252" language="java" import="java.sql.*, net.database.*, java.io.*, java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<style type="text/css">
<!--
.stylefont {font-size: 16px}
.style1 {font-size: 125%; font-weight: bold; color: #15317E}
.style2 {color: #15317E; background-color: #CCCCFF}
.style3 {color: #15317E; background-color: #E6E6FA}
.styleID {font-size: 125%; color: #660033}
-->
</style>

<%
Connection connect = null;
PreparedStatement pstmt = null;
connect = DBConnection.getCon();

	int RegID = 0;
	ResultSet result_RegID = null;
	
	String RegIDqry = "SELECT OnlineID FROM applicant WHERE Email = ?";
	pstmt = connect.prepareStatement(RegIDqry);
	pstmt.setString(1, request.getParameter("Email"));
	result_RegID = pstmt.executeQuery();
	{
	        while (result_RegID.next())
	        {
	        	RegID = result_RegID.getInt(1);
	        }
	}
%>

<div id="heading">
<h2> <s:text name="title_OLAF"/> </h2>
</div>

<div id="index" align="justify" >	
<span class="style1"><s:text name="apply_Success"/></span>
<br>
<br>

<span class="stylefont">
<s:text name="apply_SuccessID"/><span class="styleID"><%=RegID%></span>
<br><br>
<s:text name="apply_EmailIDs1"/>
<br><br>

<table align="center" width="400" height="70">
	<tr>
		<td class="style2"><s:text name="Referee1Email"/></td> 
		<td class="style3"><%=request.getParameter("Referee1Email")%></td>
	</tr>
	<tr>
		<td class="style2"><s:text name="Referee2Email"/></td> 
		<td class="style3"><%=request.getParameter("Referee2Email")%></td>
	</tr>
</table>

<br>
<s:text name="apply_EmailIDs2"/>
		<span class="styleID"><%=request.getParameter("Email")%></span>
<s:text name="apply_EmailIDs3"/>
</span>
</div>