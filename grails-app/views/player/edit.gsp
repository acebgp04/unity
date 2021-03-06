<%@ page import="org.unity.Player" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'player.label', default: 'Player')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-player" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" params="[team:session.getAttribute('team'), subTeam:session.getAttribute('subTeam')]"  action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" params="[team:session.getAttribute('team'), subTeam:session.getAttribute('subTeam')]"  action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="edit-player" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${playerInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${playerInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:uploadForm url="[resource:playerInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${playerInstance?.version}" />

				<fieldset class="form">
					<%@ page import="org.unity.Player" %>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'firstName', 'error')} required">
						<label for="firstName">
							<g:message code="player.firstName.label" default="First Name" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="firstName" required="" value="${playerInstance?.firstName}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'middleName', 'error')} required">
						<label for="middleName">
							<g:message code="player.middleName.label" default="Middle Name" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="middleName" required="" value="${playerInstance?.middleName}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'lastName', 'error')} required">
						<label for="lastName">
							<g:message code="player.lastName.label" default="Last Name" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="lastName" required="" value="${playerInstance?.lastName}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'gender', 'error')} required">
						<label for="gender">
							<g:message code="player.gender.label" default="Gender" />
							<span class="required-indicator">*</span>
						</label>
						<g:select name="gender" from="['Male', 'Female']" value="${playerInstance?.gender}" />

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'emailAddress', 'error')} required">
						<label for="emailAddress">
							<g:message code="player.emailAddress.label" default="Email Address" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="emailAddress" required="" value="${playerInstance?.emailAddress}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'birthDate', 'error')} required">
						<label for="birthDate">
							<g:message code="player.birthDate.label" default="Birth Date" />
							<span class="required-indicator">*</span>
						</label>
						<g:datePicker name="birthDate" precision="day"  value="${playerInstance?.birthDate}"  />

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'nationality', 'error')} required">
						<label for="nationality">
							<g:message code="player.nationality.label" default="Nationality" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="nationality" required="" value="${playerInstance?.nationality}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'contactNo', 'error')} required">
						<label for="contactNo">
							<g:message code="player.contactNo.label" default="Contact No" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="contactNo" required="" value="${playerInstance?.contactNo}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'bloodType', 'error')} required">
						<label for="bloodType">
							<g:message code="player.bloodType.label" default="Blood Type" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="bloodType" required="" value="${playerInstance?.bloodType}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'languageDialect', 'error')} required">
						<label for="languageDialect">
							<g:message code="player.languageDialect.label" default="Language Dialect" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="languageDialect" required="" value="${playerInstance?.languageDialect}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'weight', 'error')} required">
						<label for="weight">
							<g:message code="player.weight.label" default="Weight" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="weight" required="" value="${playerInstance?.weight}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'height', 'error')} required">
						<label for="height">
							<g:message code="player.height.label" default="Height" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="height" required="" value="${playerInstance?.height}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'highestEducAttainment', 'error')} required">
						<label for="highestEducAttainment">
							<g:message code="player.highestEducAttainment.label" default="Highest Educ Attainment" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="highestEducAttainment" required="" value="${playerInstance?.highestEducAttainment}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'picture', 'error')} ">
						<label for="picture">
							<g:message code="player.picture.label" default="Picture" />

						</label>
						<input id="pictureFile" type="file" name="pictureFile" value="${playerInstance?.picture}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'nameOfFather', 'error')} ">
						<label for="nameOfFather">
							<g:message code="player.nameOfFather.label" default="Name Of Father" />

						</label>
						<g:textField name="nameOfFather" value="${playerInstance?.nameOfFather}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'fatherContactNo', 'error')} ">
						<label for="fatherContactNo">
							<g:message code="player.fatherContactNo.label" default="Father Contact No" />

						</label>
						<g:textField name="fatherContactNo" value="${playerInstance?.fatherContactNo}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'nameOfMother', 'error')} ">
						<label for="nameOfMother">
							<g:message code="player.nameOfMother.label" default="Name Of Mother" />

						</label>
						<g:textField name="nameOfMother" value="${playerInstance?.nameOfMother}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'motherContactNo', 'error')} ">
						<label for="motherContactNo">
							<g:message code="player.motherContactNo.label" default="Mother Contact No" />

						</label>
						<g:textField name="motherContactNo" value="${playerInstance?.motherContactNo}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'kapisanan', 'error')} required">
						<label for="kapisanan">
							<g:message code="player.kapisanan.label" default="Kapisanan" />
							<span class="required-indicator">*</span>
						</label>
						<g:select name="kapisanan" required="" from="${CFO.values()}" value="${playerInstance?.kapisanan}" optionKey="key" />

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'purokGrupo', 'error')} required">
						<label for="purokGrupo">
							<g:message code="player.purokGrupo.label" default="Purok Grupo" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="purokGrupo" required="" value="${playerInstance?.purokGrupo}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'lokal', 'error')} required">
						<label for="lokal">
							<g:message code="player.lokal.label" default="Lokal" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="lokal" required="" value="${playerInstance?.lokal}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'district', 'error')} required">
						<label for="district">
							<g:message code="player.district.label" default="District" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="district" required="" value="${playerInstance?.district}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'baptismDate', 'error')} required">
						<label for="baptismDate">
							<g:message code="player.baptismDate.label" default="Baptism Date" />
							<span class="required-indicator">*</span>
						</label>
						<g:datePicker name="baptismDate" precision="day"  value="${playerInstance?.baptismDate}"  />

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'country', 'error')} required">
						<label for="country">
							<g:message code="player.country.label" default="Country" />
							<span class="required-indicator">*</span>
						</label>
						<g:countrySelect name="country" required="" value="${playerInstance?.country}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'team', 'error')} required">
						<label for="team">
							<g:message code="player.team.label" default="Team" />
							<span class="required-indicator">*</span>
						</label>
						<g:select id="team" name="team.id" from="${org.unity.Team.list()}" optionKey="id" required="" value="${playerInstance?.team?.id}" class="many-to-one"/>

					</div>
					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'subTeam', 'error')} required">
						<label for="subTeam">
							<g:message code="player.subTeam.label" default="Sub Team" />
							<span class="required-indicator">*</span>
						</label>
						<g:select id="subTeam" name="subTeam.id" from="${org.unity.SubTeam.list()}" optionKey="id" required="" value="${playerInstance?.subTeam?.id}" class="many-to-one"/>

					</div>
					<div class="fieldcontain  required">
						<span id="name-label" class="property-label">Sport</span>&nbsp;
							<g:select required="required" name="sport" from="${org.unity.Sport.list()}" value="${playerInstance?.sports?.sport?.getAt(0)?.id}" optionKey="id" optionValue="name"
									  noSelection="['':'Choose Sport']"
									  onchange="${remoteFunction (
											  controller: 'Player',
											  action: 'findCategoriesBySport',
											  params: '\'sport=\' + this.value',
											  update: 'sports'
									  )}" />
					</div>
					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'sports', 'error')} ">
						<span id="name-label" class="property-label">Categories </span>&nbsp;
						<g:select required="required" name="sports" from="${org.unity.Category.findAllBySport(playerInstance?.sports?.sport)}"  multiple="false" optionKey="id" value="${playerInstance?.sports*.id}"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'contactAbroadName', 'error')} ">
						<label for="contactAbroadName">
							<g:message code="player.contactAbroadName.label" default="Contact Abroad Name" />

						</label>
						<g:textField name="contactAbroadName" value="${playerInstance?.contactAbroadName}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'contactAbroadRel', 'error')} ">
						<label for="contactAbroadRel">
							<g:message code="player.contactAbroadRel.label" default="Contact Abroad Rel" />

						</label>
						<g:textField name="contactAbroadRel" value="${playerInstance?.contactAbroadRel}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'contactAbroademailAddress', 'error')} ">
						<label for="contactAbroademailAddress">
							<g:message code="player.contactAbroademailAddress.label" default="Contact Abroademail Address" />

						</label>
						<g:textField name="contactAbroademailAddress" value="${playerInstance?.contactAbroademailAddress}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'contactAbroadPhone', 'error')} ">
						<label for="contactAbroadPhone">
							<g:message code="player.contactAbroadPhone.label" default="Contact Abroad Phone" />

						</label>
						<g:textField name="contactAbroadPhone" value="${playerInstance?.contactAbroadPhone}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'contactLocalName', 'error')} ">
						<label for="contactLocalName">
							<g:message code="player.contactLocalName.label" default="Contact Local Name" />

						</label>
						<g:textField name="contactLocalName" value="${playerInstance?.contactLocalName}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'contactLocalRel', 'error')} ">
						<label for="contactLocalRel">
							<g:message code="player.contactLocalRel.label" default="Contact Local Rel" />

						</label>
						<g:textField name="contactLocalRel" value="${playerInstance?.contactLocalRel}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'contactLocalemailAddress', 'error')} ">
						<label for="contactLocalemailAddress">
							<g:message code="player.contactLocalemailAddress.label" default="Contact Localemail Address" />

						</label>
						<g:textField name="contactLocalemailAddress" value="${playerInstance?.contactLocalemailAddress}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'contactLocalPhone', 'error')} ">
						<label for="contactLocalPhone">
							<g:message code="player.contactLocalPhone.label" default="Contact Local Phone" />

						</label>
						<g:textField name="contactLocalPhone" value="${playerInstance?.contactLocalPhone}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'guardian', 'error')} required">
						<label for="guardian">
							<g:message code="player.guardian.label" default="Guardian" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="guardian" required="" value="${playerInstance?.guardian}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'guardianRel', 'error')} required">
						<label for="guardianRel">
							<g:message code="player.guardianRel.label" default="Guardian Rel" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="guardianRel" required="" value="${playerInstance?.guardianRel}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'guardianContactNo', 'error')} required">
						<label for="guardianContactNo">
							<g:message code="player.guardianContactNo.label" default="Guardian Contact No" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="guardianContactNo" required="" value="${playerInstance?.guardianContactNo}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'waiver', 'error')} ">
						<label for="waiver">
							<g:message code="player.waiver.label" default="Waiver" />
                            <span class="required-indicator">*</span>
						</label>
                        <g:checkBox name="waiver" required="" value="${playerInstance?.waiver}" />

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'arrivalAirline', 'error')} ">
						<label for="arrivalAirline">
							<g:message code="player.arrivalAirline.label" default="Arrival Airline" />

						</label>
						<g:textField name="arrivalAirline" value="${playerInstance?.arrivalAirline}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'arrivalDate', 'error')} ">
						<label for="arrivalDate">
							<g:message code="player.arrivalDate.label" default="Arrival Date" />

						</label>
						<g:datePicker name="arrivalDate" precision="day"  value="${playerInstance?.arrivalDate}" default="none" noSelection="['': '']" />

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'arrivalAirport', 'error')} ">
						<label for="arrivalAirport">
							<g:message code="player.arrivalAirport.label" default="Arrival Airport" />

						</label>
						<g:textField name="arrivalAirport" value="${playerInstance?.arrivalAirport}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'arrivalFlightNo', 'error')} ">
						<label for="arrivalFlightNo">
							<g:message code="player.arrivalFlightNo.label" default="Arrival Flight No" />

						</label>
						<g:textField name="arrivalFlightNo" value="${playerInstance?.arrivalFlightNo}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'arrivalBusCompany', 'error')} ">
						<label for="arrivalBusCompany">
							<g:message code="player.arrivalBusCompany.label" default="Arrival Bus Company" />

						</label>
						<g:textField name="arrivalBusCompany" value="${playerInstance?.arrivalBusCompany}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'arrivalBusNo', 'error')} ">
						<label for="arrivalBusNo">
							<g:message code="player.arrivalBusNo.label" default="Arrival Bus No" />

						</label>
						<g:textField name="arrivalBusNo" value="${playerInstance?.arrivalBusNo}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'departureAirline', 'error')} ">
						<label for="departureAirline">
							<g:message code="player.departureAirline.label" default="Departure Airline" />

						</label>
						<g:textField name="departureAirline" value="${playerInstance?.departureAirline}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'departureDate', 'error')} ">
						<label for="departureDate">
							<g:message code="player.departureDate.label" default="Departure Date" />

						</label>
						<g:datePicker name="departureDate" precision="day"  value="${playerInstance?.departureDate}" default="none" noSelection="['': '']" />

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'departureAirport', 'error')} ">
						<label for="departureAirport">
							<g:message code="player.departureAirport.label" default="Departure Airport" />

						</label>
						<g:textField name="departureAirport" value="${playerInstance?.departureAirport}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'departureFlightNo', 'error')} ">
						<label for="departureFlightNo">
							<g:message code="player.departureFlightNo.label" default="Departure Flight No" />

						</label>
						<g:textField name="departureFlightNo" value="${playerInstance?.departureFlightNo}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'departureBusCompany', 'error')} ">
						<label for="departureBusCompany">
							<g:message code="player.departureBusCompany.label" default="Departure Bus Company" />

						</label>
						<g:textField name="departureBusCompany" value="${playerInstance?.departureBusCompany}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'departureBusNo', 'error')} ">
						<label for="departureBusNo">
							<g:message code="player.departureBusNo.label" default="Departure Bus No" />

						</label>
						<g:textField name="departureBusNo" value="${playerInstance?.departureBusNo}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'hotel', 'error')} ">
						<label for="hotel">
							<g:message code="player.hotel.label" default="Hotel" />

						</label>
						<g:textField name="hotel" value="${playerInstance?.hotel}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'hotelPhoneNo', 'error')} ">
						<label for="hotelPhoneNo">
							<g:message code="player.hotelPhoneNo.label" default="Hotel Phone No" />

						</label>
						<g:textField name="hotelPhoneNo" value="${playerInstance?.hotelPhoneNo}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'hotelAddress', 'error')} ">
						<label for="hotelAddress">
							<g:message code="player.hotelAddress.label" default="Hotel Address" />

						</label>
						<g:textField name="hotelAddress" value="${playerInstance?.hotelAddress}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'hotelRoomNo', 'error')} ">
						<label for="hotelRoomNo">
							<g:message code="player.hotelRoomNo.label" default="Hotel Room No" />

						</label>
						<g:textField name="hotelRoomNo" value="${playerInstance?.hotelRoomNo}"/>

					</div>




				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:uploadForm>
		</div>
	</body>
</html>
