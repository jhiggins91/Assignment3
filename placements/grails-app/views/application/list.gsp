
<%@ page import="placements.Application" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'application.label', default: 'Application')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-application" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-application" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="student" title="${message(code: 'application.student.label', default: 'Student')}" />
					
						<g:sortableColumn property="placement" title="${message(code: 'application.placement.label', default: 'Placement')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'application.status.label', default: 'Status')}" />
					
						<g:sortableColumn property="timeStamp" title="${message(code: 'application.timeStamp.label', default: 'Time Stamp')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${applicationInstanceList}" status="i" var="applicationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${applicationInstance.id}">${fieldValue(bean: applicationInstance, field: "student")}</g:link></td>
					
						<td>${fieldValue(bean: applicationInstance, field: "placement")}</td>
					
						<td>${fieldValue(bean: applicationInstance, field: "status")}</td>
					
						<td><g:formatDate date="${applicationInstance.timeStamp}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${applicationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
