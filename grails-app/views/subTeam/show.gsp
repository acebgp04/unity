
<%@ page import="org.unity.SubTeam" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'subTeam.label', default: 'SubTeam')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-subTeam" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-subTeam" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list subTeam">
			
				<g:if test="${subTeamInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="subTeam.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${subTeamInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${subTeamInstance?.players}">
				<li class="fieldcontain">
					<span id="players-label" class="property-label"><g:message code="subTeam.players.label" default="Players" /></span>
					
						<g:each in="${subTeamInstance.players}" var="p">
						<span class="property-value" aria-labelledby="players-label"><g:link controller="player" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${subTeamInstance?.team}">
				<li class="fieldcontain">
					<span id="team-label" class="property-label"><g:message code="subTeam.team.label" default="Team" /></span>
					
						<span class="property-value" aria-labelledby="team-label"><g:link controller="team" action="show" id="${subTeamInstance?.team?.id}">${subTeamInstance?.team?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:subTeamInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${subTeamInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
