<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html" import="java.util.*"%>
<%@ page language="java" session="true" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    	<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    
            <title><tiles:insertAttribute name="title" ignore="true" /></title>
            <link rel="stylesheet" type="text/css" href="<s:url value="/css/adminStyleBootstrap.css"/>">
            
            <!-- Bootstrap core CSS -->
            <link rel="stylesheet" type="text/css" href="<s:url value="/JS/bootstrap/bootstrap/css/bootstrap.css"/>">
            <link rel="stylesheet" type="text/css" href="<s:url value="/css/side-wrapperMenu.css"/>">
            
            <!-- JS -->
            <script type="text/javascript" language="javascript" src="<s:url value="/JS/bootstrap/jquery/jquery-1.10.2.min.js"/>"> </script>
            <!-- Bootstrap JavaScripts -->
            <script type="text/javascript" language="javascript" src="<s:url value="/JS/bootstrap/bootstrap/js/bootstrap.min.js"/>"> </script>
            <script type="text/javascript" language="javascript" src="<s:url value="/JS/jquery-scrolltofixed-min.js"/>"> </script>	
            <script type="text/javascript" language="javascript" src="<s:url value="/JS/side-wrapperMenu.js"/>"> </script>		
			
 <!-- Custom CSS -->
    <style>
    body {
        padding-top: 70px;
        /* Required padding for .navbar-fixed-top. Remove if using .navbar-static-top. Change if height of navigation changes. */
    }
    </style>			
			
	<link rel="SHORTCUT ICON" href= "../images/ncralogo.jpg"/>        
    </head>
    
<body> 

<script type="text/javascript">
     $(document).ready(function() {
        // Dock the header to the top of the window when scrolled past the banner.
        // This is the default behavior.

        $('.panelhead').scrollToFixed({
        	marginTop: $('.navbar').outerHeight() + 1,
        	zIndex : 999
        });

    });
     
     </script>
          
     <div class="header">
     	<tiles:insertAttribute name="header" />
     </div>
     
     
     <tiles:insertAttribute name="menu" /> 
            
	 <div class="panelhead">
      <div class="container">
        <p class="text-muted">
	        <div class="row">
		        <div class="col-xs-7 col-md-7 text-left">
		        Summary
		        </div>
		        <div class="col-xs-5 col-md-3 text-right">
				        Welcome
				        <!-- <s:text name="logged_in_as"/> -->
				        <s:iterator value="adminuserlistlist" var="adminuserlist"><em>
				        <s:property value="Username"/></em></s:iterator>
				</div>        
		</div>	        
        </p>
      </div>
    </div>
    
<br><br>    
    
    <div id="wrapper">
        <div class="overlay"></div>
        <tiles:insertAttribute name="submenu"/>
     <!-- Page Content -->
        <div id="page-content-wrapper">
            <button type="button" class="hamburger is-closed" data-toggle="offcanvas">
                <span class="hamb-top"></span>
    			<span class="hamb-middle"></span>
				<span class="hamb-bottom"></span>
            </button>
            <div class="container">
                <div class="row">
                    	<div class="col-lg-10 col-lg-offset-1">
                        	<tiles:insertAttribute name="body"/>
                        </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->   
        
 </div>
    <!-- /#wrapper -->
        

	<footer class="footer">
      <div class="container">
        <p class="text-muted"> <tiles:insertAttribute name="footer" /></p>
      </div>
    </footer>
               
			                  
    </body>
</html>