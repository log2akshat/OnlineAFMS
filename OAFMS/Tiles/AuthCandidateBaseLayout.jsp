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
            <link href="<s:url value="../css/style.css"/>" rel="stylesheet" type="text/css"/>
            
<link rel="SHORTCUT ICON" href= "../images/ncralogo.jpg"/>             
    </head>
    
    <body>   
        <div id="logo">
                    <tiles:insertAttribute name="header"/>
                    
                    <br>
                     <div id="content">
                     <div class="post">
                     <tiles:insertAttribute name="menu" />   
                	</div>
                	</div>
                	
                </div>          
            <br><br><br>
            
<div id="page">                  
<div id="content">
<div id="heading_login"><s:text name="welcome"/><s:iterator value="userlistlist" var="userlist"><s:property value="Name"/></s:iterator>! 
 [<s:text name="regid"/> <s:property value="#session['User'].oid" default="Guest"/>]</div>

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