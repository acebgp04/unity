<%@ page import="org.unity.SubTeam" %>



<div class="fieldcontain ${hasErrors(bean: subTeamInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="subTeam.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${subTeamInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: subTeamInstance, field: 'players', 'error')} ">
	<label for="players">
		<g:message code="subTeam.players.label" default="Players" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${subTeamInstance?.players?}" var="p">
    <li><g:link controller="player" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="player" action="create" params="['subTeam.id': subTeamInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'player.label', default: 'Player')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: subTeamInstance, field: 'team', 'error')} required">
	<label for="team">
		<g:message code="subTeam.team.label" default="Team" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="team" name="team.id" from="${org.unity.Team.list()}" optionKey="id" required="" value="${subTeamInstance?.team?.id}" class="many-to-one"/>

</div>

