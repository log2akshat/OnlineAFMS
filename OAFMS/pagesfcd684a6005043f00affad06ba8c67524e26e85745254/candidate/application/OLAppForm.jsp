<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<sx:head />

<head>

<style type="text/css">
<!--
.style1 {font-size: 100%; color: red}
.WClabelStyle {color: red}
-->
</style>

<!-- CSS Scripts -->
<link rel="stylesheet" type="text/css" href="<s:url value="/css/formstyle.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/domTT.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/table.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/JS/bootstrap/bootstrap/css/aksbootstrap.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/JS/bootstrap/bootstrap-dialog/css/bootstrap-dialog.min.css"/>">

<!-- JavaScript -->
<script type="text/javascript" language="javascript" src="<s:url value="/JS/Registration.js"/>"> </script>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/utils.js"/>"> </script>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/validation.js"/>"> </script>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/domTT.js"/>"> </script>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/bootstrap/jquery/jquery-1.10.2.min.js"/>"></script>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/bootstrap/bootstrap/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/bootstrap/prettify/run_prettify.js"/>"></script>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/bootstrap/bootstrap-dialog/js/bootstrap-dialog.min.js"/>"></script>
<link rel="gettext" type="application/x-po" href="<s:url value="/locale/en_US.utf8/LC_MESSAGES/messages.po"/>">
<script type="text/javascript" src="<s:url value="/JS/Gettext.js"/>"></script>

<sj:head jqueryui="true" jquerytheme="pepper-grinder"/>
</head>

<div id="heading">
<h2> <s:text name="title_OLAF"/> </h2>
</div>

<div id="index">
<b><s:text name="msg"/></b>
<br>
<br>
<span class="style1"><s:text name="mandatory"/></span>
<br>
<br>
	<s:if test="hasActionErrors()">
	<div class="error_edu">
	<s:actionerror/>
	</div>
	</s:if>
	
	<s:if test="hasFieldErrors()">
	<div class="error_edu"> 
	<s:fielderror /> 
	</div>
	</s:if>
	
	<s:bean name="java.util.HashMap" id="qTableLayout">
    <s:param name="tablecolspan" value="%{8}" />
	</s:bean>
	
	<s:form method="POST" action="Submitappform" theme="xhtml" tooltipConfig="#{'tooltipIcon':'../images/tooltip.png'}" onsubmit="return validateForm_Submitappform();">
	
	<s:hidden name="Passwd" value="%{Apply.password}"></s:hidden>
	
	<!-- Applicant Name -->
	<s:textfield name="Name" key="appform_Name" readonly="true" value="%{candidatename}" required="true" size="37" onpaste="return false" onKeyPress="return appos(event, false)"/>

	<!-- Applicant Surname 
	<s:textfield name="Surname" key="appform_Surname" required="true" size="37" onpaste="return false" onKeyPress="return appos(event, false)"/>
	-->
	
	<!-- Applicant DOB -->
	<sj:datepicker name="DOB" id="DOB" key="appform_DOB" firstDay="1" required="true" minDate="-51y" maxDate="-13y" readonly="true" showAnim="fadeIn" showOptions="{direction: 'up' }" duration="slow" yearRange="1960:1996" changeYear="true" displayFormat="yy/mm/dd" appendText=" [YYYY/MM/DD]"/>
	
	<!-- Applicant Gender -->				
	<s:select name="Gender" key="appform_Gender" required="true" 
				headerKey=""
				headerValue="-- Select --" list="#{'Male':'Male','Female':'Female'}" />
	
	<!-- Applicant Nationality -->			
	<s:textfield name="Nationality" key="appform_Nationality" required="true" size="37" onpaste="return false" onKeyPress="return appos(event, false)"/>
	
	<!-- Applicant Email -->
	<s:textfield name="Email" key="appform_Email" required="true" readonly="true" size="37" value="%{Apply.email}"/>
	
	<!-- Applicant Correspondence Address -->
	<s:textarea name="CAddress" key="appform_CAddress" required="true" 
				cols="35" rows="5" onpaste="return false" 
				oncontextmenu="return false" 
				onKeyPress="return appos(event, false)"/>
	
	<!-- Applicant Correspondence Address Pin -->				
	<s:textfield name="CPin" key="appform_CPin" required="true"
					size="37" onpaste="return false" 
					oncontextmenu="return false" 
					onKeyPress="return alphanumonly(event, false)"/>
					
	<!-- Applicant Correspondence Address City -->			
	<!-- <s:select name="CCity" key="appform_CCity" required="true" tooltip="If your city is not listed in the drop-down menu, please choose 'Others'"
	 headerKey="" headerValue="-------- Select City--------" list="%{city}"/>
	-->	
	
	<sx:autocompleter name="CCity" key="appform_CCity" required="true" size="1" list="city" showDownArrow="false" dropdownWidth="180"
	dropdownHeight="250" tooltip="If your city is not listed in the drop-down list, please write it" onkeypress="return appos(event, false)"></sx:autocompleter>
	
	<!-- Applicant Correspondence Address State-->				
	 <s:select name="CState" key="appform_CState" required="true"
	 headerKey="" headerValue="-------- Select State--------" list="%{state}"/>
	
	<!-- Applicant Telephone -->				
	<s:textfield name="Telephone" key="appform_Telephone" required="true" tooltip="Prefix STD Code"
					size="37" onpaste="return false" placeholder="Prefix STD Code"
					oncontextmenu="return false" 
					onKeyPress="return phoneno(event, false)"/>
	
	<td><s:text name="appform_PAddress"></s:text></td>
	<td><input type="checkbox" name="copy" OnClick="javascript:sameasabove(this.form);"><s:text name="Sameasabove"></s:text></td>
	
	<!-- <s:checkbox key="Sameasabove" name="copy" OnClick="javascript:sameasabove(this.form);" /> -->

	<!-- Applicant Institute Address -->			
	<s:textarea name="PAddress" key="PAddressifnot" required="true" 
				cols="35" rows="5" onpaste="return false"
				tooltip="This is the postal address of the institute of the candidate for the qualifying exam for INAT. See the frequently asked questions for information about the qualifying exam."
				oncontextmenu="return false" 
				onKeyPress="return appos(event, false)" />	
				
	<!-- Applicant Permanent Address Pin -->				
	<s:textfield name="PPin" key="appform_PPin" required="true" 
					size="37" onpaste="return false" 
					oncontextmenu="return false" 
					onKeyPress="return alphanumonly(event, false)"/>
				
	<!-- Applicant Permanent Address City -->			
	<!--<s:select name="PCity" key="appform_PCity" tooltip="If your city is not listed in the drop-down menu, please choose 'Others'"
	 headerKey="" headerValue="-------- Select City--------" list="%{city}"/> -->

	<sx:autocompleter name="PCity" key="appform_PCity" size="1" list="city" showDownArrow="false" dropdownWidth="180"
	dropdownHeight="250" tooltip="If your city is not listed in the drop-down list, please write it" onkeypress="return appos(event, false)"></sx:autocompleter>

	<!-- Applicant Permanent Address State-->				
	  <s:select name="PermanentState" key="appform_PState" required="true"
	 headerKey="" headerValue="-------- Select State--------" list="%{state}"/>
	 
	 <!-- Applicant Category -->				
	<s:select name="Category" key="appform_Category" required="true" 
				headerKey="" 
				headerValue="-------- Select Category --------" list="#{'General':'General','OBC':'OBC','SC/ST':'SC/ST','Other reserved category':'Other reserved category'}" />
	 
</table>

<br><br>
<s:text name="Educational_Qualifications"></s:text>
<br><br>
<table class="EduTable"> 

    <tr bgcolor="#DBCCC1">
        <th><s:text name="TableCol1Heading"></s:text></th>
        <th colspan="2"><s:text name="TableCol2Heading"></s:text></th>
        <th colspan="2"><s:text name="TableCol3Heading"></s:text></th>
        <th><s:text name="TableCol4Heading"></s:text></th>
        <th><s:text name="TableCol5Heading"></s:text></th>
        <th><s:text name="TableCol6Heading"></s:text></th>
    </tr>	
	
	<!-- Applicant Xth Standard Details -->
	<s:select name="Edu_XthStd" list="#{'Xth Std':'Xth Std'}" theme="qxhtml"> 
        <s:param name="labelcolspan" value="%{1}" /> 
    </s:select>
     <s:textfield name="Edu_XthStd_Institute" size="35" theme="qxhtml"
     			maxLength="65" onpaste="return false" 
				oncontextmenu="return false" required="true"
				onKeyPress="return appos(event, false)"> 
         <s:param name="inputcolspan" value="%{2}" /> 
    </s:textfield>
     <s:textfield name="Edu_XthStd_Board" size="22" theme="qxhtml"
     			maxLength="22" onpaste="return false" 
				oncontextmenu="return false" required="true"
				onKeyPress="return appos(event, false)"> 
         <s:param name="inputcolspan" value="%{2}" /> 
    </s:textfield>
     <s:textfield name="Edu_XthStd_Year" size="10" theme="qxhtml"
     		    maxLength="4" onpaste="return false" 
				oncontextmenu="return false" required="true"
				onKeyPress="return numbersonly(event, false)"> 
         <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    <s:textfield name="Edu_XthStd_Grade" size="10" theme="qxhtml"
    			maxLength="6" onpaste="return false" 
				oncontextmenu="return false" 
				onKeyPress="return alphanumonly(event, false)"> 
         <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    <s:textfield name="Edu_XthStd_Pc" size="3" theme="qxhtml"
    			maxLength="2" onpaste="return false" 
				oncontextmenu="return false" 
				onKeyPress="return numbersonly(event, false)"> 
        <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    
    <!-- Applicant XIIth Standard Details -->
	<s:select name="Edu_XIIthStd" list="#{'XIIth Std':'XIIth Std'}" theme="qxhtml"> 
        <s:param name="labelcolspan" value="%{1}" /> 
    </s:select>
     <s:textfield name="Edu_XIIthStd_Institute" size="35" theme="qxhtml"
     			maxLength="65" onpaste="return false" 
				oncontextmenu="return false" required="true"
				onKeyPress="return appos(event, false)"> 
         <s:param name="inputcolspan" value="%{2}" /> 
    </s:textfield>
     <s:textfield name="Edu_XIIthStd_Board" size="22" theme="qxhtml"
     			maxLength="22" onpaste="return false" 
				oncontextmenu="return false" required="true"
				onKeyPress="return appos(event, false)"> 
         <s:param name="inputcolspan" value="%{2}" /> 
    </s:textfield>
     <s:textfield name="Edu_XIIthStd_Year" size="10" theme="qxhtml"
     		    maxLength="4" onpaste="return false" 
				oncontextmenu="return false" required="true"
				onKeyPress="return numbersonly(event, false)"> 
         <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    <s:textfield name="Edu_XIIthStd_Grade" size="10" theme="qxhtml"
    			maxLength="6" onpaste="return false" 
				oncontextmenu="return false" 
				onKeyPress="return alphanumonly(event, false)"> 
         <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    <s:textfield name="Edu_XIIthStd_Pc" size="3" theme="qxhtml"
    			maxLength="2" onpaste="return false" 
				oncontextmenu="return false" 
				onKeyPress="return numbersonly(event, false)"> 
        <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    
	 <!-- Applicant UG Details -->
	<s:select name="Edu_UG" headerKey="NULL" headerValue="- Select -" list="#{'B.Sc.':'B.Sc.','B.E.':'B.E.','B.Tech.':'B.Tech.','B.S.':'B.S.','Int. M.S.':'Int. M.S.'}" 
	required="true" theme="qxhtml"> 
        <s:param name="labelcolspan" value="%{1}" /> 
    </s:select>
     <s:textfield name="Edu_UG_Institute" size="35" theme="qxhtml"
     			maxLength="65" onpaste="return false" 
				oncontextmenu="return false" required="true"
				onKeyPress="return appos(event, false)"> 
         <s:param name="inputcolspan" value="%{2}" /> 
    </s:textfield>
     <s:textfield name="Edu_UG_Board" size="22" theme="qxhtml"
     			maxLength="22" onpaste="return false" 
				oncontextmenu="return false" required="true"
				onKeyPress="return appos(event, false)"> 
         <s:param name="inputcolspan" value="%{2}" /> 
    </s:textfield>
     <s:textfield name="Edu_UG_Year" size="10" theme="qxhtml"
     		    maxLength="4" onpaste="return false" 
				oncontextmenu="return false" required="true"
				onKeyPress="return numbersonly(event, false)"> 
         <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    <s:textfield name="Edu_UG_Grade" size="10" theme="qxhtml"
    			maxLength="6" onpaste="return false" 
				oncontextmenu="return false" 
				onKeyPress="return alphanumonly(event, false)"> 
         <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    <s:textfield name="Edu_UG_Pc" size="3" theme="qxhtml"
    			maxLength="2" onpaste="return false" 
				oncontextmenu="return false" 
				onKeyPress="return numbersonly(event, false)"> 
        <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    
     <!-- Applicant PG Details -->
	<s:select name="Edu_PG" headerKey="NULL" headerValue="- Select -" list="#{'M.Sc.':'M.Sc.','M.E.':'M.E.','M.Tech.':'M.Tech.','M.S.':'M.S.','Others':'Others'}" 
	onchange="pgyear(this.form);pgpc(this.form);" theme="qxhtml"> 
        <s:param name="labelcolspan" value="%{1}" /> 
    </s:select>
     <s:textfield name="Edu_PG_Institute" size="35" theme="qxhtml"
     			maxLength="65" onpaste="return false" 
				oncontextmenu="return false"
				onKeyPress="return appos(event, false)"> 
         <s:param name="inputcolspan" value="%{2}" /> 
    </s:textfield>
     <s:textfield name="Edu_PG_Board" size="22" theme="qxhtml"
     			maxLength="22" onpaste="return false" 
				oncontextmenu="return false"
				onKeyPress="return appos(event, false)"> 
         <s:param name="inputcolspan" value="%{2}" /> 
    </s:textfield>
     <s:textfield name="Edu_PG_Year" size="10" theme="qxhtml"
     		    maxLength="4" onpaste="return false" 
				oncontextmenu="return false" value = "0000" readOnly = "true"
				onKeyPress="return numbersonly(event, false)"> 
         <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    <s:textfield name="Edu_PG_Grade" size="10" theme="qxhtml"
    			maxLength="6" onpaste="return false" 
				oncontextmenu="return false" 
				onKeyPress="return alphanumonly(event, false)"> 
         <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    <s:textfield name="Edu_PG_Pc" size="3" theme="qxhtml"
    			maxLength="2" onpaste="return false" 
				oncontextmenu="return false"  value = "00" readOnly = "true"
				onKeyPress="return numbersonly(event, false)"> 
        <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    
</table>
<br>
<s:text name="PostEducational_Qualifications"></s:text>  
<br><br><br>
<table class="wwFormTable_1">

	<!-- Applicant Present course and branch -->
	<s:textarea name="Presentcourse" key="appform_Presentcourse"
					cols="53" rows="2" onpaste="return false" 
				    oncontextmenu="return false"
					maxlength="650" onpaste="return false" onKeyPress="return appos(event, false)"/>
					
	<!-- Applicant Year of completion of present course -->
	<s:textfield name="Coursecompyear" key="appform_Coursecompyear" size="53" 
					maxlength="4" onpaste="return false" onKeyPress="return appos(event, false)"/>
					
	<!-- Applicant 1st Referee Details -->			
	<s:textarea name="Referee1" key="appform_Referee1" required="true" oncontextmenu="return false"
				cols="53" rows="4" onpaste="return false" 
				oncontextmenu="return false" maxlength="500"
				onKeyPress="return appos(event, false)" /> 
				
	<!-- Applicant 1st Referee Email -->
	<s:textfield name="Referee1Email" key="appform_Referee1Email" required="true" size="53" oncontextmenu="return false"
					maxlength="50" onpaste="return false" onKeyPress="return appos(event, false)" onKeyPress="return charsonly(event, false)"/>
	
	<s:textfield name="Referee1EmailConfirm" key="appform_Referee1EmailConfirm" required="true" size="53" oncontextmenu="return false"
					maxlength="50" onpaste="return false" onKeyPress="return appos(event, false)" onKeyPress="return charsonly(event, false)"/>
					
	<!-- Applicant 2nd Referee Details -->			
	<s:textarea name="Referee2" key="appform_Referee2" required="true" oncontextmenu="return false"
				cols="53" rows="4" onpaste="return false" 
				oncontextmenu="return false" maxlength="500"
				onKeyPress="return appos(event, false)" /> 
				
	<!-- Applicant 2nd Referee Email -->
	<s:textfield name="Referee2Email" key="appform_Referee2Email" required="true" size="53" oncontextmenu="return false"
					maxlength="50" onpaste="return false" onKeyPress="return appos(event, false)" onKeyPress="return charsonly(event, false)"/>
	
	<s:textfield name="Referee2EmailConfirm" key="appform_Referee2EmailConfirm" required="true" size="53" oncontextmenu="return false"
					maxlength="50" onpaste="return false" onKeyPress="return appos(event, false)" onKeyPress="return charsonly(event, false)"/>
	
	<!-- Applicant Reason -->			
	<s:textarea name="Reason" key="appform_Reason" oncontextmenu="return false"
				cols="53" rows="4" 
				oncontextmenu="return false" 
				onKeyPress="return appos(event, false)" onkeyup="javascript:charrestrictionReason(this.form);"/> 

</table>
	<div style="float:right; color:red">
	<s:text name="WC"></s:text>				
	<s:textfield name="restrictsReason" size="3" readonly="true" value="0" theme="simple"/>
	</div>
<br><br>	
<table class="wwFormTable_1">
	
	<!-- A. Applicant Applied before in IUCAA/NCRA -->
	<s:select name="Appliedbefore1" key="appform_Appliedbefore1" list="#{'No':'No','Yes':'Yes'}" 
				required="true" onchange="javascript:appbefore(this.form);"/>
	
	<!-- B. Applicant Applied before in IUCAA/NCRA -->
	<s:textarea name="Appliedbefore2" key="appform_Appliedbefore2" cols="53" rows="3" oncontextmenu="return false"
					value="Click Yes to give details..." disabled="true"
					onKeyPress="return appos(event, false)" onkeyup="javascript:charrestrictionAppliedbefore2(this.form);"/>

</table>
	<div style="float:right; color:red">
	<s:text name="WC"></s:text>				
	<s:textfield name="restrictsAppliedbefore2" size="3" readonly="true" value="0" theme="simple"/>
	</div>
<br><br>	
<table class="wwFormTable_1">
	
	<!-- A. Applicant Interest -->
	<s:select name="Interest" key="appform_Interest" headerKey="" headerValue="---- Select ----"
			list="#{'Theory':'Theory','Observations':'Observations','Computation':'Computation','Theory, Observations, Computation':'Theory, Observations, Computation'}" required="true" 
			onchange="javascript:appbefore(this.form);"/>
	
	<!-- Applicant General Questions A. Subject -->			
	<s:textarea name="GQ_Subject" key="appform_GQ_Subject" oncontextmenu="return false"
				cols="53" rows="5"
				oncontextmenu="return false" required="true"
				onKeyPress="return appos(event, false)" onkeyup="javascript:charrestrictionSubject(this.form);"/> 
				
</table>
	<div style="float:right; color:red">
	<s:text name="WC"></s:text>				
	<s:textfield name="restrictsSubject" size="3" readonly="true" value="0" theme="simple"/>
	</div>
<br><br>	
<table class="wwFormTable_1">
	
	<!-- Applicant General Questions B. Project -->	
	<s:textarea name="GQ_Project" key="appform_GQ_Project" oncontextmenu="return false"
				cols="53" rows="5" 
				oncontextmenu="return false" 
				onKeyPress="return appos(event, false)" onkeyup="javascript:charrestrictionProject(this.form);"/> 
										
</table>
	<div style="float:right; color:red">
	<s:text name="WC"></s:text>				
	<s:textfield name="restrictsProject" size="3" readonly="true" value="0" theme="simple"/>
	</div>
<br><br>	
<table class="wwFormTable_1">
				
	<!-- Applicant General Questions C. Awards -->			
	<s:textarea name="GQ_Awards" key="appform_GQ_Awards" oncontextmenu="return false"
				cols="53" rows="5"
				oncontextmenu="return false" 
				onKeyPress="return appos(event, false)" onkeyup="javascript:charrestrictionAwards(this.form);"/> 

</table>
	<div style="float:right; color:red">
	<s:text name="WC"></s:text>				
	<s:textfield name="restrictsAwards" size="3" readonly="true" value="0" theme="simple"/>
	</div>
<br><br>	
<table class="wwFormTable_1">
				
	<!-- Applicant General Questions D. Result -->			
	<s:textarea name="GQ_Result" key="appform_GQ_Result" oncontextmenu="return false"
				cols="53" rows="5" 
				oncontextmenu="return false" 
				onKeyPress="return appos(event, false)" onkeyup="javascript:charrestrictionResult(this.form);"/> 
</table>
				
	<div style="float:right; color:red">
	<s:text name="WC"></s:text>				
	<s:textfield name="restrictsResult" size="3" readonly="true" value="0" theme="simple"/>
	</div>
	
<br><br><br><br>			
	<s:submit key="apply_submit" id="submit"/>
	</s:form>
	<br><br>  
</div>
