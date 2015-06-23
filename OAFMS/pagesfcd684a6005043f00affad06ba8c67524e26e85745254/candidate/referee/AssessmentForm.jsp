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
<link rel="stylesheet" type="text/css" href="<s:url value="/JS/bootstrap/bootstrap/css/aksbootstrap.css"/>">
<link rel="stylesheet" type="text/css" href="<s:url value="/JS/bootstrap/bootstrap-dialog/css/bootstrap-dialog.min.css"/>">

<!-- JavaScript -->
<script type="text/javascript" language="javascript" src="<s:url value="/JS/Registration.js"/>"> </script>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/AssessmentForm.js"/>"> </script>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/utils.js"/>"> </script>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/validation.js"/>"> </script>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/domTT.js"/>"> </script>
<script type="text/javascript" language="javascript" src="/INAT/JS/domTT.js"> </script>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/bootstrap/jquery/jquery-1.10.2.min.js"/>"></script>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/bootstrap/bootstrap/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/bootstrap/prettify/run_prettify.js"/>"></script>
<script type="text/javascript" language="javascript" src="<s:url value="/JS/bootstrap/bootstrap-dialog/js/bootstrap-dialog.min.js"/>"></script>
<link rel="gettext" type="application/x-po" href="<s:url value="/locale/en_US.utf8/LC_MESSAGES/messages.po"/>">
<script type="text/javascript" src="<s:url value="/JS/Gettext.js"/>"></script>

</head>

<div id="heading">
<h2> <s:text name="heading_AssessmentForm"/> </h2>
</div>
<br>
<div align="justify" id="index">
<s:text name="AssessmentForm_Message"/>
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
	
<s:form method="POST" action="SubmitRefereeform" theme="xhtml" validate="true" tooltipConfig="#{'tooltipIcon':'../images/tooltip.png'}">

	<!-- Candidate Online ID -->
	<s:textfield name="Oid" key="refform_OID" required="true" size="5" readonly="true" value="%{Refapply.onlineid}"/>
	
	<!-- Candidate Name -->
	<s:textfield name="Candname" key="refform_CandName" readonly="true" value="%{candidatename}" required="true" size="50" onpaste="return false" onKeyPress="return appos(event, false)"/>
	

	<!-- Candidate Knowing -->
	<s:textarea name="Knowing" key="refform_CandKnowing" required="true" 
				cols="50" rows="5" 
				oncontextmenu="return false" 
				onKeyPress="return appos(event, false)" onkeyup="javascript:charrestrictionKnowing(this.form);"/>
				
			
	<s:label name="restrictsKnowing" value="Characters typed : 0" style="color: green; float:right;" />
	
				
	<!-- Candidate's Skills -->			
	<s:label name="Candskills" key="reffform_CandSkills" value="" labelposition="left" required="true"/>
	
	<s:radio name="Gi" key="refform_GI" list="#{'Outstanding':'Outstanding','High':'High','Medium':'Medium','Low':'Low'}"></s:radio>
	
	<s:radio name="Gsk" key="refform_GSK" list="#{'Outstanding':'Outstanding','High':'High','Medium':'Medium','Low':'Low'}"></s:radio>
				
	<s:radio name="Oap" key="refform_OAP" list="#{'Outstanding':'Outstanding','High':'High','Medium':'Medium','Low':'Low'}"></s:radio>
				
	<s:radio name="Mfr" key="refform_MFR" list="#{'Outstanding':'Outstanding','High':'High','Medium':'Medium','Low':'Low'}"></s:radio>
				
	<s:radio name="Ma" key="refform_MA" list="#{'Outstanding':'Outstanding','High':'High','Medium':'Medium','Low':'Low'}"></s:radio>
				
	<s:radio name="Eos" key="refform_EOS" list="#{'Outstanding':'Outstanding','High':'High','Medium':'Medium','Low':'Low'}"></s:radio>
				
	<s:radio name="Psa" key="refform_PSA" list="#{'Outstanding':'Outstanding','High':'High','Medium':'Medium','Low':'Low'}"></s:radio>
				
	<s:radio name="Cs" key="refform_CS" list="#{'Outstanding':'Outstanding','High':'High','Medium':'Medium','Low':'Low'}"></s:radio>
				
	<s:radio name="Sc" key="refform_SC" list="#{'Outstanding':'Outstanding','High':'High','Medium':'Medium','Low':'Low'}"></s:radio>
				
	<s:radio name="Cit" key="refform_CIT" list="#{'Outstanding':'Outstanding','High':'High','Medium':'Medium','Low':'Low'}"></s:radio>
				
	<!-- Candidate's Strength -->
	<s:textarea name="Strength" key="refform_Strength" 
				cols="50" rows="5"
				oncontextmenu="return false" 
				onKeyPress="return appos(event, false)" onkeyup="javascript:charrestrictionStrength(this.form);"/>
				
	<s:label name="restrictsStrength" value="Characters typed : 0" style="color: green; float:right;" />			
								
	<!-- Candidate's Weaknesses -->
	<s:textarea name="Weaknesses" key="refform_Weaknesses" 
				cols="50" rows="5"
				oncontextmenu="return false" 
				onKeyPress="return appos(event, false)" onkeyup="javascript:charrestrictionWeaknesses(this.form);"/>
				
	<s:label name="restrictsWeaknesses" value="Characters typed : 0" style="color: green; float:right;" />			
				
	<!-- Candidate's Order -->				
	<s:select name="Order" key="refform_Order" 
				headerKey=""
				headerValue="------ Select ------" list="#{'Top 5%':'Top 5%','Between 5-10%':'Between 5-10%','Between 10-20%':'Between 10-20%','Below 20%':'Below 20%'}" />			
	
	<!-- Recommending more than one student -->
	<s:textarea name="Recommending" key="refform_Recommending" 
				cols="50" rows="5"
				oncontextmenu="return false" 
				onKeyPress="return appos(event, false)" onkeyup="javascript:charrestrictionRecommending(this.form);"/>
				
	<s:label name="restrictsRecommending" value="Characters typed : 0" style="color: green; float:right;" />				
	
	<!-- Candidate's Grades -->													
	<s:select name="Grades" key="refform_Grades" 
				headerKey=""
				headerValue="-- Select --" list="#{'Yes':'Yes','No':'No'}" 
				required="true" onchange="disableGraderepifnot(this.form);"/>
	
	<!-- Candidate's Grades if answer is 'No' -->
	<s:textarea name="Gradesifno" key="refform_Gradesifno" 
				cols="50" rows="5" 
				oncontextmenu="return false" 
				onKeyPress="return appos(event, false)" onkeyup="javascript:charrestrictionGradesifno(this.form);"/>
				
	<s:label name="restrictsGradesifno" value="Characters typed : 0" style="color: green; float:right;" />			
				
	<!-- Candidate's Subject of Interest -->
	<s:textarea name="Interest" key="refform_Interest" 
				cols="50" rows="5" 
				oncontextmenu="return false" 
				onKeyPress="return appos(event, false)" onkeyup="javascript:charrestrictionInterest(this.form);"/>
	
	<s:label name="restrictsInterest" value="Characters typed : 0" style="color: green; float:right;" />
				
	<!-- Candidate's Research Project/Extra-CC Activities -->
	<s:textarea name="Excc" key="refform_Excc" 
				cols="50" rows="5"
				oncontextmenu="return false" 
				onKeyPress="return appos(event, false)" onkeyup="javascript:charrestrictionExcc(this.form);"/>
	
	<s:label name="restrictsExcc" value="Characters typed : 0" style="color: green; float:right;" />
				
	<!-- Candidate's Summary -->
	<s:textarea name="Summary" key="refform_Summary" 
				cols="50" rows="5"
				oncontextmenu="return false" required="true"
				onKeyPress="return appos(event, false)" onkeyup="javascript:charrestrictionSummary(this.form);"/>
				
	<s:label name="restrictsSummary" value="Characters typed : 0" style="color: green; float:right;" />											
			
	<s:label name="Partition" key="reffform_Partition" value="Referee Details :" labelposition="top" labelSeparator=""/>
	
	<!-- Referee Name -->
	<s:textfield name="Refname" key="refform_Refname" required="true" size="50" onpaste="return false" onKeyPress="return appos(event, false)"/>
	
	<!-- Referee Designation -->
	<s:textfield name="Designation" key="refform_Designation" required="true" size="50" onpaste="return false" onKeyPress="return appos(event, false)"/>
	
	<!-- Referee Institute -->
	<s:textfield name="Institute" key="refform_Institute" required="true" size="50" onpaste="return false" onKeyPress="return appos(event, false)"/>
	
	<!-- Referee City -->
	<s:textfield name="City" key="refform_City" required="true" size="50" onpaste="return false" onKeyPress="return appos(event, false)"/>
	
	<!-- Referee Pin -->
	<s:textfield name="Pin" key="refform_Pin" required="true" size="50" onpaste="return false" onKeyPress="return alphanumonly(event, false)"/>
	
	<!-- Referee Mobile Number -->
	<s:textfield name="Mobilenum" key="refform_Mobilenum" size="50" onpaste="return false" onKeyPress="return phoneno(event, false)"/>
	
	<!-- Referee Telephone Number [Office] -->
	<s:textfield name="Telephone" key="refform_Telephone" required="true" size="50" placeholder="Prefix STD Code" onpaste="return false" onKeyPress="return phoneno(event, false)"/>
	
	<!-- Referee E-mail -->
	<s:textfield name="Email" key="refform_Email" required="true" size="50" 
					onpaste="return false" readonly="true" 
					value="%{Refapply.email}" onKeyPress="return appos(event, false)"/>
														
<s:submit key="apply_submit" id="submit"/>
	</s:form>
	<br>
	<s:text name="refform_msg"/>
	<br><br>  
</div>	