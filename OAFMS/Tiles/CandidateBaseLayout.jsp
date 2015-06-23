<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="width=device-width; charset=UTF-8"; name="viewport"; initial-scale=1.0">
            <title><tiles:insertAttribute name="title" ignore="true" /></title>
            <link href="<s:url value="../css/style.css"/>" 
  rel="stylesheet" type="text/css"/>

<link rel="SHORTCUT ICON" href= "../images/ncralogo.jpg"/>    

<!--[if IE]>
        <link rel="stylesheet" type="text/css" href="../css/IEonly.css" />
<![endif]-->        
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
<div class="post"> 

<div class="entry">                                  
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