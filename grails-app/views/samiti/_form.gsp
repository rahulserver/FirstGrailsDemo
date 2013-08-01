<%@ page import="firstgrailsdemo.Samiti" %>



<div class="fieldcontain ${hasErrors(bean: samitiInstance, field: 'report', 'error')} ">
	<label for="report">
		<g:message code="samiti.report.label" default="Report" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${samitiInstance?.report?}" var="r">
    <li><g:link controller="report" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="report" action="create" params="['samiti.id': samitiInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'report.label', default: 'Report')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: samitiInstance, field: 'samitiName', 'error')} ">
	<label for="samitiName">
		<g:message code="samiti.samitiName.label" default="Samiti Name" />
		
	</label>
	<g:textField name="samitiName" value="${samitiInstance?.samitiName}"/>
</div>

