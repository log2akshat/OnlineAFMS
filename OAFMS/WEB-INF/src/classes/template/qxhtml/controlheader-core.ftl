<#--
	This template does not support the label top position!!!

	This template handles: 
		* outputting a <td> for the label if there is one.

	Additionally it calls controlerheader-trlogic.ftl to handle table row logic.
-->
<#include "/${parameters.templateDir}/qxhtml/controlheader-trlogic.ftl" /> 
<#assign labelColumnSpan = parameters.labelcolspan?default(1) />
<#if parameters.label?exists>
	<td class="tdLabel" colspan="${labelColumnSpan}"><#rt/>
    <label <#t/>
	<#if parameters.id?exists>
        for="${parameters.id?html}"<#t/>
	</#if>
	<#assign hasFieldErrors = parameters.name?exists && fieldErrors?exists && fieldErrors[parameters.name]?exists/>
	<#if hasFieldErrors>
        class="errorLabel"<#t/>
	<#else>
        class="label"<#t/>
	</#if>
    ><#t/>
	<#if parameters.required?default(false) && parameters.requiredposition?default("right") != 'right'>
        <span class="required">*</span><#t/>
	</#if>
	${parameters.label?html}<#t/>
	<#if parameters.required?default(false) && parameters.requiredposition?default("right") == 'right'>
 		<span class="required">*</span><#t/>
	</#if>
	:<#t/>
	<#include "/${parameters.templateDir}/qxhtml/tooltip.ftl" /> 
	</label><#t/>
	</td><#lt/>
	<#-- We only update the qTableLayout.currentColumnCount if we actually printed out a td for the lable. -->
	<#if qTableLayout?exists && qTableLayout.tablecolspan?exists >
		<#assign columnCount = qTableLayout.currentColumnCount + labelColumnSpan />	
		<#-- update the value of the columnCounter.count bean on the value stack. -->
		${stack.setValue('#qTableLayout.currentColumnCount', columnCount)}
	</#if>
</#if>
