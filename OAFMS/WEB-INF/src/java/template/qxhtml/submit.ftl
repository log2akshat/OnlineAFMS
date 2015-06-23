<#include "/${parameters.templateDir}/qxhtml/controlheader-trlogic.ftl" />
<#assign columnSpan = parameters.colspan?default(2) />
<td colspan="${columnSpan?html}"><div <#rt/>
<#if parameters.align?exists>
    align="${parameters.align?html}"<#t/>
</#if>
><#t/>
<#include "/${parameters.templateDir}/simple/submit.ftl" />
</div><#t/>
<#if qTableLayout?exists && qTableLayout.tablecolspan?exists >
	<#assign columnCount = qTableLayout.currentColumnCount + columnSpan />	
	<#-- update the value of the qTableLayout.currentColumnCount bean on the value stack. -->
	${stack.setValue('#qTableLayout.currentColumnCount', columnCount)}
</#if>
<#include "/${parameters.templateDir}/qxhtml/controlfooter.ftl" />
