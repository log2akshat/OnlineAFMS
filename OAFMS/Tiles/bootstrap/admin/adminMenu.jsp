<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="/struts-tags" prefix="s"%>

<body>
<!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container" style="width: 100%">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               <a class="navbar-brand" href="#">INAT-2015</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-left">
                     <li>
                        <a href="<s:url action="adminHome"/>" >
						<span class="glyphicon glyphicon-home" aria-hidden="true"></span> 
					</a> 
                    </li>
                    <li>
                        <a href="<s:url action="adminResetPasswd"/>" ><s:text name="reset_passwd"/></a>
                    </li>
                    <li>
                        <a href="<s:url action="SCommittee"/>" ><s:text name="committee_mem"/></a>
                    </li>
                    <li>
                        <a href="appselection.ncra?selection=All&DegInst=&DegUniv=&Refree=&Submit=Search"><s:text name="app_selection"/></a>
                    </li>
                    <li>
                        <a class="yuimenuitemlabel" href="<s:url action="selected"/>" ><s:text name="slected_cand"/></a> 
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><s:text name="ref_report"/><span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu"> 
                            <li><a href="<s:url action="zeroreport"/>" ><s:text name="zero_report"/></a></li>
                            <li><a href="<s:url action="onereport"/>" ><s:text name="one_report"/></a></li> 
                            <li><a href="<s:url action="RefCombReport"/>" ><s:text name="all_report"/></a></li>
                        </ul>    
                    </li>
                </ul>
                
                <ul class="nav navbar-nav navbar-right">
                    <li>
                    	<a href="<s:url action="adminlogoutAction"/>" >
						<span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> 
					</a> 
                    </li>
                </ul>   
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
</body>