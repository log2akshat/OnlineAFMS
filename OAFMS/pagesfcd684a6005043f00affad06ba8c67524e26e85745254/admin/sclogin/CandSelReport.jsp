<%@ page language="java" session="true" pageEncoding="ISO-8859-1" import="java.sql.*, net.database.*, java.io.*, java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html" import="java.util.*"%>

<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- CSS Scripts -->
<link rel="stylesheet" type="text/css" href="<s:url value="/css/formstyle.css"/>">
<!-- <link rel="stylesheet" type="text/css" href="<s:url value="/css/table.css"/>"> -->
<link rel="stylesheet" type="text/css" href="<s:url value="/css/Button.css"/>">
        
<style type="text/css">
<!--
#adminsel_heading {
		color: #660033;
		font-weight: bold;
		font-size: 24px;
		margin-top: 225px;
		margin-left: -225px;
        padding: 45px 0px 0px 25px;
}

table.Seltable {
border-width: 2px;
border-color:#DAD7D7;
border-style: solid;
color: #8B1A1A;
margin-left: -210px;
margin-top: 0px;
font-size: 95%;
width:2200px;
}

table td {
	text-align: justify;
	}
	
table.EduTable {
border-width: 2px;
border-color:#DAD7D7;
border-style: solid;
color: #8B1A1A;
font-size: 95%;
margin-top: -70px;
margin-left: -209px;
width:920px;
}table.EduTable th { background-color: ;
}table.EduTable tr:nth-child(even) td { background-color: #F4F1F1; 
padding: 11px;
}table .EduTable tr:nth-child(odd) td { background-color: #EEE9E9;
padding: 11px;}
}

#profile {
margin-left: 15px;
margin-top: 28px;
}
-->
-->
</style>

<script type="text/javascript" language="javascript" src="<s:url value="/JS/events.js"/>"> </script>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/sort.js"/>"> </script>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/Back.js"/>"> </script>

<script type="text/javascript"><!--
function ValidateForm()	
{
with (document.selectcandidate) {
var alertMsg = "Alert:\n";
	var chks = document.getElementsByName('selectID');

	var hasChecked = false;
	for (var i = 0; i < chks.length; i++)
	{
		if (chks[i].checked)
		{
		        hasChecked = true;
			break;
		}
	}
	if (!hasChecked) alertMsg += "\nPlease select at least one Applicant.";
	if (alertMsg != "Alert:\n") 
	{
alert(alertMsg);
return false;
} else
{
return true;
} 
}}
//--></script>

</head>      

<body>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/tip.js"/>"> </script>

<div id="adminsel_heading"><s:text name="homeimg"/> <s:text name="comblist"/> </div>
<%
Connection connect = null;
PreparedStatement pstmt = null;
connect = DBConnection.getCon();

ResultSet resultCountInst = null;
ResultSet resultCountInstCity = null;
ResultSet resultCountInstState = null;
ResultSet resultCountRef = null;
ResultSet resultCountUniv = null;

ResultSet rsinst = null;
ResultSet rsuniv = null;
ResultSet rsinstcity = null;
ResultSet rsinststate = null;
ResultSet rsref = null;

String DegreeInst = "";
String DegreeUniv = "";
String DegreeCity = "";
String DegreeState = "";
String Ref = "";
String RefName = "";

String selection = "";
String DegInst = "";
String DegUniv = "";
String DegCity = "";
String DegState = "";
String Refree = "";

selection = request.getParameter("selection");
DegInst = request.getParameter("DegInst");
DegUniv = request.getParameter("DegUniv");
DegCity = request.getParameter("DegCity");
DegState = request.getParameter("DegState");
Refree = request.getParameter("Refree");

int CountInst = 0;
int CountUniv = 0;
int CountInstCity = 0;
int CountInstState = 0;
int CountRef = 0;

%>		
              </p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <h3 class="style41">
			  
			  <br><br>
			   <form id="form1" name="searchs" method="get" action="">
		       <table class="EduTable">
                 <tr>
                   <td width="125"><div align="left"><strong>Search by</strong></div></td>
                   <td width="662"><div align="left">
				   <input name="selection" type="radio" value="All" checked="checked"/> <!-- checked="checked"-->
				 All
<input type="radio" name="selection" value="Deg_City" />
Inst. City
<input type="radio" name="selection" value="Deg_State" />
Inst. State
<input type="radio" name="selection" value="Deg_Univ" />
University
<input type="radio" name="selection" value="Deg_Inst" />
Institute
<input type="radio" name="selection" value="Referee" />
Referee
<input type="radio" name="selection" value="Selected" />
Selected Candidates
</div></td>
                   <td bgcolor="#D8D8D8" width="145"><div align="center"><span class="style44"><span class="style47">Total  Records</span> <span class="style46" onmouseover="Tip('Total number of Rows are counted based on the current Selection.')" onmouseout="UnTip()">?</span> </span> </div></td>
                 </tr>
 
 <%
if (selection.equals("Deg_Inst")){
String CountInstiuteQuery = "Select count(*) from (Select UG_Inst from applicant WHERE UG_Inst LIKE '%"+DegInst+"%')z";

pstmt = connect.prepareStatement(CountInstiuteQuery);
	resultCountInst = pstmt.executeQuery();
	while (resultCountInst.next())
{	
CountInst = resultCountInst.getInt(1);
}
}
 
else if (selection.equals("Deg_Univ")){
	 String CountUnivQuery = "Select count(*) from (Select UG_Univ from applicant WHERE UG_Univ LIKE '%"+DegUniv+"%')z";

	 pstmt = connect.prepareStatement(CountUnivQuery);
	 	resultCountUniv = pstmt.executeQuery();
	 	while (resultCountUniv.next())
	 {	
	 CountUniv = resultCountUniv.getInt(1);
	 }
	 }
 
else if (selection.equals("Deg_City")){
	 String CountInstCityQuery = "Select count(*) from (Select PCity from applicant WHERE PCity LIKE '%"+DegCity+"%')z";

	 pstmt = connect.prepareStatement(CountInstCityQuery);
	 resultCountInstCity = pstmt.executeQuery();
	 	while (resultCountInstCity.next())
	 {	
	 		CountInstCity = resultCountInstCity.getInt(1);
	 }
	 }
 
else if (selection.equals("Deg_State")){
	 String CountStateQuery = "Select count(*) from (Select PState from applicant WHERE PState LIKE '%"+DegState+"%')z";

	 pstmt = connect.prepareStatement(CountStateQuery);
	 resultCountInstState = pstmt.executeQuery();
	 	while (resultCountInstState.next())
	 {	
	 CountInstState = resultCountInstState.getInt(1);
	 }
	 } 

else if(selection.equals("Referee")){
String CountRefereeQuery = "Select count(*) FROM ((select DISTINCT x.* FROM (select a.OnlineID, s.Ref1Email, s.Ref2Email from applicant a JOIN security s ON a.OnlineID=s.OnlineID)x WHERE Ref1Email LIKE '%"+Refree+"%') UNION (select DISTINCT x.* FROM (select a.OnlineID, s.Ref1Email, s.Ref2Email from applicant a JOIN security s ON a.OnlineID=s.OnlineID)x WHERE Ref2Email LIKE '%"+Refree+"%'))z";

pstmt = connect.prepareStatement(CountRefereeQuery);
	resultCountRef = pstmt.executeQuery();
	while (resultCountRef.next())
{	
CountRef = resultCountRef.getInt(1);
}
}
%>
  			   </div></td>
                 </tr>
                 
                                     <td><div align="left"><strong>Inst. City</strong></div></td>
                   <td><div align="left">
                       <select name="DegCity" id="city"><option value="">-------Select Institute City-------</option>
<%
String OptionqueryInstCity = "Select DISTINCT PCity from applicant ORDER BY PCity";
		pstmt = connect.prepareStatement(OptionqueryInstCity);
		rsinstcity = pstmt.executeQuery();
		
	while (rsinstcity.next())
{
	DegreeCity = rsinstcity.getString(1);
	out.println("<option value='"+DegreeCity+"'>"+DegreeCity+"</option>");
}
System.out.print(DegreeCity);
%>
</select>
                    
</div></td>
                   <td bgcolor="#F0F0F0"><div align="center"><span class="style43"><%=CountInstCity%> Record(s)</span></div></td>
                 </tr>
                 
                 
                 <td><div align="left"><strong>Inst. State</strong></div></td>
                   <td><div align="left">
                       <select name="DegState" id="city"><option value="">-------Select Institute State-------</option>
<%
String OptionqueryInstState = "Select DISTINCT PState from applicant ORDER BY PState";
		pstmt = connect.prepareStatement(OptionqueryInstState);
		rsinststate = pstmt.executeQuery();
		
	while (rsinststate.next())
{
	DegreeState = rsinststate.getString(1);
	out.println("<option value='"+DegreeState+"'>"+DegreeState+"</option>");
}
System.out.print(DegreeState);
%>
</select>
                    
</div></td>
                   <td bgcolor="#F0F0F0"><div align="center"><span class="style43"><%=CountInstState%> Record(s)</span></div></td>
                 </tr>
                 
               <tr>
               <td><div align="left"><strong>University</strong></div></td>
                   <td><div align="left">
                       <select name="DegUniv" id="univ"><option value="">-------Select University-------</option>
<%
String OptionqueryUniv = "Select DISTINCT UG_Univ from applicant ORDER BY UG_Univ";
		pstmt = connect.prepareStatement(OptionqueryUniv);
		rsuniv = pstmt.executeQuery();
		
	while (rsuniv.next())
{
	DegreeUniv = rsuniv.getString(1);
	out.println("<option value='"+DegreeUniv+"'>"+DegreeUniv+"</option>");
}
System.out.print(DegUniv);
%>
</select>
                    
</div></td>
                   <td bgcolor="#F0F0F0"><div align="center"><span class="style43"><%=CountUniv%> Record(s)</span></div></td>
                 </tr>
                 
                   <tr>
                   <td><div align="left"><strong>Institute</strong></div></td>
                   <td><div align="left">
                       <select name="DegInst" id="inst"><option value="">-------Select Institute-------</option>
<%
String Optionquery1 = "Select DISTINCT UG_Inst from applicant ORDER BY UG_Inst";
		pstmt = connect.prepareStatement(Optionquery1);
		rsinst = pstmt.executeQuery();
		
	while (rsinst.next())
{
	DegreeInst = rsinst.getString(1);
	out.println("<option value='"+DegreeInst+"'>"+DegreeInst+"</option>");
}
System.out.print(DegInst);
%>
</select>
                    
</div></td>
  <td bgcolor="#F0F0F0"><div align="center"><span class="style43"><%=CountInst%> Record(s)</span></div></td>
                 </tr>
                 
                 <tr>
                   <td><div align="left"><strong>Referee</strong></div></td>
                   <td>
                   
                   
                   
                       <select name="Refree" id="ref"><option value="">-------Select Referee-------</option>
<%
String Optionquery2 = "(Select DISTINCT Referee.Name, security.Ref1Email from Referee, security where security.Ref1Email = Referee.Email AND Referee.App_OnlineID = security.OnlineID) UNION (Select DISTINCT Referee.Name, security.Ref2Email from Referee, security where security.Ref2Email = Referee.Email AND Referee.App_OnlineID = security.OnlineID) ORDER BY Name";
		pstmt = connect.prepareStatement(Optionquery2);
		rsref = pstmt.executeQuery();
		
	while (rsref.next())
{
	RefName = rsref.getString(1);
	Ref = rsref.getString(2);
	out.println("<option value="+Ref+">"+RefName+"</option>");
}
%>
</select></td>
                   <td bgcolor="#F0F0F0"><div align="center"><span class="style43"><%=CountRef%> Record(s)</span></div></td>
                 </tr>
                 <tr>
                   <td colspan="3"> <div align="center">
                     <input type="submit" name="Submit" id="submit" value="Search" onclick="javascript:window.history.back();"/>
                    </div></td>
                 </tr>
               </table>
            </form>
     
     <br>
      <input type="submit" id="submit" name="Last View" align="left" value="BACK" onclick="backPage();"/>	
                   
     <br><br><br>
            
<table id='my_table' class="Seltable"><thead>
<tr bgcolor="#DBCCC1">
	<th align="center"><s:text name="comb_Select"/></th>
	<th width="100" align="center"><s:text name="comb_Status"/></th>
	<th width="50" align="center"><s:text name="comb_regid"/></th>
	<th width="50" align="center"><s:text name="comb_View"/></th>
	<th width="100" align="center"><s:text name="comb_PGDegree"/></th>
	<th width="250" align="center"><s:text name="comb_PGInst"/></th>
	<th width="150" align="center"><s:text name="comb_PGUniv"/></th>
	<th width="50" align="center"><s:text name="comb_PGPc"/></th>
	<th width="100" align="center"><s:text name="comb_GradDegree"/></th>
	<th width="250" align="center"><s:text name="comb_GradInst"/></th>
	<th width="150" align="center"><s:text name="comb_GradUniv"/></th>
	<th width="50" align="center"><s:text name="comb_GradPc"/></th>
	<th width="200" align="center"><s:text name="Inst. City"/></th>
	<th width="300" align="center"><s:text name="Inst. State"/></th>
	<th width="150" align="center"><s:text name="comb_Name"/></th>
	<th width="80" align="center"><s:text name="comb_DOB"/></th>
	<th width="50" align="center"><s:text name="comb_Gender"/></th>
	<th width="10" align="center"><s:text name="comb_Nationality"/></th>
	<th width="150" align="center"><s:text name="comb_Phone"/></th>
	<th width="150" align="center"><s:text name="comb_Email"/></th>
	<th width="150" align="center"><s:text name="comb_Ref1"/></th>
	<th width="150" align="center"><s:text name="comb_Ref2"/></th>
	</tr>

</thead>
<tbody>	
<%
	ResultSet result = null;

String query = "Select a.OnlineID, a.Name, a.DOB, a.Gender, a.Nationality, a.Telephone, a.Email, a.UG, a.UG_Inst, a.UG_Univ, a.UG_Pc, a.PG, a.PG_Inst, a.PG_Pc, a.Referee1, a.Referee2, a.Status, a.PG_Univ, a.PCity, a.PState, s.Ref1Email, s.Ref2Email from applicant a JOIN security s ON a.OnlineID=s.OnlineID";

	try
	{	
		if(selection.equals("All")) query = "Select a.OnlineID, a.Name, a.DOB, a.Gender, a.Nationality, a.Telephone, a.Email,  a.UG, a.UG_Inst,  a.UG_Univ, a.UG_Pc, a.PG, a.PG_Inst, a.PG_Pc, a.Referee1, a.Referee2, a.Status, a.PG_Univ, a.PCity, a.PState, s.Ref1Email, s.Ref2Email from applicant a JOIN security s ON a.OnlineID=s.OnlineID";
		
		else if(selection.equals("Selected")) query = "Select x.* FROM (Select a.OnlineID, a.Name, a.DOB, a.Gender, a.Nationality, a.Telephone, a.Email, a.UG, a.UG_Inst, a.UG_Univ, a.UG_Pc, a.PG, a.PG_Inst, a.PG_Pc, a.Referee1, a.Referee2, a.Status, a.PG_Univ, a.PCity, a.PState, s.Ref1Email, s.Ref2Email from applicant a JOIN security s ON a.OnlineID=s.OnlineID)x WHERE Status ='Selected'";
			
		else if(selection.equals("Deg_Inst")) query = "Select x.* FROM (Select a.OnlineID, a.Name,  a.DOB, a.Gender, a.Nationality, a.Telephone, a.Email, a.UG, a.UG_Inst, a.UG_Univ, a.UG_Pc, a.PG, a.PG_Inst, a.PG_Pc, a.Referee1, a.Referee2, a.Status, a.PG_Univ, a.PCity, a.PState, s.Ref1Email, s.Ref2Email from applicant a JOIN security s ON a.OnlineID=s.OnlineID)x WHERE UG_Inst LIKE '%"+DegInst+"%'";
		
		else if(selection.equals("Deg_Univ")) query = "Select x.* FROM (Select a.OnlineID, a.Name,  a.DOB, a.Gender, a.Nationality, a.Telephone, a.Email, a.UG, a.UG_Inst, a.UG_Univ, a.UG_Pc, a.PG, a.PG_Inst, a.PG_Pc, a.Referee1, a.Referee2, a.Status, a.PG_Univ, a.PCity, a.PState, s.Ref1Email, s.Ref2Email from applicant a JOIN security s ON a.OnlineID=s.OnlineID)x WHERE UG_Univ LIKE '%"+DegUniv+"%'";

		else if(selection.equals("Deg_City")) query = "Select x.* FROM (Select a.OnlineID, a.Name,  a.DOB, a.Gender, a.Nationality, a.Telephone, a.Email, a.UG, a.UG_Inst, a.UG_Univ, a.UG_Pc, a.PG, a.PG_Inst, a.PG_Pc, a.Referee1, a.Referee2, a.Status, a.PG_Univ, a.PCity, a.PState, s.Ref1Email, s.Ref2Email from applicant a JOIN security s ON a.OnlineID=s.OnlineID)x WHERE PCity LIKE '%"+DegCity+"%'";
		
		else if(selection.equals("Deg_State")) query = "Select x.* FROM (Select a.OnlineID, a.Name,  a.DOB, a.Gender, a.Nationality, a.Telephone, a.Email, a.UG, a.UG_Inst, a.UG_Univ, a.UG_Pc, a.PG, a.PG_Inst, a.PG_Pc, a.Referee1, a.Referee2, a.Status, a.PG_Univ, a.PCity, a.PState, s.Ref1Email, s.Ref2Email from applicant a JOIN security s ON a.OnlineID=s.OnlineID)x WHERE PState LIKE '%"+DegState+"%'";
		
		else if(selection.equals("Referee")) query = "(Select DISTINCT x.* FROM (Select a.OnlineID, a.Name, a.DOB, a.Gender, a.Nationality, a.Telephone, a.Email, a.UG, a.UG_Inst, a.UG_Univ, a.UG_Pc, a.PG, a.PG_Inst, a.PG_Pc, a.Referee1, a.Referee2, a.Status, a.PG_Univ, a.PCity, a.PState, s.Ref1Email, s.Ref2Email from applicant a JOIN security s ON a.OnlineID=s.OnlineID)x WHERE Ref1Email LIKE '%"+Refree+"%') UNION (Select DISTINCT x.* FROM (Select a.OnlineID, a.Name, a.DOB, a.Gender, a.Nationality, a.Telephone, a.Email, a.UG, a.UG_Inst, a.UG_Univ, a.UG_Pc, a.PG, a.PG_Inst, a.PG_Pc, a.Referee1, a.Referee2, a.Status, a.PG_Univ, a.PCity, a.PState, s.Ref1Email, s.Ref2Email from applicant a JOIN security s ON a.OnlineID=s.OnlineID)x WHERE Ref2Email LIKE '%"+Refree+"%')";
		
	pstmt = connect.prepareStatement(query);
	result = pstmt.executeQuery();
	while (result.next())
{	

	ResultSet rs1 = null;
	ResultSet rs2 = null;
	
int OnlineID = 0;
String ApplicantName = "";
String DOB = "";
String Sex = "";
String Nationality = "";
String Telephone = "";
String Email = "";
String Degree = "";
String DegreeInstitute = "";
String DegreeUniversity = "";
int DegreePercentage = 0;
String PGDegree = "";
String PGDegreeInstitute = "";
int PGDegreePercentage = 0;
String Referee1 = "";
String Referee1Email = "";
String Referee2 = "";
String Referee2Email = "";
String Status = "";
String PG_Univ = "";
String Inst_City = "";
String Inst_State = "";
int RefID1 = 0;
int RefID2 = 0;

String colour="";
  	OnlineID = result.getInt(1);
	ApplicantName = result.getString(2);
	DOB = result.getString(3);
	Sex = result.getString(4);
	Nationality = result.getString(5);
	Telephone = result.getString(6);
	Email = result.getString(7);
	Degree = result.getString(8);
	DegreeInstitute = result.getString(9);
	DegreeUniversity = result.getString(10);
	DegreePercentage = result.getInt(11);
	PGDegree = result.getString(12);
	PGDegreeInstitute = result.getString(13);
	PGDegreePercentage = result.getInt(14);
	Referee1 = result.getString(15);
	Referee2 = result.getString(16);
	Status = result.getString(17);
	PG_Univ = result.getString(18);
	Inst_City = result.getString(19);
	Inst_State = result.getString(20);
	Referee1Email = result.getString(21);
	Referee2Email = result.getString(22);

//if(WrittenTestCall.equals("Yes")) colour="#C0EEAC";
//if(WrittenTestCall.equals("No")) colour="#FEBCCD";
	
if(Status.equals("No Action")) colour="#F4F1F1";	
if(Status.equals("Selected")) colour="#C0EEAC";
if(Status.equals("Waiting")) colour="#FFEBAD";
if(Status.equals("Rejected")) colour="#FEBCCD";
	
String RefIDquery = "Select RefID from Referee where App_OnlineID = ? and Email = ?";
		pstmt = connect.prepareStatement(RefIDquery);
		pstmt.setInt(1,OnlineID);
		pstmt.setString(2,Referee1Email);
		rs1 = pstmt.executeQuery();
		
  	while (rs1.next())
{	
	RefID1 = rs1.getInt(1);
}

String RefID2query = "Select RefID from Referee where App_OnlineID = ? and Email = ?";
		pstmt = connect.prepareStatement(RefID2query);
		pstmt.setInt(1,OnlineID);
		pstmt.setString(2,Referee2Email);
		rs2 = pstmt.executeQuery();
		
  	while (rs2.next())
{	
	RefID2 = rs2.getInt(1);
}

  	out.println("<tr bgcolor="+colour+"><td align=center><form id=chkbx name=selectcandidate method=post action=SCmultiselect.ncra><input type=checkbox name=selectID value="+OnlineID+" /></td><td align=center>"+Status+"</td><td align=center>" +OnlineID+ "</td><td align=center><a href='OFDRProcess.ncra?oid="+OnlineID+"' target='_blank'><img src=/INAT2012/images/viewred.png width=27 height=27 border=0></a></td><td align=justify>" +PGDegree+"</td><td align=left>" +PGDegreeInstitute+ "</td><td align=center>" +PG_Univ+ "</td><td align=center>" +PGDegreePercentage+ "</td><td align=justify>" +Degree+"</td><td align=left>" +DegreeInstitute+ "</td><td align=left>" +DegreeUniversity+ "</td><td align=center>" +DegreePercentage+ "</td><td align=left>" +Inst_City+ "</td><td align=left>" +Inst_State+ "</td><td align=left>" +ApplicantName+ "</td><td align=center>" +DOB+ "</td><td align=center>" +Sex+ "</td><td align=center>" +Nationality+ "</td><td align=left>" +Telephone+ "</td><td align=justify>" +Email+ "</td><td align=left><a href='SCAFDRProcess.ncra?refid="+RefID1+"'><img src=/INAT2012/images/admin/referee.jpg align=right width=20 height=27 border=0></a>"+Referee1+ "</td><td align=left><a href='SCAFDRProcess.ncra?refid="+RefID2+"'><img src=/INAT2012/images/admin/referee.jpg align=right width=20 height=27 border=0></a>" +Referee2+ "</td></tr>");
	}
}
catch(Exception e){}
%>

</tbody>
              </table>
		    <p align="left" class="style38">&nbsp;</p>
		      <label>
		      <div align="center">
		        <input type="submit" value="Select" id="submit" name="Select" onclick="javascript:ValidateForm();" />
	          </div>
		      </label>
		    </form>
		  
	<s:set name="user" value="#session['User']"/>	
	<s:if test="%{#user==null}">
	<META HTTP-EQUIV="Refresh" CONTENT="0;URL=<s:text name="refresh_url_sc"/>">
	</s:if>	
	<s:else>
		<s:url id="logout" action="adminlogoutAction"/>
		<s:a href="%{logout}"></s:a>
	</s:else>

<script type="text/javascript">
      new SortableTable( "my_table" );
	  </script>
    </body>
</html>
