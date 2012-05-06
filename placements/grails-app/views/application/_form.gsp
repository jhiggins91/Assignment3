<%@ page import="placements.Application" %>



<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'student', 'error')} ">
	<label for="student">
		<g:message code="application.student.label" default="Student" />
		
	</label>
	<g:textField name="student" value="${applicationInstance?.student}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'placement', 'error')} ">
	<label for="placement">
		<g:message code="application.placement.label" default="Placement" />
		
	</label>
	<g:textField name="placement" value="${applicationInstance?.placement}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="application.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${applicationInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'timeStamp', 'error')} required">
	<label for="timeStamp">
		<g:message code="application.timeStamp.label" default="Time Stamp" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="timeStamp" precision="day"  value="${applicationInstance?.timeStamp}"  />
</div>

