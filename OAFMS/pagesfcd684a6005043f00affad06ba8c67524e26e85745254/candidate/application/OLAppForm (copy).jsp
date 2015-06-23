<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

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

<!-- JavaScript -->
<script type="text/javascript" language="javascript" src="/INAT/JS/Registration.js"> </script>
<script type="text/javascript" language="javascript" src="/INAT/JS/utils.js"> </script>
<script type="text/javascript" language="javascript" src="/INAT/JS/validation.js"> </script>
<script type="text/javascript" language="javascript" src="/INAT/JS/domTT.js"> </script>
<link rel="gettext" type="application/x-po" href="/INAT/locale/en_US.utf8/LC_MESSAGES/messages.po" />
<script type="text/javascript" src="/INAT/JS/Gettext.js"></script>

<sj:head jqueryui="true"/>
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
	
	<s:hidden name="appform.Passwd" value="%{Apply.password}"></s:hidden>
	
	<!-- Applicant Name -->
	<s:textfield name="appform.Name" key="appform_Name" required="true" size="37" onpaste="return false" onKeyPress="return appos(event, false)"/>
	
	<!-- Applicant Surname 
	<s:textfield name="appform.Surname" key="appform_Surname" required="true" size="37" onpaste="return false" onKeyPress="return appos(event, false)"/>
	-->
	
	<!-- Applicant DOB -->
	<sj:datepicker  id="DOB" name="appform.DOB" key="appform_DOB" required="true" readonly="true" showAnim="fadeIn" showOptions="{direction: 'up' }" duration="slow" yearRange="1976:1992" changeYear="true" displayFormat="yy/mm/dd" appendText=" [YYYY/MM/DD]"/>
	
	<!-- Applicant Gender -->				
	<s:select name="appform.Gender" key="appform_Gender" required="true" 
				headerKey=""
				headerValue="-- Select --" list="#{'Male':'Male','Female':'Female'}" />
	
	<!-- Applicant Nationality -->			
	<s:textfield name="appform.Nationality" key="appform_Nationality" required="true" size="37" onpaste="return false" onKeyPress="return appos(event, false)"/>
	
	<!-- Applicant Email -->
	<s:textfield name="appform.Email" key="appform_Email" required="true" readonly="true" size="37" value="%{Apply.email}"/>
	
	<!-- Applicant Correspondence Address -->
	<s:textarea name="appform.CAddress" key="appform_CAddress" required="true" 
				cols="35" rows="5" onpaste="return false" 
				oncontextmenu="return false" 
				onKeyPress="return appos(event, false)"/>
	
	<!-- Applicant Correspondence Address Pin -->				
	<s:textfield name="appform.CPin" key="appform_CPin" required="true"
					size="37" onpaste="return false" 
					oncontextmenu="return false" 
					onKeyPress="return alphanumonly(event, false)"/>
					
	<!-- Applicant Correspondence Address City -->			
	<s:select name="appform.CCity" key="appform_CCity" required="true" tooltip="If your city is not listed in the drop-down menu, please choose 'Others'"
	 headerKey="" headerValue="-------- Select City--------" list="%{city}"/>
	
	<!-- Applicant Correspondence Address State-->				
	 <s:select name="appform.CState" key="appform_CState" required="true"
	 headerKey="" headerValue="-------- Select State--------" list="%{state}"/>
	
	<!-- Applicant Telephone -->				
	<s:textfield name="appform.Telephone" key="appform_Telephone" required="true" tooltip="Prefix STD Code"
					size="37" onpaste="return false" placeholder="Prefix STD Code"
					oncontextmenu="return false" 
					onKeyPress="return phoneno(event, false)"/>
	
	<s:checkbox key="Sameasabove" name="copy" OnClick="javascript:sameasabove(this.form);" />

	<!-- Applicant Permanent Address -->			
	<s:textarea name="appform.PAddress" key="appform_PAddress" required="true" 
				cols="35" rows="5" onpaste="return false" 
				oncontextmenu="return false" 
				onKeyPress="return appos(event, false)" />	
				
	<!-- Applicant Permanent Address Pin -->				
	<s:textfield name="appform.PPin" key="appform_PPin" required="true" 
					size="37" onpaste="return false" 
					oncontextmenu="return false" 
					onKeyPress="return alphanumonly(event, false)"/>
				
	<!-- Applicant Permanent Address City -->			
	<s:select name="appform.PCity" key="appform_PCity" required="true" tooltip="If your city is not listed in the drop-down menu, please choose 'Others'"
	 headerKey="" headerValue="-------- Select City--------" list="%{city}"/>
	
	<!-- Applicant Permanent Address State-->				
	  <s:select name="appform.PermanentState" key="appform_PState" required="true"
	 headerKey="" headerValue="-------- Select State--------" list="%{state}"/>
	 
	 <!-- Applicant Category -->				
	<s:select name="appform.Category" key="appform_Category" required="true" 
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
	<s:select name="appform.Edu_XthStd" list="#{'Xth Std':'Xth Std'}" theme="qxhtml"> 
        <s:param name="labelcolspan" value="%{1}" /> 
    </s:select>
     <s:textfield name="appform.Edu_XthStd_Institute" size="35" theme="qxhtml"
     			maxLength="65" onpaste="return false" 
				oncontextmenu="return false" required="true"
				onKeyPress="return appos(event, false)"> 
         <s:param name="inputcolspan" value="%{2}" /> 
    </s:textfield>
     <s:textfield name="appform.Edu_XthStd_Board" size="22" theme="qxhtml"
     			maxLength="22" onpaste="return false" 
				oncontextmenu="return false" required="true"
				onKeyPress="return appos(event, false)"> 
         <s:param name="inputcolspan" value="%{2}" /> 
    </s:textfield>
     <s:textfield name="appform.Edu_XthStd_Year" size="10" theme="qxhtml"
     		    maxLength="4" onpaste="return false" 
				oncontextmenu="return false" required="true"
				onKeyPress="return numbersonly(event, false)"> 
         <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    <s:textfield name="appform.Edu_XthStd_Grade" size="10" theme="qxhtml"
    			maxLength="6" onpaste="return false" 
				oncontextmenu="return false" 
				onKeyPress="return alphanumonly(event, false)"> 
         <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    <s:textfield name="appform.Edu_XthStd_Pc" size="3" theme="qxhtml"
    			maxLength="2" onpaste="return false" 
				oncontextmenu="return false" 
				onKeyPress="return numbersonly(event, false)"> 
        <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    
    <!-- Applicant XIIth Standard Details -->
	<s:select name="appform.Edu_XIIthStd" list="#{'XIIth Std':'XIIth Std'}" theme="qxhtml"> 
        <s:param name="labelcolspan" value="%{1}" /> 
    </s:select>
     <s:textfield name="appform.Edu_XIIthStd_Institute" size="35" theme="qxhtml"
     			maxLength="65" onpaste="return false" 
				oncontextmenu="return false" required="true"
				onKeyPress="return appos(event, false)"> 
         <s:param name="inputcolspan" value="%{2}" /> 
    </s:textfield>
     <s:textfield name="appform.Edu_XIIthStd_Board" size="22" theme="qxhtml"
     			maxLength="22" onpaste="return false" 
				oncontextmenu="return false" required="true"
				onKeyPress="return appos(event, false)"> 
         <s:param name="inputcolspan" value="%{2}" /> 
    </s:textfield>
     <s:textfield name="appform.Edu_XIIthStd_Year" size="10" theme="qxhtml"
     		    maxLength="4" onpaste="return false" 
				oncontextmenu="return false" required="true"
				onKeyPress="return numbersonly(event, false)"> 
         <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    <s:textfield name="appform.Edu_XIIthStd_Grade" size="10" theme="qxhtml"
    			maxLength="6" onpaste="return false" 
				oncontextmenu="return false" 
				onKeyPress="return alphanumonly(event, false)"> 
         <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    <s:textfield name="appform.Edu_XIIthStd_Pc" size="3" theme="qxhtml"
    			maxLength="2" onpaste="return false" 
				oncontextmenu="return false" 
				onKeyPress="return numbersonly(event, false)"> 
        <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    
	 <!-- Applicant UG Details -->
	<s:select name="appform.Edu_UG" headerKey="NULL" headerValue="- Select -" list="#{'B.Sc.':'B.Sc.','B.E.':'B.E.','B.Tech.':'B.Tech.','B.S.':'B.S.','Int. M.S.':'Int. M.S.'}" 
	required="true" theme="qxhtml"> 
        <s:param name="labelcolspan" value="%{1}" /> 
    </s:select>
     <s:textfield name="appform.Edu_UG_Institute" size="35" theme="qxhtml"
     			maxLength="65" onpaste="return false" 
				oncontextmenu="return false" required="true"
				onKeyPress="return appos(event, false)"> 
         <s:param name="inputcolspan" value="%{2}" /> 
    </s:textfield>
     <s:textfield name="appform.Edu_UG_Board" size="22" theme="qxhtml"
     			maxLength="22" onpaste="return false" 
				oncontextmenu="return false" required="true"
				onKeyPress="return appos(event, false)"> 
         <s:param name="inputcolspan" value="%{2}" /> 
    </s:textfield>
     <s:textfield name="appform.Edu_UG_Year" size="10" theme="qxhtml"
     		    maxLength="4" onpaste="return false" 
				oncontextmenu="return false" required="true"
				onKeyPress="return numbersonly(event, false)"> 
         <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    <s:textfield name="appform.Edu_UG_Grade" size="10" theme="qxhtml"
    			maxLength="6" onpaste="return false" 
				oncontextmenu="return false" 
				onKeyPress="return alphanumonly(event, false)"> 
         <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    <s:textfield name="appform.Edu_UG_Pc" size="3" theme="qxhtml"
    			maxLength="2" onpaste="return false" 
				oncontextmenu="return false" 
				onKeyPress="return numbersonly(event, false)"> 
        <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    
     <!-- Applicant PG Details -->
	<s:select name="appform.Edu_PG" headerKey="NULL" headerValue="- Select -" list="#{'M.Sc.':'M.Sc.','M.E.':'M.E.','M.Tech.':'M.Tech.','M.S.':'M.S.','N/A':'N/A'}" 
	onchange="pgyear(this.form);pgpc(this.form);" theme="qxhtml"> 
        <s:param name="labelcolspan" value="%{1}" /> 
    </s:select>
     <s:textfield name="appform.Edu_PG_Institute" size="35" theme="qxhtml"
     			maxLength="65" onpaste="return false" 
				oncontextmenu="return false"
				onKeyPress="return appos(event, false)"> 
         <s:param name="inputcolspan" value="%{2}" /> 
    </s:textfield>
     <s:textfield name="appform.Edu_PG_Board" size="22" theme="qxhtml"
     			maxLength="22" onpaste="return false" 
				oncontextmenu="return false"
				onKeyPress="return appos(event, false)"> 
         <s:param name="inputcolspan" value="%{2}" /> 
    </s:textfield>
     <s:textfield name="appform.Edu_PG_Year" size="10" theme="qxhtml"
     		    maxLength="4" onpaste="return false" 
				oncontextmenu="return false" value = "0000" readOnly = "true"
				onKeyPress="return numbersonly(event, false)"> 
         <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    <s:textfield name="appform.Edu_PG_Grade" size="10" theme="qxhtml"
    			maxLength="6" onpaste="return false" 
				oncontextmenu="return false" 
				onKeyPress="return alphanumonly(event, false)"> 
         <s:param name="inputcolspan" value="%{1}" /> 
    </s:textfield>
    <s:textfield name="appform.Edu_PG_Pc" size="3" theme="qxhtml"
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
	<s:textfield name="appform.Presentcourse" key="appform_Presentcourse" size="55" 
					maxlength="200" onpaste="return false" onKeyPress="return appos(event, false)"/>
					
	<!-- Applicant Year of completion of present course -->
	<s:select name="appform.Coursecompyear" key="appform_Coursecompyear" headerKey="0" headerValue="- YYYY -" 
				list="#{'2011':'2011','2012':'2012','2013':'2013'}"/>
	
	<!-- Applicant 1st Referee Details -->			
	<s:textarea name="appform.Referee1" key="appform_Referee1" required="true" oncontextmenu="return false"
				cols="53" rows="4" onpaste="return false" 
				oncontextmenu="return false" maxlength="500"
				onKeyPress="return appos(event, false)" /> 
				
	<!-- Applicant 1st Referee Email -->
	<s:textfield name="appform.Referee1Email" key="appform_Referee1Email" required="true" size="55" oncontextmenu="return false"
					maxlength="50" onpaste="return false" onKeyPress="return appos(event, false)" onKeyPress="return charsonly(event, false)"/>
	
	<!-- Applicant 2nd Referee Details -->			
	<s:textarea name="appform.Referee2" key="appform_Referee2" required="true" oncontextmenu="return false"
				cols="53" rows="4" onpaste="return false" 
				oncontextmenu="return false" maxlength="500"
				onKeyPress="return appos(event, false)" /> 
				
	<!-- Applicant 2nd Referee Email -->
	<s:textfield name="appform.Referee2Email" key="appform_Referee2Email" required="true" size="55" oncontextmenu="return false"
					maxlength="50" onpaste="return false" onKeyPress="return appos(event, false)" onKeyPress="return charsonly(event, false)"/>
	
	<!-- Applicant Reason -->			
	<s:textarea name="appform.Reason" key="appform_Reason" oncontextmenu="return false"
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
	<s:select name="appform.Appliedbefore1" key="appform_Appliedbefore1" list="#{'No':'No','Yes':'Yes'}" 
				required="true" onchange="javascript:appbefore(this.form);"/>
	
	<!-- B. Applicant Applied before in IUCAA/NCRA -->
	<s:textarea name="appform.Appliedbefore2" key="appform_Appliedbefore2" cols="53" rows="3" oncontextmenu="return false"
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
	<s:select name="appform.Interest" key="appform_Interest" headerKey="" headerValue="- Select -"
			list="#{'Theory':'Theory','Observations':'Observations','Computation':'Computation','All of the above':'All of the above'}" required="true" 
			onchange="javascript:appbefore(this.form);"/>
	
	<!-- Applicant General Questions A. Subject -->			
	<s:textarea name="appform.GQ_Subject" key="appform_GQ_Subject" oncontextmenu="return false"
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
	<s:textarea name="appform.GQ_Project" key="appform_GQ_Project" oncontextmenu="return false"
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
	<s:textarea name="appform.GQ_Awards" key="appform_GQ_Awards" oncontextmenu="return false"
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
	<s:textarea name="appform.GQ_Result" key="appform_GQ_Result" oncontextmenu="return false"
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