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
width:650px;
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

<div id="adminacc_heading"><s:text name="candimg"/> <s:text name="onereportsreceived"/> </div>

<br><br>
<table id='my_table'><thead>
<tr bgcolor="#DBCCC1">
	<th align="center"><s:text name="comb_refid"/></th>
	<th align="center"><s:text name="comb_regid"/></th>
	<th align="center"><s:text name="comb_Name"/></th>
	<th align="center"><s:text name="comb_Profname"/></th>
		<th align="center"><s:text name="comb_View"/></th>
	</tr>

</thead>
<tbody>	

<s:iterator value="refereelistlist" var="refereelist">
<tr>
<td align="center" width="10"><s:property value="RefID"/></td>
<td align="center" width="30"><s:property value="OnlineID"/></td>
<td width="150"><s:property value="Candname"/></td>
<td width="250"><s:property value="Refname"/></td>
<td width="20"><a href="AFDRProcess.ncra?refid=<s:property value="RefID"/>"><s:text name="red_arrow"/></a></td>
</tr>
</s:iterator>
</tbody>

<!--
<td colspan="2"><strong><a href="onereport.ncra?&&offset=<s:property value="prev"/>">Previous</a></strong></td>
<td colspan="2"><div align="center"><strong>Showing <s:property value="starter"/> to <s:property value="offset"/> of total <s:property value="Onereport"/> Records</strong> </div></td>
<td colspan="1"><div align="right"><strong><a href="onereport.ncra?&&offset=<s:property value="offset"/>">Next</a></strong></div></td>
 -->
</table>
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

<script type="text/javascript">
      new SortableTable( "my_table" );
	  </script>
    </body>
</html>
