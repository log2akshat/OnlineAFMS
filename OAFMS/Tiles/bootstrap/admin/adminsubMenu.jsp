<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="/struts-tags" prefix="s"%>

 <!-- Sidebar -->
        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
            <ul class="nav sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                       Brand
                    </a>
                </li>
                <li>
                    <a href="adminProfileViewLogin.ncra">
                    <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> 
                    <s:text name="view_profile"/></a>
                </li>
                <li>
                    <a href="adminProfileUpdateLogin.ncra">
                    <span class="glyphicon glyphicon-edit" aria-hidden="true"></span> 
                    <s:text name="update_profile"/></a>
                </li>
                <li>
                    <a href="RefereeProfileLogin.ncra">
                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span> 
                    <s:text name="referee_data"/></a>
                </li>
                <li>
                    <a href="CallLetters.ncra">
                    <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> 
                    <s:text name="print_call_letters"/></a>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> 
                  <s:text name="send_password"/><span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li class="dropdown-header">Send mails to..</li>
                    
                    <li style="font-size: 11px;"><a href="SendAppPasswd.ncra">
                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span> 
                    <s:text name="applicant_paaswd"/></a></li>
                    
                    <li style="font-size: 11px;"><a href="SendRef1Passwd.ncra">
                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span> 
                    <s:text name="referee1"/></a></li>
                    
                    <li style="font-size: 11px;"><a href="SendRef2Passwd.ncra">
                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span> 
                    <s:text name="referee2"/></a></li>
                  </ul>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> 
                  <s:text name="comb_report"/><span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li class="dropdown-header">View combined reports of..</li>
                    
                    <li style="font-size: 11px;"><a href="CandCombReport.ncra">
                    <span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> 
                    <s:text name="comb_app"/></a></li>
                    
                    <li style="font-size: 11px;"><a href="RefCombReport.ncra">
                    <span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> 
                    <s:text name="comb_referee"/></a></li>
                  </ul>
                </li>
                <li>
                    <a href="SCInvitation.ncra">
                    <span class="glyphicon glyphicon-share" aria-hidden="true"></span>  
                    <s:text name="sc_invite"/></a>
                </li>
                <li>
                    <a href="SCPasswd.ncra">
                    <span class="glyphicon glyphicon-lock" aria-hidden="true"></span> 
                    <s:text name="sc_passwd"/></a>
                </li>
                <li>
                    <a href="SCProfile.ncra">
                    <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> 
                    <s:text name="sc_profile"/></a>
                </li>
                <li>
                    <a href="SCUpdateProfile.ncra">
                    <span class="glyphicon glyphicon-edit" aria-hidden="true"></span> 
                    <s:text name="sc_updateprofile"/></a>
                </li>
                <li>
                    <a href="Waiting.ncra">
                    <span class="glyphicon glyphicon-file" aria-hidden="true"></span> 
                    <s:text name="waiting_cand"/></a>
                </li>
                <li>
                    <a href="ExcelPreview.ncra">
                    <span class="glyphicon glyphicon-th" aria-hidden="true"></span> 
                    <s:text name="Excel"/></a>
                </li>
            </ul>
        </nav>
        <!-- /#sidebar-wrapper -->