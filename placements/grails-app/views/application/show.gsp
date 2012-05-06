
<%@ page import="placements.Application" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'application.label', default: 'Application')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-application" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-application" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list application">
			
				<g:if test="${applicationInstance?.student}">
				<li class="fieldcontain">
					<span id="student-label" class="property-label"><g:message code="application.student.label" default="Student" /></span>
					
						<span class="property-value" aria-labelledby="student-label"><g:fieldValue bean="${applicationInstance}" field="student"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicationInstance?.placement}">
				<li class="fieldcontain">
					<span id="placement-label" class="property-label"><g:message code="application.placement.label" default="Placement" /></span>
					
						<span class="property-value" aria-labelledby="placement-label"><g:fieldValue bean="${applicationInstance}" field="placement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicationInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="application.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${applicationInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicationInstance?.timeStamp}">
				<li class="fieldcontain">
					<span id="timeStamp-label" class="property-label"><g:message code="application.timeStamp.label" default="Time Stamp" /></span>
					
						<span class="property-value" aria-labelledby="timeStamp-label"><g:formatDate date="${applicationInstance?.timeStamp}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${applicationInstance?.id}" />
					<g:link class="edit" action="edit" id="${applicationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
