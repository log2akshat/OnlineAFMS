<#assign columnSpan = parameters.colspan?default(1) />
<#if qTableLayout?exists && qTableLayout.tablecolspan?exists >
	<#assign columnCount = qTableLayout.currentColumnCount + columnSpan />	
	<#-- update the value of the qTableLayout.currentColumnCount bean on the value stack. -->
	${stack.setValue('#qTableLayout.currentColumnCount', columnCount)}
</#if>
<#include "/${parameters.templateDir}/${parameters.theme}/controlfooter-trlogic.ftl" />
