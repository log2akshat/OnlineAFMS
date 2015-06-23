<#-- This template determines if the user is using table layout control, and if they are
     if a closing tr tag needs to be emitted due to the number of columns exceeding the 
	 qTableLayout.tablecolspan parameter.
-->
<#if qTableLayout?exists && qTableLayout.tablecolspan?exists >
	<#assign columnCount = qTableLayout.currentColumnCount />	
	<#assign tablecolspan = qTableLayout.tablecolspan />	
	<#if (columnCount >= tablecolspan) >
		</tr><#-- Write out the closing tr. -->
		<#assign columnCount = 0 />
	</#if>
	${stack.setValue('#qTableLayout.currentColumnCount', columnCount)}
</#if>
