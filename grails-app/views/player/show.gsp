
<%@ page import="org.unity.Player" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'player.label', default: 'Player')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-player" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-player" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list player">
			
				<g:if test="${playerInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="player.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${playerInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="player.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${playerInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="player.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${playerInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="player.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${playerInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.emailAddress}">
				<li class="fieldcontain">
					<span id="emailAddress-label" class="property-label"><g:message code="player.emailAddress.label" default="Email Address" /></span>
					
						<span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${playerInstance}" field="emailAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="player.birthDate.label" default="Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate date="${playerInstance?.birthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.nationality}">
				<li class="fieldcontain">
					<span id="nationality-label" class="property-label"><g:message code="player.nationality.label" default="Nationality" /></span>
					
						<span class="property-value" aria-labelledby="nationality-label"><g:fieldValue bean="${playerInstance}" field="nationality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.contactNo}">
				<li class="fieldcontain">
					<span id="contactNo-label" class="property-label"><g:message code="player.contactNo.label" default="Contact No" /></span>
					
						<span class="property-value" aria-labelledby="contactNo-label"><g:fieldValue bean="${playerInstance}" field="contactNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.bloodType}">
				<li class="fieldcontain">
					<span id="bloodType-label" class="property-label"><g:message code="player.bloodType.label" default="Blood Type" /></span>
					
						<span class="property-value" aria-labelledby="bloodType-label"><g:fieldValue bean="${playerInstance}" field="bloodType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.languageDialect}">
				<li class="fieldcontain">
					<span id="languageDialect-label" class="property-label"><g:message code="player.languageDialect.label" default="Language Dialect" /></span>
					
						<span class="property-value" aria-labelledby="languageDialect-label"><g:fieldValue bean="${playerInstance}" field="languageDialect"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.weight}">
				<li class="fieldcontain">
					<span id="weight-label" class="property-label"><g:message code="player.weight.label" default="Weight" /></span>
					
						<span class="property-value" aria-labelledby="weight-label"><g:fieldValue bean="${playerInstance}" field="weight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.height}">
				<li class="fieldcontain">
					<span id="height-label" class="property-label"><g:message code="player.height.label" default="Height" /></span>
					
						<span class="property-value" aria-labelledby="height-label"><g:fieldValue bean="${playerInstance}" field="height"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.highestEducAttainment}">
				<li class="fieldcontain">
					<span id="highestEducAttainment-label" class="property-label"><g:message code="player.highestEducAttainment.label" default="Highest Educ Attainment" /></span>
					
						<span class="property-value" aria-labelledby="highestEducAttainment-label"><g:fieldValue bean="${playerInstance}" field="highestEducAttainment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.picture}">
				<li class="fieldcontain">
					<span id="picture-label" class="property-label"><g:message code="player.picture.label" default="Picture" /></span>
					
						<span class="property-value" aria-labelledby="picture-label"><g:fieldValue bean="${playerInstance}" field="picture"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.nameOfFather}">
				<li class="fieldcontain">
					<span id="nameOfFather-label" class="property-label"><g:message code="player.nameOfFather.label" default="Name Of Father" /></span>
					
						<span class="property-value" aria-labelledby="nameOfFather-label"><g:fieldValue bean="${playerInstance}" field="nameOfFather"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.fatherContactNo}">
				<li class="fieldcontain">
					<span id="fatherContactNo-label" class="property-label"><g:message code="player.fatherContactNo.label" default="Father Contact No" /></span>
					
						<span class="property-value" aria-labelledby="fatherContactNo-label"><g:fieldValue bean="${playerInstance}" field="fatherContactNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.nameOfMother}">
				<li class="fieldcontain">
					<span id="nameOfMother-label" class="property-label"><g:message code="player.nameOfMother.label" default="Name Of Mother" /></span>
					
						<span class="property-value" aria-labelledby="nameOfMother-label"><g:fieldValue bean="${playerInstance}" field="nameOfMother"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.motherContactNo}">
				<li class="fieldcontain">
					<span id="motherContactNo-label" class="property-label"><g:message code="player.motherContactNo.label" default="Mother Contact No" /></span>
					
						<span class="property-value" aria-labelledby="motherContactNo-label"><g:fieldValue bean="${playerInstance}" field="motherContactNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.kapisanan}">
				<li class="fieldcontain">
					<span id="kapisanan-label" class="property-label"><g:message code="player.kapisanan.label" default="Kapisanan" /></span>
					
						<span class="property-value" aria-labelledby="kapisanan-label"><g:fieldValue bean="${playerInstance}" field="kapisanan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.purokGrupo}">
				<li class="fieldcontain">
					<span id="purokGrupo-label" class="property-label"><g:message code="player.purokGrupo.label" default="Purok Grupo" /></span>
					
						<span class="property-value" aria-labelledby="purokGrupo-label"><g:fieldValue bean="${playerInstance}" field="purokGrupo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.lokal}">
				<li class="fieldcontain">
					<span id="lokal-label" class="property-label"><g:message code="player.lokal.label" default="Lokal" /></span>
					
						<span class="property-value" aria-labelledby="lokal-label"><g:fieldValue bean="${playerInstance}" field="lokal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="player.district.label" default="District" /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:fieldValue bean="${playerInstance}" field="district"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.baptismDate}">
				<li class="fieldcontain">
					<span id="baptismDate-label" class="property-label"><g:message code="player.baptismDate.label" default="Baptism Date" /></span>
					
						<span class="property-value" aria-labelledby="baptismDate-label"><g:formatDate date="${playerInstance?.baptismDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="player.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${playerInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.team}">
				<li class="fieldcontain">
					<span id="team-label" class="property-label"><g:message code="player.team.label" default="Team" /></span>
					
						<span class="property-value" aria-labelledby="team-label"><g:link controller="team" action="show" id="${playerInstance?.team?.id}">${playerInstance?.team?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.sports}">
				<li class="fieldcontain">
					<span id="sports-label" class="property-label"><g:message code="player.sports.label" default="Sports" /></span>
					
						<g:each in="${playerInstance.sports}" var="s">
						<span class="property-value" aria-labelledby="sports-label"><g:link controller="category" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.contactAbroadName}">
				<li class="fieldcontain">
					<span id="contactAbroadName-label" class="property-label"><g:message code="player.contactAbroadName.label" default="Contact Abroad Name" /></span>
					
						<span class="property-value" aria-labelledby="contactAbroadName-label"><g:fieldValue bean="${playerInstance}" field="contactAbroadName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.contactAbroadRel}">
				<li class="fieldcontain">
					<span id="contactAbroadRel-label" class="property-label"><g:message code="player.contactAbroadRel.label" default="Contact Abroad Rel" /></span>
					
						<span class="property-value" aria-labelledby="contactAbroadRel-label"><g:fieldValue bean="${playerInstance}" field="contactAbroadRel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.contactAbroademailAddress}">
				<li class="fieldcontain">
					<span id="contactAbroademailAddress-label" class="property-label"><g:message code="player.contactAbroademailAddress.label" default="Contact Abroademail Address" /></span>
					
						<span class="property-value" aria-labelledby="contactAbroademailAddress-label"><g:fieldValue bean="${playerInstance}" field="contactAbroademailAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.contactAbroadPhone}">
				<li class="fieldcontain">
					<span id="contactAbroadPhone-label" class="property-label"><g:message code="player.contactAbroadPhone.label" default="Contact Abroad Phone" /></span>
					
						<span class="property-value" aria-labelledby="contactAbroadPhone-label"><g:fieldValue bean="${playerInstance}" field="contactAbroadPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.contactLocalName}">
				<li class="fieldcontain">
					<span id="contactLocalName-label" class="property-label"><g:message code="player.contactLocalName.label" default="Contact Local Name" /></span>
					
						<span class="property-value" aria-labelledby="contactLocalName-label"><g:fieldValue bean="${playerInstance}" field="contactLocalName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.contactLocalRel}">
				<li class="fieldcontain">
					<span id="contactLocalRel-label" class="property-label"><g:message code="player.contactLocalRel.label" default="Contact Local Rel" /></span>
					
						<span class="property-value" aria-labelledby="contactLocalRel-label"><g:fieldValue bean="${playerInstance}" field="contactLocalRel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.contactLocalemailAddress}">
				<li class="fieldcontain">
					<span id="contactLocalemailAddress-label" class="property-label"><g:message code="player.contactLocalemailAddress.label" default="Contact Localemail Address" /></span>
					
						<span class="property-value" aria-labelledby="contactLocalemailAddress-label"><g:fieldValue bean="${playerInstance}" field="contactLocalemailAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.contactLocalPhone}">
				<li class="fieldcontain">
					<span id="contactLocalPhone-label" class="property-label"><g:message code="player.contactLocalPhone.label" default="Contact Local Phone" /></span>
					
						<span class="property-value" aria-labelledby="contactLocalPhone-label"><g:fieldValue bean="${playerInstance}" field="contactLocalPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.guardian}">
				<li class="fieldcontain">
					<span id="guardian-label" class="property-label"><g:message code="player.guardian.label" default="Guardian" /></span>
					
						<span class="property-value" aria-labelledby="guardian-label"><g:fieldValue bean="${playerInstance}" field="guardian"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.guardianRel}">
				<li class="fieldcontain">
					<span id="guardianRel-label" class="property-label"><g:message code="player.guardianRel.label" default="Guardian Rel" /></span>
					
						<span class="property-value" aria-labelledby="guardianRel-label"><g:fieldValue bean="${playerInstance}" field="guardianRel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.guardianContactNo}">
				<li class="fieldcontain">
					<span id="guardianContactNo-label" class="property-label"><g:message code="player.guardianContactNo.label" default="Guardian Contact No" /></span>
					
						<span class="property-value" aria-labelledby="guardianContactNo-label"><g:fieldValue bean="${playerInstance}" field="guardianContactNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.waiver}">
				<li class="fieldcontain">
					<span id="waiver-label" class="property-label"><g:message code="player.waiver.label" default="Waiver" /></span>
					
						<span class="property-value" aria-labelledby="waiver-label"><g:fieldValue bean="${playerInstance}" field="waiver"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.arrivalAirline}">
				<li class="fieldcontain">
					<span id="arrivalAirline-label" class="property-label"><g:message code="player.arrivalAirline.label" default="Arrival Airline" /></span>
					
						<span class="property-value" aria-labelledby="arrivalAirline-label"><g:fieldValue bean="${playerInstance}" field="arrivalAirline"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.arrivalDate}">
				<li class="fieldcontain">
					<span id="arrivalDate-label" class="property-label"><g:message code="player.arrivalDate.label" default="Arrival Date" /></span>
					
						<span class="property-value" aria-labelledby="arrivalDate-label"><g:formatDate date="${playerInstance?.arrivalDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.arrivalAirport}">
				<li class="fieldcontain">
					<span id="arrivalAirport-label" class="property-label"><g:message code="player.arrivalAirport.label" default="Arrival Airport" /></span>
					
						<span class="property-value" aria-labelledby="arrivalAirport-label"><g:fieldValue bean="${playerInstance}" field="arrivalAirport"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.arrivalFlightNo}">
				<li class="fieldcontain">
					<span id="arrivalFlightNo-label" class="property-label"><g:message code="player.arrivalFlightNo.label" default="Arrival Flight No" /></span>
					
						<span class="property-value" aria-labelledby="arrivalFlightNo-label"><g:fieldValue bean="${playerInstance}" field="arrivalFlightNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.arrivalBusCompany}">
				<li class="fieldcontain">
					<span id="arrivalBusCompany-label" class="property-label"><g:message code="player.arrivalBusCompany.label" default="Arrival Bus Company" /></span>
					
						<span class="property-value" aria-labelledby="arrivalBusCompany-label"><g:fieldValue bean="${playerInstance}" field="arrivalBusCompany"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.arrivalBusNo}">
				<li class="fieldcontain">
					<span id="arrivalBusNo-label" class="property-label"><g:message code="player.arrivalBusNo.label" default="Arrival Bus No" /></span>
					
						<span class="property-value" aria-labelledby="arrivalBusNo-label"><g:fieldValue bean="${playerInstance}" field="arrivalBusNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.departureAirline}">
				<li class="fieldcontain">
					<span id="departureAirline-label" class="property-label"><g:message code="player.departureAirline.label" default="Departure Airline" /></span>
					
						<span class="property-value" aria-labelledby="departureAirline-label"><g:fieldValue bean="${playerInstance}" field="departureAirline"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.departureDate}">
				<li class="fieldcontain">
					<span id="departureDate-label" class="property-label"><g:message code="player.departureDate.label" default="Departure Date" /></span>
					
						<span class="property-value" aria-labelledby="departureDate-label"><g:formatDate date="${playerInstance?.departureDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.departureAirport}">
				<li class="fieldcontain">
					<span id="departureAirport-label" class="property-label"><g:message code="player.departureAirport.label" default="Departure Airport" /></span>
					
						<span class="property-value" aria-labelledby="departureAirport-label"><g:fieldValue bean="${playerInstance}" field="departureAirport"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.departureFlightNo}">
				<li class="fieldcontain">
					<span id="departureFlightNo-label" class="property-label"><g:message code="player.departureFlightNo.label" default="Departure Flight No" /></span>
					
						<span class="property-value" aria-labelledby="departureFlightNo-label"><g:fieldValue bean="${playerInstance}" field="departureFlightNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.departureBusCompany}">
				<li class="fieldcontain">
					<span id="departureBusCompany-label" class="property-label"><g:message code="player.departureBusCompany.label" default="Departure Bus Company" /></span>
					
						<span class="property-value" aria-labelledby="departureBusCompany-label"><g:fieldValue bean="${playerInstance}" field="departureBusCompany"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.departureBusNo}">
				<li class="fieldcontain">
					<span id="departureBusNo-label" class="property-label"><g:message code="player.departureBusNo.label" default="Departure Bus No" /></span>
					
						<span class="property-value" aria-labelledby="departureBusNo-label"><g:fieldValue bean="${playerInstance}" field="departureBusNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.hotel}">
				<li class="fieldcontain">
					<span id="hotel-label" class="property-label"><g:message code="player.hotel.label" default="Hotel" /></span>
					
						<span class="property-value" aria-labelledby="hotel-label"><g:fieldValue bean="${playerInstance}" field="hotel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.hotelPhoneNo}">
				<li class="fieldcontain">
					<span id="hotelPhoneNo-label" class="property-label"><g:message code="player.hotelPhoneNo.label" default="Hotel Phone No" /></span>
					
						<span class="property-value" aria-labelledby="hotelPhoneNo-label"><g:fieldValue bean="${playerInstance}" field="hotelPhoneNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.hotelAddress}">
				<li class="fieldcontain">
					<span id="hotelAddress-label" class="property-label"><g:message code="player.hotelAddress.label" default="Hotel Address" /></span>
					
						<span class="property-value" aria-labelledby="hotelAddress-label"><g:fieldValue bean="${playerInstance}" field="hotelAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.hotelRoomNo}">
				<li class="fieldcontain">
					<span id="hotelRoomNo-label" class="property-label"><g:message code="player.hotelRoomNo.label" default="Hotel Room No" /></span>
					
						<span class="property-value" aria-labelledby="hotelRoomNo-label"><g:fieldValue bean="${playerInstance}" field="hotelRoomNo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:playerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${playerInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
