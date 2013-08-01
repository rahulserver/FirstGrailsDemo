<%@ page import="firstgrailsdemo.Report" %>



<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'd', 'error')} required">
    <label for="d">
        <g:message code="report.d.label" default="D"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="d" precision="day" value="${reportInstance?.d}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'samiti', 'error')} required">
    <label for="samiti">
        <g:message code="report.samiti.label" default="Samiti"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="samiti" name="samiti.id" from="${firstgrailsdemo.Samiti.list()}" optionKey="id" required=""
              value="${reportInstance?.samiti?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'school', 'error')} ">
    <label for="school">
        <g:message code="report.school.label" default="School"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${reportInstance?.school ?}" var="s">
            <li><g:link controller="school" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="school" action="create"
                    params="['report.id': reportInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'school.label', default: 'School')])}</g:link>
        </li>
    </ul>

</div>

