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
margin-left: -10px;
margin-top: -2px;
font-size: 100%;
width:720px;
}

table td {
	text-align: justify;
	}
	
#profile {
margin-left: 15px;
margin-top: 28px;
}
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

<div id="adminacc_heading"><s:text name="candimg"/> <s:text name="rejectedlist"/> </div>

<br>

<table id='my_table'><thead>
<tr bgcolor="#DBCCC1">
	<th align="center"><s:text name="comb_regid"/></th>
	<th align="center"><s:text name="comb_Name"/></th>
	<th align="center"><s:text name="comb_DOB"/></th>
	<th align="center"><s:text name="comb_Gender"/></th>
	<th align="center"><s:text name="comb_Email"/></th>
	<th align="center"><s:text name="comb_Phone"/></th>
	<th align="center"><s:text name="comb_Edit_Wait"/></th>
	<th align="center"><s:text name="comb_View"/></th>
	</tr>

</thead>
<tbody>	

<s:iterator value="userlistlist" var="userlist">
<tr>
<td align="center" width="30"><s:property value="onlineID"/></td>
<td width="100"><s:property value="Name"/></td>
<td width="110" align="center"><s:property value="DOB"/></td>
<td width="80"><s:property value="Gender"/></td>
<td width="50"><s:property value="Email"/></td>
<td width="50"><s:property value="Telephone"/></td>
<td width="70"><a href='SCSelectWaiting.ncra?oid=<s:property value="onlineID"/>'><img src=/INAT2012/images/Tick.png width=20 height=20 border=0></a><a href='SCWaitingReject.ncra?oid=<s:property value="onlineID"/>'><img src=/INAT2012/images/QM.png width=20 height=20 border=0></a></td>
<td width="20"><a href="SCOFDRProcess.ncra?oid=<s:property value="onlineID"/>"><s:text name="red_arrow"/></a></td>
</tr>
</s:iterator>
</tbody>
</table>
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

<script type="text/javascript">
      new SortableTable( "my_table" );
	  </script>
    </body>
</html>
