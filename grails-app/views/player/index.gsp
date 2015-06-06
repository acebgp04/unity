<%--
  Created by IntelliJ IDEA.
  User: ace
  Date: 6/6/15
  Time: 9:48 AM
--%>

<%@ page import="org.unity.Team" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title></title>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>

<body>
<!-- Single button -->
<div class="fieldcontain  required">
<g:form action="list">
   <div id="teams">
       <span id="name-label" class="property-label">Team</span>
       <span class="property-value" aria-labelledby="name-label">

           <g:select name="team" from="${org.unity.Team.list()}" optionKey="id" optionValue="name"
                     noSelection="['':'Choose Team']"
                     onchange="${remoteFunction (
                             controller: 'Player',
                             action: 'findSubTeamsForTeam',
                             params: '\'team=\' + this.value',
                             update: 'teamSelection'
                     )}" />

       </span>
   </div>
<br />
    <div id="a" valign="top">
        <span id="name-label" class="property-label">Sub-Team</span>
        <span id="teamSelection" class="property-value" aria-labelledby="name-label">
            <select>
                <option>Choose Sub-Team</option>
            </select>
        </span>
    </div><br />
    <span id="name-label" class="property-value">
        <g:submitButton name="submit" />
    </span>
</g:form>


</div>
</body>
</html>