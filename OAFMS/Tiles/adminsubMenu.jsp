<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html" import="java.util.*"%>
<%@ page language="java" session="true" pageEncoding="ISO-8859-1"%>
<head>

<!-- Standard reset, fonts and grids --> 
<link rel="stylesheet" type="text/css" href="../JS/lib/build/reset-fonts-grids/reset-fonts-grids.css"> 
 
<!-- Fonts CSS + JavaScript 
ALL OTHER REQUIRED DEPENDENCY ARE IMPORTED FROM GLOBAL candidateMenu.jsp
-->

<script type="text/javascript" src="../JS/sha256.js"></script>

<style type="text/css"> 
.yui-skin-sam .yuisubmenu .bd  {
    border: solid 1px #808080;
    background-color: #8B3A3A;
	background-image: url("../images/VM/11.gif");    
}

.yui-skin-sam .MenuitemLabel {

    padding: 0 20px;
    color: #FFF;
    text-decoration: none;
    cursor: default;
}

/* Selected MenuItem #B3D4FF */
.yui-skin-sam .yuimenuitem-selected {
    background-color: #B39E83;
}

.yui-skin-sam .MenuitemLabel:visited {
    color: #FFF;	
}

     #productsandservices1 {  
    position: static;   
}
</style> 
 

<script type="text/javascript"> 
YAHOO.util.Event.onContentReady("productsandservices1", function () {
    
    /*
         Instantiate a Menu:  The first argument passed to the 
         constructor is the id of the element in the page 
         representing the Menu; the second is an object literal 
         of configuration properties.
    */

    var oMenu = new YAHOO.widget.Menu("productsandservices1", { 
                                            position: "static", 
                                            hidedelay:  750, 
                                            lazyload: true });

    /*
         Call the "render" method with no arguments since the 
         markup for this Menu instance is already exists in the page.
    */

    oMenu.render();            

});

</script>
  
 
    </head> 

<body class="yui-skin-sam" id="yahoo-com">
<div id="indexpanel_side">
<h3>

 <!-- start: secondary column from outer template --> 
                <div class="yui-b"> 
                       <div id="productsandservices1" class="yuisubmenu"> 
                            <div class="bd"> 
                                <ul class="first-of-type"> 
                                
                                <li class="yuimenuitem first-of-type"><a class="MenuitemLabel" href="#"><s:text name="administration"/></a> </li>
                                <li class="yuimenuitem first-of-type"><a class="MenuitemLabel" href="#"><s:text name="----------------------"/></a> </li>
                                
                                    <li class="yuimenuitem first-of-type"><a class="MenuitemLabel" href="adminProfileViewLogin.ncra"><s:text name="view_profile"/></a> </li> 
                      				 
                                   
                                    <li class="yuimenuitem"><a class="MenuitemLabel" href="adminProfileUpdateLogin.ncra"><s:text name="update_profile"/></a></li> 
                                   
                                    <li class="yuimenuitem"><a class="MenuitemLabel" href="RefereeProfileLogin.ncra"><s:text name="referee_data"/></a></li> 
                                   
                                      <li class="yuimenuitem"><a class="MenuitemLabel" href="#"><s:text name="send_password"/></a> 
                					       <div id="information" class="yuisubmenu"> 
                                            <div class="bd">                                        
                                                <ul> 
                                                    <li class="yuimenuitem"><a class="MenuitemLabel" href="SendAppPasswd.ncra"><s:text name="applicant_paaswd"/></a></li> 
                                                    <br>
                                                    <li class="yuimenuitem"><a class="MenuitemLabel" href="SendRef1Passwd.ncra"><s:text name="referee1"/></a></li>
                                                    <br>
                                                    <li class="yuimenuitem"><a class="MenuitemLabel" href="SendRef2Passwd.ncra"><s:text name="referee2"/></a></li> 
                                                </ul>                    
                                            </div> 
                                        </div>   
                                    </li>                                   
                                                                   
                                   <li class="yuimenuitem"><a class="MenuitemLabel" href="#"><s:text name="comb_report"/></a> 
                					       <div class="yuisubmenu"> 
                                            <div class="bd">                                        
                                                <ul> 
                                                    <li class="yuimenuitem"><a class="MenuitemLabel" href="CandCombReport.ncra"><s:text name="comb_app"/></a></li> 
                                                    <br>
                                                    <li class="yuimenuitem"><a class="MenuitemLabel" href="RefCombReport.ncra"><s:text name="comb_referee"/></a></li>
                                                </ul>                    
                                            </div> 
                                        </div>   
                                    </li>      
                                 
                                      <br>
                                     <li class="yuimenuitem first-of-type"><a class="MenuitemLabel" href="#"><s:text name="settings"/></a> </li>
                                		<li class="yuimenuitem first-of-type"><a class="MenuitemLabel" href="#"><s:text name="----------------------"/></a> </li>
                               
                               <li class="yuimenuitem"><a class="MenuitemLabel" href="SCInvitation.ncra"><s:text name="sc_invite"/></a></li> 
                               
                                    <li class="yuimenuitem"><a class="MenuitemLabel" href="SCPasswd.ncra"><s:text name="sc_passwd"/></a></li> 

                                     <li class="yuimenuitem"><a class="MenuitemLabel" href="SCProfile.ncra"><s:text name="sc_profile"/></a></li> 
                                     
                                      <li class="yuimenuitem"><a class="MenuitemLabel" href="SCUpdateProfile.ncra"><s:text name="sc_updateprofile"/></a></li> 
                                      
                                       <li class="yuimenuitem"><a class="MenuitemLabel" href="CallLetters.ncra"><s:text name="print_call_letters"/></a></li>
                                       
                                       <li class="yuimenuitem"><a class="MenuitemLabel" href="Waiting.ncra"><s:text name="waiting_cand"/></a></li> 
                                       
                                       <li class="yuimenuitem"><a class="MenuitemLabel" href="ExcelPreview.ncra"><s:text name="Excel"/></a></li> 
                                </ul>            
                            </div> 
                        </div> 
                    
                </div> 
                <!-- end: secondary column from outer template --> 
                </h3>
                
</div>
<br><br>
</body>
