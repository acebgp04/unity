
<%@ page import="org.unity.Player" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'player.label', default: 'Player')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<a href="#list-player" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" params="[team:params.team, subTeam:params.subTeam]" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="list-player" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="firstName" title="${message(code: 'player.firstName.label', default: 'First Name')}" />

            <g:sortableColumn property="middleName" title="${message(code: 'player.middleName.label', default: 'Middle Name')}" />

            <g:sortableColumn property="lastName" title="${message(code: 'player.lastName.label', default: 'Last Name')}" />

            <g:sortableColumn property="country" title="${message(code: 'player.country.label', default: 'Country')}" />

            <g:sortableColumn property="emailAddress" title="${message(code: 'player.emailAddress.label', default: 'Email Address')}" />

            <g:sortableColumn property="birthDate" title="${message(code: 'player.birthDate.label', default: 'Birth Date')}" />

        </tr>
        </thead>
        <tbody>
        <g:each in="${playerInstanceList}" status="i" var="playerInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" params="[team:params.team, subTeam:params.subTeam]" id="${playerInstance.id}">${fieldValue(bean: playerInstance, field: "firstName")}</g:link></td>

                <td>${fieldValue(bean: playerInstance, field: "middleName")}</td>

                <td>${fieldValue(bean: playerInstance, field: "lastName")}</td>

                <td>${fieldValue(bean: playerInstance, field: "country")}</td>

                <td>${fieldValue(bean: playerInstance, field: "emailAddress")}</td>

                <td><g:formatDate date="${playerInstance.birthDate}" /></td>

            </tr>
        </g:each>
        </tbody>
    </table>
    <div class="pagination">
        <g:paginate total="${playerInstanceCount ?: 0}" params="[team:session.getAttribute('team'), subTeam:session.getAttribute('subTeam')]" />
    </div>
</div>
</body>
</html>
