<%@ page contentType="text/html; charset=windows-1252" language="java" import="java.sql.*, net.database.*, java.io.*, java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!-- CSS Scripts -->
<link rel="stylesheet" type="text/css" href="<s:url value="/css/table.css"/>">

<style type="text/css">
<!--
.stylefont {font-size: 16px}
.style1 {font-size: 125%; font-weight: bold; color: #15317E}
.styleID {font-size: 125%; color: #660033}

table td { 
	width: 485px; 
	}
-->
</style>

<%
Connection connect = null;
PreparedStatement pstmt = null;
connect = DBConnection.getCon();

	int RefID = 0;
	ResultSet result_refID = null;
	String RegID = request.getParameter("Oid");
	int OnlineID = Integer.parseInt(RegID);
	
	String RefIDqry = "SELECT RefID FROM Referee WHERE Email = ? and App_OnlineID = ?";
	pstmt = connect.prepareStatement(RefIDqry);
	pstmt.setString(1, request.getParameter("Email"));
	pstmt.setInt(2, OnlineID);
	result_refID = pstmt.executeQuery();
	{
	        while (result_refID.next())
	        {
	        	RefID = result_refID.getInt(1);
	        }
	}
%>

<div id="heading">
<h2> <s:text name="title_applysuccess"/> </h2>
</div>

<div id="index" align="justify" >	
<span class="style1"><s:text name="ref_Success"/></span>
<br>
<br>

<span class="stylefont">
<s:text name="ref_SuccessID"/><span class="styleID"><%=RefID%></span>
<br><br>
<s:text name="ref_input"/>
<br><br>



<table>
	
	<tr><td><s:text name="refform_OID"/></td> 
		<td><%=request.getParameter("Oid")%></td></tr>
	
	<tr><td><s:text name="refform_CandName"/></td> 
		<td><%=request.getParameter("Candname")%></td></tr>

	<tr><td><s:text name="refform_CandKnowing"/></td> 
		<td><%=request.getParameter("Knowing")%></td></tr>
		
	<tr><td><s:text name="reffform_CandSkills"/></td></tr>					
				
	<tr><td><s:text name="refform_GI"/></td> 
		<td><%=request.getParameter("Gi")%></td></tr>			
				
	<tr><td><s:text name="refform_GSK"/></td> 
		<td><%=request.getParameter("Gsk")%></td></tr>			
				
	<tr><td><s:text name="refform_OAP"/></td> 
		<td><%=request.getParameter("Oap")%></td></tr>			
				
	<tr><td><s:text name="refform_MFR"/></td> 
		<td><%=request.getParameter("Mfr")%></td></tr>			
				
	<tr><td><s:text name="refform_MA"/></td> 
		<td><%=request.getParameter("Ma")%></td></tr>			
				
	<tr><td><s:text name="refform_EOS"/></td> 
		<td><%=request.getParameter("Eos")%></td></tr>			
				
	<tr><td><s:text name="refform_PSA"/></td> 
		<td><%=request.getParameter("Psa")%></td></tr>			
				
	<tr><td><s:text name="refform_CS"/></td> 
		<td><%=request.getParameter("Cs")%></td></tr>			
				
	<tr><td><s:text name="refform_SC"/></td> 
		<td><%=request.getParameter("Sc")%></td></tr>			
				
	<tr><td><s:text name="refform_CIT"/></td> 
		<td><%=request.getParameter("Cit")%></td></tr>			
				
	<tr><td><s:text name="refform_Strength"/></td> 
		<td><%=request.getParameter("Strength")%></td></tr>			
				
	<tr><td><s:text name="refform_Weaknesses"/></td> 
		<td><%=request.getParameter("Weaknesses")%></td></tr>			
				
	<tr><td><s:text name="refform_Order"/></td> 
		<td><%=request.getParameter("Order")%></td></tr>			
				
	<tr><td><s:text name="refform_Recommending"/></td> 
		<td><%=request.getParameter("Recommending")%></td></tr>			
				
	<tr><td><s:text name="refform_Grades"/></td> 
		<td><%=request.getParameter("Grades")%></td></tr>			
				
	<tr><td><s:text name="refform_Gradesifno"/></td> 
		<td><%=request.getParameter("Gradesifno")%></td></tr>			
				
	<tr><td><s:text name="refform_Interest"/></td> 
		<td><%=request.getParameter("Interest")%></td></tr>			
				
	<tr><td><s:text name="refform_Excc"/></td> 
		<td><%=request.getParameter("Excc")%></td></tr>			
				
	<tr><td><s:text name="refform_Summary"/></td> 
		<td><%=request.getParameter("Summary")%></td></tr>			
		
	<tr><td><s:text name="ref_Partition"/></td></tr>
					
	<tr><td><s:text name="refform_Refname"/></td> 
		<td><%=request.getParameter("Refname")%></td></tr>			
					
	<tr><td><s:text name="refform_Designation"/></td> 
		<td><%=request.getParameter("Designation")%></td></tr>			
					
	<tr><td><s:text name="refform_Institute"/></td> 
		<td><%=request.getParameter("Institute")%></td></tr>			
					
	<tr><td><s:text name="refform_City"/></td> 
		<td><%=request.getParameter("City")%></td></tr>			
					
	<tr><td><s:text name="refform_Pin"/></td> 
		<td><%=request.getParameter("Pin")%></td></tr>			
					
	<tr><td><s:text name="refform_Mobilenum"/></td> 
		<td><%=request.getParameter("Mobilenum")%></td></tr>			
					
	<tr><td><s:text name="refform_Telephone"/></td> 
		<td><%=request.getParameter("Telephone")%></td></tr>			
					
	<tr><td><s:text name="refform_Email"/></td> 
		<td><%=request.getParameter("Email")%></td></tr>			
		
</table>

<br>
<s:text name="ref_successmsg"/>
<br>		
</span>
</div>
