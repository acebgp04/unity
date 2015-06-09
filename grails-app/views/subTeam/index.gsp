
<%@ page import="org.unity.SubTeam" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'subTeam.label', default: 'SubTeam')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-subTeam" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-subTeam" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'subTeam.name.label', default: 'Name')}" />
					
						<th><g:message code="subTeam.team.label" default="Team" /></th>

						<th># of Players</th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${subTeamInstanceList}" status="i" var="subTeamInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${subTeamInstance.id}">${fieldValue(bean: subTeamInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: subTeamInstance, field: "team")}</td>

						<td>${subTeamInstance?.players?.size()}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${subTeamInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
