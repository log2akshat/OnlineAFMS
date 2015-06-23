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
            <link rel="stylesheet" type="text/css" href="<s:url value="/css/adminStyle.css"/>">
               
<style type="text/css">
<!--
a {
color : #346086;
}
-->
</style>
			
<link rel="SHORTCUT ICON" href= "../images/ncralogo.jpg"/>             
    </head>
    
    <body>   
        <div id="logo">
                    <tiles:insertAttribute name="header"/>
                    
                    <br>
                     <div id="content">
                     <div class="post_mainmenu">
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
    </body>
</html>