<#--
	This template handles: 
		* intializing qTable.currentColumnCount if it has not been initialzed,
		* emiting a <tr> tag if the currentColumnCount == 0,
-->
<#if qTableLayout?exists && ! qTableLayout.currentColumnCount?exists >
	<#-- Set the currentColumnCount to 0 because this is the first row of the table. -->
	${stack.setValue('#qTableLayout.currentColumnCount', 0)}
</#if>
<#-- Do we need to write the opening tr tag. -->
<#if qTableLayout?exists && qTableLayout.tablecolspan?exists >
	<#assign columnCount = qTableLayout.currentColumnCount />
<#else>
	<#-- Set the currentColumnCount to 0 because this is the first row of the table. -->
	${stack.setValue('#qTableLayout.currentColumnCount', 0)}
	<#assign columnCount = 0 />
</#if>
<#if columnCount == 0>
	<#-- Write out the opening tr tag to start the table row. -->
	<tr><#rt/>
</#if>
