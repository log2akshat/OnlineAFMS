<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html" import="java.util.*"%>
<%@ page language="java" session="true" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title><tiles:insertAttribute name="title" ignore="true" /></title>
			
            <!-- Bootstrap core CSS -->
            <link rel="stylesheet" type="text/css" href="<s:url value="/JS/bootstrap/bootstrap/css/bootstrap.css"/>">
			<link rel="stylesheet" type="text/css" href="<s:url value="/JS/bootstrap/bootstrap-select/css/bootstrap-select.min.css"/>">			
			<link rel="stylesheet" type="text/css" href="<s:url value="/JS/bootstrap/bootstrap/css/aksbootstrap.css"/>">
			<link rel="stylesheet" type="text/css" href="<s:url value="/JS/bootstrap/bootstrap-dialog/css/bootstrap-dialog.min.css"/>">
			<link rel="stylesheet" type="text/css" href="<s:url value="/css/adminStyleCandSel.css"/>">
            <link rel="stylesheet" type="text/css" href="<s:url value="/css/Button.css"/>">
			
			<!-- JavaScripts -->
            <script type="text/javascript" language="javascript" src="<s:url value="/JS/bootstrap/jquery/jquery-1.10.2.min.js"/>"> </script>
            <script type="text/javascript" language="javascript" src="<s:url value="/JS/bootstrap/bootstrap/js/bootstrap.min.js"/>"> </script>
			<script type="text/javascript" language="javascript" src="<s:url value="/JS/bootstrap/bootstrap-dialog/js/bootstrap-dialog.min.js"/>"></script>
			<script type="text/javascript" language="javascript" src="<s:url value="/JS/bootstrap/bootstrap-select/js/bootstrap-select.min.js"/>"> </script>   
            <script type="text/javascript" language="javascript" src="<s:url value="/JS/events.js"/>"> </script>
			<script type="text/javascript" language="javascript" src="<s:url value="/JS/sort.js"/>"> </script>
			<script type="text/javascript" language="javascript" src="<s:url value="/JS/Back.js"/>"> </script>
			
<link rel="SHORTCUT ICON" href= "../images/ncralogo.jpg"/>             
    </head>
    
    <body>   
        <div id="logo">
                    <tiles:insertAttribute name="header"/>
                    
                    <br>
                     <div id="content">
                     <div class="post_mainmenu" style="top-margin: -100px;">
                     <tiles:insertAttribute name="menu" />   
                	</div>
                	</div>
                	
                </div>          
            <br><br><br>
            
<div id="page">                  
<div id="content">
<div id="adminhead"><s:text name="logged_in_as"/><s:iterator value="adminuserlistlist" var="adminuserlist"><em><s:property value="Username"/></em></s:iterator></div>

<div class="post"> 
				<div class="post_submenu">
				<tiles:insertAttribute name="submenu"/> 
				</div>
				
				<div class="entry_candlogin">                   
                <tiles:insertAttribute name="body" />   
                </div>  
</div>
</div>
</div>               
            <div id="footer">
                   <tiles:insertAttribute name="footer" />
               </div>
               
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
       <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script type="text/javascript" language="javascript" src="<s:url value="/JS/bootstrap/bootstrap/js/ie10-viewport-bug-workaround.js"/>"> </script>
               
    </body>
</html>