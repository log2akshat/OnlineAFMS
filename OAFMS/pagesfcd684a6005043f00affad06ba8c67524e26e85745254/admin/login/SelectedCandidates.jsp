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
margin-top: 0px;
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

.selectall {
	color: #660033;
	font-style: italic;
	font-weight: bold;
	font-size: 16px;
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

checked=false;
function selectAll(chkbx) {
	var selctall= document.getElementById('chkbx');
	 if (checked == false)
          {
           checked = true
          }
        else
          {
          checked = false
          }
	for (var i =0; i < selctall.elements.length; i++) 
	{
	 selctall.elements[i].checked = checked;
	}
      }
//--></script>

</head>      

<body>

<div id="adminacc_heading"><s:text name="candimg"/> <s:text name="selectedlist"/> </div>

<br>
<span class="selectall">Select All : </span><input type='checkbox' name='selectall' onclick='selectAll(chkbx);'>
<br><br>
<table id='my_table'><thead>
<tr bgcolor="#DBCCC1">
	<th align="center"><s:text name="comb_Select"/></th>
	<th align="center"><s:text name="comb_regid"/></th>
	<th align="center"><s:text name="comb_Name"/></th>
	<th align="center"><s:text name="comb_DOB"/></th>
	<th align="center"><s:text name="comb_Gender"/></th>
	<th align="center"><s:text name="comb_Email"/></th>
	<th align="center"><s:text name="comb_Phone"/></th>
	<!-- <th align="center"><s:text name="comb_EmailSent"/></th>  -->
	<th align="center"><s:text name="comb_View"/></th>
	</tr>

</thead>
<tbody>	

<s:iterator value="userlistlist" var="userlist">
<tr>
<td width="20" align=center><form id=chkbx name=selectcandidate method=post action=multimail.ncra><input type=checkbox name=selectID value=<s:property value="onlineID"/>/></td>
<td align="center" width="30"><s:property value="onlineID"/></td>
<td width="180"><s:property value="Name"/></td>
<td width="80" align="center"><s:property value="DOB"/></td>
<td width="50"><s:property value="Gender"/></td>
<td width="50"><s:property value="Email"/></td>
<td width="50"><s:property value="Telephone"/></td>
<!-- <td width="50"><s:property value="EmailSent"/></td>  -->
<td width="20"><a href="OFDRProcess.ncra?oid=<s:property value="onlineID"/>"><s:text name="red_arrow"/></a></td>
</tr>
</s:iterator>
</tbody>

<!-- 
<td colspan="2"><strong><a href="selected.ncra?&&offset=<s:property value="prev"/>">Previous</a></strong></td>
<td colspan="5"><div align="center"><strong>Showing <s:property value="starter"/> to <s:property value="offset"/> of total <s:property value="Selected"/> Records</strong> </div></td>
<td colspan="1"><div align="right"><strong><a href="selected.ncra?&&offset=<s:property value="offset"/>">Next</a></strong></div></td>
-->
</table>
<br>

			  <label>
		      <div align="center">
		        <input type="submit" id ="submit" value="Send Mail" name="Select" onclick="javascript:ValidateForm();" />
	          </div>
		      </label>

<br><br><br>
	          
	<s:set name="user" value="#session['User']"/>	
	<s:if test="%{#user==null}">
	<META HTTP-EQUIV="Refresh" CONTENT="0;URL=<s:text name="refresh_url"/>">
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
