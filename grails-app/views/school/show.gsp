
<%@ page import="firstgrailsdemo.School" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'school.label', default: 'School')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-school" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-school" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list school">
			
				<g:if test="${schoolInstance?.examDate}">
				<li class="fieldcontain">
					<span id="examDate-label" class="property-label"><g:message code="school.examDate.label" default="Exam Date" /></span>
					
						<span class="property-value" aria-labelledby="examDate-label"><g:formatDate date="${schoolInstance?.examDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${schoolInstance?.report}">
				<li class="fieldcontain">
					<span id="report-label" class="property-label"><g:message code="school.report.label" default="Report" /></span>
					
						<span class="property-value" aria-labelledby="report-label"><g:link controller="report" action="show" id="${schoolInstance?.report?.id}">${schoolInstance?.report?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${schoolInstance?.schoolName}">
				<li class="fieldcontain">
					<span id="schoolName-label" class="property-label"><g:message code="school.schoolName.label" default="School Name" /></span>
					
						<span class="property-value" aria-labelledby="schoolName-label"><g:fieldValue bean="${schoolInstance}" field="schoolName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${schoolInstance?.id}" />
					<g:link class="edit" action="edit" id="${schoolInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
