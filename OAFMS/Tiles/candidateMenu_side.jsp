<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<head>

<!-- Fonts CSS - Recommended but not required -->
<link rel="stylesheet" type="text/css" href="<s:url value="/JS/lib/build/fonts/fonts-min.css"/>" >
 
<!-- Core + Skin CSS -->
<link rel="stylesheet" type="text/css" href="<s:url value="/JS/lib/build/menu/assets/skins/sam/menu.css"/>" >
 
<!-- Dependencies --> 
<script src="../JS/lib/build/yahoo-dom-event/yahoo-dom-event.js"></script>
<script src="../JS/lib/build/container/container_core-min.js"></script>

<!-- Source File -->
<script src="../JS/lib/build/menu/menu-min.js"></script>

<style type="text/css"> 
 
            div.yui-b p {
            
                margin: 0 0 .5em 0;
                color: #999;
            
            }
            
            div.yui-b p strong {
            
                font-weight: bold;
                color: #000;
            
            }
            
            div.yui-b p em {
 
                color: #000;
            
            }            
           
            #productsandservices {
                
                position: static;
                
            }
 
 
			/*
				For IE 6: trigger "haslayout" for the anchor elements in the root Menu by 
				setting the "zoom" property to 1.  This ensures that the selected state of 
				MenuItems doesn't get dropped when the user mouses off of the text node of 
				the anchor element that represents a MenuItem's text label.
			*/
 
			#productsandservices .yuimenuitemlabel {
			
				_zoom: 1;
			
			}
 
			#productsandservices .yuimenu .yuimenuitemlabel {
 
				_zoom: normal;
 
			}
			
	.styleINAT {
	color: #660033;
	font-size: 17px
}
 
        </style> 
 

<script type="text/javascript">
<!-- Page-specific script --> 
            /*
                 Initialize and render the Menu when its elements are ready 
                 to be scripted.
            */
            
            YAHOO.util.Event.onContentReady("productsandservices", function () {
            
                /*
                     Instantiate a Menu:  The first argument passed to the 
                     constructor is the id of the element in the page 
                     representing the Menu; the second is an object literal 
                     of configuration properties.
                */
 
                var oMenu = new YAHOO.widget.Menu("productsandservices", { 
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
<div class="styleINAT">LINKS</div>
<br>
<h3>
               
                <!-- start: secondary column from outer template --> 
                <div class="yui-b"> 
 
                       <div id="productsandservices" class="yuimenu"> 
                            <div class="bd"> 
                                <ul class="first-of-type"> 
                                   <li class="yuimenuitem"><a class="yuimenuitemlabel" href="<s:url action="welcome"/>" >Home</a> 
                                    </li> 
                                    
                                    
                                    <li class="yuimenuitem"><a class="yuimenuitemlabel" href="<s:url action="Guidelines"/>" >Instructions</a> 
                                    </li> 
                                   
                                     
                                    <li class="yuimenuitem"><a class="yuimenuitemlabel" href="<s:url action="Guidelines"/>" >Apply Online</a> 
                
                                        <div id="entertainment" class="yuimenu"> 
                                            <div class="bd">                    
                                                <ul> 
                                                    <li class="yuimenuitem"><a class="yuimenuitemlabel" href="<s:url action="Form"/>" >Register</a></li>
                                                    <li class="yuimenuitem"><a class="yuimenuitemlabel" href="<s:url action="Test"/>" >Apply</a></li> 
                                                    
                                                </ul>                    
                                            </div> 
                                        </div>     
                                    </li> 
                                    
                                  <li class="yuimenuitem"><a class="yuimenuitemlabel" href="<s:url action="Form"/>" >Referee Feedback</a> 
                                    </li> 
                                     
                                     <li class="yuimenuitem"><a class="yuimenuitemlabel" href="<s:url action="Form"/>" >Candidate Login</a> 
                                    </li>
                                    
                                    <li class="yuimenuitem"><a class="yuimenuitemlabel" href="<s:url action="Form"/>" >INAT Poster</a> 
                                    </li> 
                                    
                                    <li class="yuimenuitem"><a class="yuimenuitemlabel" href="<s:url action="Form"/>" >Important Dates</a> 
                                    </li>
                                    
                                    <li class="yuimenuitem"><a class="yuimenuitemlabel" href="<s:url action="FAQ"/>" >FAQs</a> 
                                    </li> 
                            </div> 
                        </div> 
                    
                </div> 
                <!-- end: secondary column from outer template --> 
                </h3>
</div>
</body>