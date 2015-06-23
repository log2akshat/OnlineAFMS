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
 
 <script type="text/javascript" src="../JS/lib/build/yahoo-dom-event/yahoo-dom-event.js"></script> 
 <script type="text/javascript" src="../JS/lib/build/animation/animation.js"></script> 
 <script type="text/javascript" src="../JS/lib/build/container/container_core.js"></script> 

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
/*
Initialize and render the MenuBar when its elements are ready 
to be scripted.
*/

YAHOO.util.Event.onContentReady("productsandservices", function () {

var ua = YAHOO.env.ua,
   oAnim;  // Animation instance 


/*
    "beforeshow" event handler for each submenu of the MenuBar
    instance, used to setup certain style properties before
    the menu is animated.
*/

function onSubmenuBeforeShow(p_sType, p_sArgs) {

   var oBody,
       oElement,
       oShadow,
       oUL;


   if (this.parent) {

       oElement = this.element;

       /*
            Get a reference to the Menu's shadow element and 
            set its "height" property to "0px" to syncronize 
            it with the height of the Menu instance.
       */

       oShadow = oElement.lastChild;
       oShadow.style.height = "0px";

       
       /*
           Stop the Animation instance if it is currently 
           animating a Menu.
       */ 
   
       if (oAnim && oAnim.isAnimated()) {
       
           oAnim.stop();
           oAnim = null;
       
       }


       /*
           Set the body element's "overflow" property to 
           "hidden" to clip the display of its negatively 
           positioned <ul> element.
       */ 

       oBody = this.body;


       //  Check if the menu is a submenu of a submenu.

       if (this.parent && 
           !(this.parent instanceof YAHOO.widget.MenuBarItem)) {
       

           /*
               There is a bug in gecko-based browsers and Opera where 
               an element whose "position" property is set to 
               "absolute" and "overflow" property is set to 
               "hidden" will not render at the correct width when
               its offsetParent's "position" property is also 
               set to "absolute."  It is possible to work around 
               this bug by specifying a value for the width 
               property in addition to overflow.
           */

           if (ua.gecko || ua.opera) {
           
               oBody.style.width = oBody.clientWidth + "px";
           
           }
           
           
           /*
               Set a width on the submenu to prevent its 
               width from growing when the animation 
               is complete.
           */
           
           if (ua.ie == 7) {

               oElement.style.width = oElement.clientWidth + "px";

           }
       
       }


       oBody.style.overflow = "hidden";


       /*
           Set the <ul> element's "marginTop" property 
           to a negative value so that the Menu's height
           collapses.
       */ 

       oUL = oBody.getElementsByTagName("ul")[0];

       oUL.style.marginTop = ("-" + oUL.offsetHeight + "px");
   
   }

}


/*
   "tween" event handler for the Anim instance, used to 
   syncronize the size and position of the Menu instance's 
   shadow and iframe shim (if it exists) with its 
   changing height.
*/

function onTween(p_sType, p_aArgs, p_oShadow) {

   if (this.cfg.getProperty("iframe")) {
   
       this.syncIframe();

   }

   if (p_oShadow) {

       p_oShadow.style.height = this.element.offsetHeight + "px";
   
   }

}


/*
   "complete" event handler for the Anim instance, used to 
   remove style properties that were animated so that the 
   Menu instance can be displayed at its final height.
*/

function onAnimationComplete(p_sType, p_aArgs, p_oShadow) {

   var oBody = this.body,
       oUL = oBody.getElementsByTagName("ul")[0];

   if (p_oShadow) {
   
       p_oShadow.style.height = this.element.offsetHeight + "px";
   
   }


   oUL.style.marginTop = "";
   oBody.style.overflow = "";
   

   //  Check if the menu is a submenu of a submenu.

   if (this.parent && 
       !(this.parent instanceof YAHOO.widget.MenuBarItem)) {


       // Clear widths set by the "beforeshow" event handler

       if (ua.gecko || ua.opera) {
       
           oBody.style.width = "";
       
       }
       
       if (ua.ie == 7) {

           this.element.style.width = "";

       }
   
   }
   
}


/*
    "show" event handler for each submenu of the MenuBar 
    instance - used to kick off the animation of the 
    <ul> element.
*/

function onSubmenuShow(p_sType, p_sArgs) {

   var oElement,
       oShadow,
       oUL;

   if (this.parent) {

       oElement = this.element;
       oShadow = oElement.lastChild;
       oUL = this.body.getElementsByTagName("ul")[0];
   

       /*
            Animate the <ul> element's "marginTop" style 
            property to a value of 0.
       */

       oAnim = new YAHOO.util.Anim(oUL, 
           { marginTop: { to: 0 } },
           .5, YAHOO.util.Easing.easeOut);


       oAnim.onStart.subscribe(function () {

           oShadow.style.height = "100%";
       
       });


       oAnim.animate();


       /*
           Subscribe to the Anim instance's "tween" event for 
           IE to syncronize the size and position of a 
           submenu's shadow and iframe shim (if it exists)  
           with its changing height.
       */

       if (YAHOO.env.ua.ie) {
           
           oShadow.style.height = oElement.offsetHeight + "px";


           /*
               Subscribe to the Anim instance's "tween"
               event, passing a reference Menu's shadow 
               element and making the scope of the event 
               listener the Menu instance.
           */

           oAnim.onTween.subscribe(onTween, oShadow, this);

       }


       /*
           Subscribe to the Anim instance's "complete" event,
           passing a reference Menu's shadow element and making 
           the scope of the event listener the Menu instance.
       */

       oAnim.onComplete.subscribe(onAnimationComplete, oShadow, this);
   
   }

}


/*
    Instantiate a MenuBar:  The first argument passed to the 
    constructor is the id of the element in the page 
    representing the MenuBar; the second is an object literal 
    of configuration properties.
*/

var oMenuBar = new YAHOO.widget.MenuBar("productsandservices", { 
                                           autosubmenudisplay: true, 
                                           hidedelay: 750, 
                                           lazyload: true });


/*
    Subscribe to the "beforeShow" and "show" events for 
    each submenu of the MenuBar instance.
*/

oMenuBar.subscribe("beforeShow", onSubmenuBeforeShow);
oMenuBar.subscribe("show", onSubmenuShow);


/*
    Call the "render" method with no arguments since the 
    markup for this MenuBar already exists in the page.
*/

oMenuBar.render();          

});
        </script> 
 
    </head> 

<body class="yui-skin-sam" id="yahoo-com">
<div id="indexpanel">
<h3>
               
                <!-- start: secondary column from outer template --> 
                <div class="yui-b"> 
 
                       <div id="productsandservices" class="yuimenubar yuimenubarnav"> 
                            <div class="bd"> 
                                <ul class="first-of-type"> 
                                   <li class="yuimenuitem"><a class="yuimenuitemlabel" href="<s:url action="adminHome"/>" ><s:text name="home"/></a> 
                                    </li> 
                                    
                                    
                                    <li class="yuimenuitem"><a class="yuimenuitemlabel" href="<s:url action="adminResetPasswd"/>" ><s:text name="reset_passwd"/></a> 
                                    </li> 
                                   
                                     
                                    <li class="yuimenuitem"><a class="yuimenuitemlabel" href="<s:url action="SCommittee"/>" ><s:text name="committee_mem"/></a>
                                    </li> 
                                    
                                  <li class="yuimenuitem"><a class="yuimenuitemlabel" href="appselection.ncra?selection=All&DegInst=&DegUniv=&Refree=&Submit=Search"><s:text name="app_selection"/></a> 
                                    </li> 
                                     
                                     <li class="yuimenuitem"><a class="yuimenuitemlabel" href="<s:url action="selected"/>" ><s:text name="slected_cand"/></a> 
                                    </li>
                                    
                                    <li class="yuimenuitem"><a class="yuimenuitemlabel" href="#" ><s:text name="ref_report"/></a> 
                                    <div id="entertainment" class="yuimenu"> 
                                            <div class="bd">                    
                                                <ul> 
                                                    <li class="yuimenuitem"><a class="yuimenuitemlabel" href="<s:url action="zeroreport"/>" ><s:text name="zero_report"/></a></li>
                                                    <li class="yuimenuitem"><a class="yuimenuitemlabel" href="<s:url action="onereport"/>" ><s:text name="one_report"/></a></li> 
                                                    <li class="yuimenuitem"><a class="yuimenuitemlabel" href="<s:url action="RefCombReport"/>" ><s:text name="all_report"/></a></li>
                                                </ul>                    
                                            </div> 
                                        </div>   
                                    </li> 
                                    
                                    <li class="yuimenuitem"><a class="yuimenuitemlabel" href="<s:url action="adminlogoutAction"/>" ><s:text name="logout"/></a> 
                                    </li> 
                            </div> 
                        </div> 
                    
                </div> 
                <!-- end: secondary column from outer template --> 
                </h3>
                
</div>
<br><br>
</body>