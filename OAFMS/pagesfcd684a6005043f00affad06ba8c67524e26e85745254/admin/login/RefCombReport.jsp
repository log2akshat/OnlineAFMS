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
<link rel="stylesheet" type="text/css" href="<s:url value="/css/side-wrapperMenu.css"/>">
     
<style type="text/css">
<!--
table.Seltable {
margin-left: 10px;
margin-top: 0px;
font-size: 95%;
width:2200px;
}

table td {
	text-align: justify;
	}
	
table.EduTable {
font-size: 95%;
margin-top: -70px;
margin-left: -281px;
width:920px;
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
<script type="text/javascript" language="javascript" src="<s:url value="/JS/sidewrapperMenu.js"/>"> </script>

</script>

</head>      

<body>

<div id="adminacc_heading"><s:text name="refereeimg"/> <s:text name="refcomblist"/> </div>
<br>

<table id='my_table' class="Seltable table table-bordered table-hover table-responsive">
<thead>
<tr bgcolor="#DE4949" style="color:#FFFFFF; text-align: center; border-color: #EBCCD1">
	<th align="center"><s:text name="comb_RefID"/></th>
	<th align="center"><s:text name="comb_regid"/></th>
	<th align="center"><s:text name="comb_CandName"/></th>
	<th align="center"><s:text name="comb_RefName"/></th>
	<th align="center"><s:text name="comb_Desg"/></th>
	<th align="center"><s:text name="comb_Inst"/></th>
	<th align="center"><s:text name="comb_know"/></th>
	<th align="center"><s:text name="comb_splsub"/></th>
	<th align="center"><s:text name="comb_recommend"/></th>
	<th align="center"><s:text name="comb_View"/></th>
	</tr>
</thead>

<tbody>	
<s:iterator value="refereelistlist" var="refereelist">
<tr>
<td width="20"><s:property value="RefID"/></td>
<td width="20"><s:property value="OnlineID"/></td>
<td width="50"><s:property value="Candname"/></td>
<td width="50"><s:property value="Refname"/></td>
<td width="80"><s:property value="Designation"/></td>
<td width="80"><s:property value="Institute"/></td>
<td width="250"><s:property value="Knowing"/></td>
<td width="200"><s:property value="Interest"/></td>
<td width="20"><s:property value="Summary"/></td>
<td width="20"><a href="AFDRProcess.ncra?refid=<s:property value="RefID"/>"><s:text name="red_arrow"/></a></td>
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
	<META HTTP-EQUIV="Refresh" CONTENT="0;URL=<s:text name="refresh_url"/>">
	</s:if>	
	<s:else>
		<s:url id="logout" action="adminlogoutAction"/>
		<s:a href="%{logout}"></s:a>
	</s:else>

<script type="text/javascript">
      new SortableTable("my_table");
	  </script>
    </body>
</html>
