
<%@ page import="org.unity.Player" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'player.label', default: 'Player')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
    <script type="application/javascript">
        $(document).ready(function() {
            $("#comauto").autocomplete({
                source: function(request, response){
                    $.ajax({
                        url: "/unitygames/player/complist", // remote datasource
                        data: request,
                        success: function(data){
                            response(data); // set the response
                        },
                        error: function(){ // handle server errors
                            $.jGrowl("Unable to retrieve Companies", {
                                theme: 'ui-state-error ui-corner-all'
                            });
                        }
                    });
                },
                minLength: 2, // triggered only after minimum 2 characters have been entered.
                select: function(event, ui) { // event handler when user selects a company from the list.
                    $("#player\\.id").val(ui.item.id); // update the hidden field.
                    $("#empId").val(ui.item.nasSymbol + "-") // populate the employee field with the nasdaq symbol.
                    if(ui.item.id != 0)
                    location.href='/unitygames/player/show/'+ui.item.id;
                }
            });
        });
    </script>
</head>
<body>
<a href="#list-player" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" params="[team:params.team, subTeam:params.subTeam]" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
        <li><a>Players Count: ${org.unity.SubTeam.get(session.getAttribute('subTeam'))?.players?.size()}</a></li>
        <li><a>Total Players Count: ${org.unity.Player.count}</a></li>
        <li><g:hiddenField name="player.id"></g:hiddenField>
            <g:textField name="comauto" style="width: 300px;"> </g:textField></li>
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

            <g:sortableColumn  params="[team:params.team, subTeam:params.subTeam]" property="firstName" title="${message(code: 'player.firstName.label', default: 'First Name')}" />

            <g:sortableColumn  params="[team:params.team, subTeam:params.subTeam]" property="middleName" title="${message(code: 'player.middleName.label', default: 'Middle Name')}" />

            <g:sortableColumn  params="[team:params.team, subTeam:params.subTeam]" property="lastName" title="${message(code: 'player.lastName.label', default: 'Last Name')}" />

            <g:sortableColumn  params="[team:params.team, subTeam:params.subTeam]" property="country" title="${message(code: 'player.country.label', default: 'Country')}" />

            <g:sortableColumn  params="[team:params.team, subTeam:params.subTeam]" property="emailAddress" title="${message(code: 'player.emailAddress.label', default: 'Email Address')}" />

            <g:sortableColumn  params="[team:params.team, subTeam:params.subTeam]" property="birthDate" title="${message(code: 'player.birthDate.label', default: 'Birth Date')}" />

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
