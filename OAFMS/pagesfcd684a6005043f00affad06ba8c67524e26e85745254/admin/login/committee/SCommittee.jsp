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
font-size: 105%;
width:700px;
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

</head>      

<body>

<div id="adminacc_heading"><s:text name="candimg"/> <s:text name="committeelist"/> </div>

<br>

<table id='my_table'><thead>
<tr bgcolor="#DBCCC1">
	<th align="center"><s:text name="sc_regid"/></th>
	<th align="center"><s:text name="sc_Member"/></th>
	<th align="center"><s:text name="sc_Username"/></th>
	<th align="center"><s:text name="sc_Email"/></th>
	<th align="center"><s:text name="sc_Edit"/></th>
	<th align="center"><s:text name="sc_View"/></th>
	</tr>

</thead>
<tbody>	

<s:iterator value="userlistlist" var="userlist">
<tr>
<td align="center" width="30"><s:property value="ID"/></td>
<td width="180"><s:property value="Name"/></td>
<td width="100"><s:property value="Username"/></td>
<td width="50"><s:property value="Email"/></td>
<td width="50"><a href='SCDeleteAccount.ncra?scuname=<s:property value="Username"/>'><img src=/INAT2012/images/Delete.png width=20 height=20 border=0></a><a href='SCProfileUpdateProcess.ncra?scuname=<s:property value="Username"/>'><img src=/INAT2012/images/edit.png width=20 height=20 border=0></a></td>
<td width="20"><a href="SCProfileProcess.ncra?scuname=<s:property value="Username"/>"><s:text name="red_arrow"/></a></td>
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
