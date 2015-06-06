<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-user" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${userInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${userInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:userInstance, action:'save']" >
				<fieldset class="form">


					<%@ page import="org.unity.security.UserRole; org.unity.security.User" %>



					<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
						<label for="username">
							<g:message code="user.username.label" default="Username" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="username" required="" value="${userInstance?.username}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
						<label for="password">
							<g:message code="user.password.label" default="Password" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="password" required="" value="${userInstance?.password}"/>

					</div>

					<div class="fieldcontain  required">
						<label>Role</label>
						<g:select name="roles" from="${org.unity.security.Role.list()}" multiple="multiple" size="5" value="${userInstance}" class="many-to-many"/>
					</div>




					<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} ">
						<label for="firstName">
							<g:message code="user.firstName.label" default="First Name" />

						</label>
						<g:textField name="firstName" value="${userInstance?.firstName}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} ">
						<label for="lastName">
							<g:message code="user.lastName.label" default="Last Name" />

						</label>
						<g:textField name="lastName" value="${userInstance?.lastName}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'district', 'error')} ">
						<label for="district">
							<g:message code="user.district.label" default="District" />

						</label>
						<g:textField name="district" value="${userInstance?.district}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lokal', 'error')} ">
						<label for="lokal">
							<g:message code="user.lokal.label" default="Lokal" />

						</label>
						<g:textField name="lokal" value="${userInstance?.lokal}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'contactNumber', 'error')} ">
						<label for="contactNumber">
							<g:message code="user.contactNumber.label" default="Contact Number" />

						</label>
						<g:textField name="contactNumber" value="${userInstance?.contactNumber}"/>

					</div>

					<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
						<label for="accountExpired">
							<g:message code="user.accountExpired.label" default="Account Expired" />

						</label>
						<g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />

					</div>

					<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
						<label for="accountLocked">
							<g:message code="user.accountLocked.label" default="Account Locked" />

						</label>
						<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />

					</div>

					<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
						<label for="enabled">
							<g:message code="user.enabled.label" default="Enabled" />

						</label>
						<g:checkBox name="enabled" value="${userInstance?.enabled}" />

					</div>

					<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
						<label for="passwordExpired">
							<g:message code="user.passwordExpired.label" default="Password Expired" />

						</label>
						<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />

					</div>






				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
