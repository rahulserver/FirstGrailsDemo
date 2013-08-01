<%@ page import="firstgrailsdemo.Report" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'report.label', default: 'Report')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-report" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                             default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-report" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list report">

        <g:if test="${reportInstance?.d}">
            <li class="fieldcontain">
                <span id="d-label" class="property-label"><g:message code="report.d.label" default="D"/></span>

                <span class="property-value" aria-labelledby="d-label"><g:formatDate
                        date="${reportInstance?.d}"/></span>

            </li>
        </g:if>

        <g:if test="${reportInstance?.samiti}">
            <li class="fieldcontain">
                <span id="samiti-label" class="property-label"><g:message code="report.samiti.label"
                                                                          default="Samiti"/></span>

                <span class="property-value" aria-labelledby="samiti-label"><g:link controller="samiti" action="show"
                                                                                    id="${reportInstance?.samiti?.id}">${reportInstance?.samiti?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${reportInstance?.school}">
            <li class="fieldcontain">
                <span id="school-label" class="property-label"><g:message code="report.school.label"
                                                                          default="School"/></span>

                <g:each in="${reportInstance.school}" var="s">
                    <span class="property-value" aria-labelledby="school-label"><g:link controller="school"
                                                                                        action="show"
                                                                                        id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${reportInstance?.id}"/>
            <g:link class="edit" action="edit" id="${reportInstance?.id}"><g:message code="default.button.edit.label"
                                                                                     default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
