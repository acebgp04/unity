<%@ page import="org.unity.Category" %>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'sport', 'error')} required">
	<label for="sport">
		<g:message code="category.sport.label" default="Sport" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sport" name="sport.id" from="${org.unity.Sport.list()}" optionKey="id" required="" value="${categoryInstance?.sport?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'name', 'error')} required">
	<label for="name">
		Category
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${categoryInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'venue', 'error')} required">
	<label for="venue">
		<g:message code="category.venue.label" default="Venue" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="venue" required="" value="${categoryInstance?.venue}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'dateOfEvent', 'error')} required">
	<label for="dateOfEvent">
		<g:message code="category.dateOfEvent.label" default="Date Of Event" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfEvent" precision="minute" value="${categoryInstance?.dateOfEvent}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'CFO', 'error')} required">
	<label for="CFO">
		<g:message code="category.CFO.label" default="CFO" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="CFO" required="" value="${categoryInstance?.CFO}"/>

</div>



