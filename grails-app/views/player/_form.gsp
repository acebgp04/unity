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
	<g:textField name="gender" required="" value="${playerInstance?.gender}"/>

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

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'nameOfFather', 'error')} required">
	<label for="nameOfFather">
		<g:message code="player.nameOfFather.label" default="Name Of Father" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nameOfFather" required="" value="${playerInstance?.nameOfFather}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'fatherContactNo', 'error')} required">
	<label for="fatherContactNo">
		<g:message code="player.fatherContactNo.label" default="Father Contact No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fatherContactNo" required="" value="${playerInstance?.fatherContactNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'nameOfMother', 'error')} required">
	<label for="nameOfMother">
		<g:message code="player.nameOfMother.label" default="Name Of Mother" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nameOfMother" required="" value="${playerInstance?.nameOfMother}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'motherContactNo', 'error')} required">
	<label for="motherContactNo">
		<g:message code="player.motherContactNo.label" default="Mother Contact No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="motherContactNo" required="" value="${playerInstance?.motherContactNo}"/>

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
	<g:textField name="country" required="" value="${playerInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'team', 'error')} required">
	<label for="team">
		<g:message code="player.team.label" default="Team" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="team" name="team.id" from="${org.unity.Team.list()}" optionKey="id" required="" value="${playerInstance?.team?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'sports', 'error')} required">
	<label for="sports">
		<g:message code="player.sports.label" default="Sports" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sports" from="${org.unity.Category.list()}" multiple="multiple" optionKey="id" size="5" required="" value="${playerInstance?.sports*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'contactAbroadName', 'error')} required">
	<label for="contactAbroadName">
		<g:message code="player.contactAbroadName.label" default="Contact Abroad Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactAbroadName" required="" value="${playerInstance?.contactAbroadName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'contactAbroadRel', 'error')} required">
	<label for="contactAbroadRel">
		<g:message code="player.contactAbroadRel.label" default="Contact Abroad Rel" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactAbroadRel" required="" value="${playerInstance?.contactAbroadRel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'contactAbroademailAddress', 'error')} required">
	<label for="contactAbroademailAddress">
		<g:message code="player.contactAbroademailAddress.label" default="Contact Abroademail Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactAbroademailAddress" required="" value="${playerInstance?.contactAbroademailAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'contactAbroadPhone', 'error')} required">
	<label for="contactAbroadPhone">
		<g:message code="player.contactAbroadPhone.label" default="Contact Abroad Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactAbroadPhone" required="" value="${playerInstance?.contactAbroadPhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'contactLocalName', 'error')} required">
	<label for="contactLocalName">
		<g:message code="player.contactLocalName.label" default="Contact Local Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactLocalName" required="" value="${playerInstance?.contactLocalName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'contactLocalRel', 'error')} required">
	<label for="contactLocalRel">
		<g:message code="player.contactLocalRel.label" default="Contact Local Rel" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactLocalRel" required="" value="${playerInstance?.contactLocalRel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'contactLocalemailAddress', 'error')} required">
	<label for="contactLocalemailAddress">
		<g:message code="player.contactLocalemailAddress.label" default="Contact Localemail Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactLocalemailAddress" required="" value="${playerInstance?.contactLocalemailAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'contactLocalPhone', 'error')} required">
	<label for="contactLocalPhone">
		<g:message code="player.contactLocalPhone.label" default="Contact Local Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactLocalPhone" required="" value="${playerInstance?.contactLocalPhone}"/>

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

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'waiver', 'error')} required">
	<label for="waiver">
		<g:message code="player.waiver.label" default="Waiver" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="waiver" required="" value="${playerInstance?.waiver}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'arrivalAirline', 'error')} required">
	<label for="arrivalAirline">
		<g:message code="player.arrivalAirline.label" default="Arrival Airline" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="arrivalAirline" required="" value="${playerInstance?.arrivalAirline}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'arrivalDate', 'error')} required">
	<label for="arrivalDate">
		<g:message code="player.arrivalDate.label" default="Arrival Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="arrivalDate" precision="day"  value="${playerInstance?.arrivalDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'arrivalAirport', 'error')} required">
	<label for="arrivalAirport">
		<g:message code="player.arrivalAirport.label" default="Arrival Airport" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="arrivalAirport" required="" value="${playerInstance?.arrivalAirport}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'arrivalFlightNo', 'error')} required">
	<label for="arrivalFlightNo">
		<g:message code="player.arrivalFlightNo.label" default="Arrival Flight No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="arrivalFlightNo" required="" value="${playerInstance?.arrivalFlightNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'arrivalBusCompany', 'error')} required">
	<label for="arrivalBusCompany">
		<g:message code="player.arrivalBusCompany.label" default="Arrival Bus Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="arrivalBusCompany" required="" value="${playerInstance?.arrivalBusCompany}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'arrivalBusNo', 'error')} required">
	<label for="arrivalBusNo">
		<g:message code="player.arrivalBusNo.label" default="Arrival Bus No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="arrivalBusNo" required="" value="${playerInstance?.arrivalBusNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'departureAirline', 'error')} required">
	<label for="departureAirline">
		<g:message code="player.departureAirline.label" default="Departure Airline" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="departureAirline" required="" value="${playerInstance?.departureAirline}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'departureDate', 'error')} required">
	<label for="departureDate">
		<g:message code="player.departureDate.label" default="Departure Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="departureDate" precision="day"  value="${playerInstance?.departureDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'departureAirport', 'error')} required">
	<label for="departureAirport">
		<g:message code="player.departureAirport.label" default="Departure Airport" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="departureAirport" required="" value="${playerInstance?.departureAirport}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'departureFlightNo', 'error')} required">
	<label for="departureFlightNo">
		<g:message code="player.departureFlightNo.label" default="Departure Flight No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="departureFlightNo" required="" value="${playerInstance?.departureFlightNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'departureBusCompany', 'error')} required">
	<label for="departureBusCompany">
		<g:message code="player.departureBusCompany.label" default="Departure Bus Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="departureBusCompany" required="" value="${playerInstance?.departureBusCompany}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'departureBusNo', 'error')} required">
	<label for="departureBusNo">
		<g:message code="player.departureBusNo.label" default="Departure Bus No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="departureBusNo" required="" value="${playerInstance?.departureBusNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'hotel', 'error')} required">
	<label for="hotel">
		<g:message code="player.hotel.label" default="Hotel" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="hotel" required="" value="${playerInstance?.hotel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'hotelPhoneNo', 'error')} required">
	<label for="hotelPhoneNo">
		<g:message code="player.hotelPhoneNo.label" default="Hotel Phone No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="hotelPhoneNo" required="" value="${playerInstance?.hotelPhoneNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'hotelAddress', 'error')} required">
	<label for="hotelAddress">
		<g:message code="player.hotelAddress.label" default="Hotel Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="hotelAddress" required="" value="${playerInstance?.hotelAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'hotelRoomNo', 'error')} required">
	<label for="hotelRoomNo">
		<g:message code="player.hotelRoomNo.label" default="Hotel Room No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="hotelRoomNo" required="" value="${playerInstance?.hotelRoomNo}"/>

</div>

