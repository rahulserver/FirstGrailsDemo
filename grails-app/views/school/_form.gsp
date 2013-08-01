<%@ page import="firstgrailsdemo.School" %>



<div class="fieldcontain ${hasErrors(bean: schoolInstance, field: 'examDate', 'error')} required">
	<label for="examDate">
		<g:message code="school.examDate.label" default="Exam Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="examDate" precision="day"  value="${schoolInstance?.examDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: schoolInstance, field: 'report', 'error')} required">
	<label for="report">
		<g:message code="school.report.label" default="Report" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="report" name="report.id" from="${firstgrailsdemo.Report.list()}" optionKey="id" required="" value="${schoolInstance?.report?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: schoolInstance, field: 'schoolName', 'error')} ">
	<label for="schoolName">
		<g:message code="school.schoolName.label" default="School Name" />
		
	</label>
	<g:textField name="schoolName" value="${schoolInstance?.schoolName}"/>
</div>

