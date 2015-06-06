package org.unity.security

class User {

	transient springSecurityService

	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	String firstName
	String lastName
	String district
	String lokal
	String contactNumber

	static constraints = {
		username blank: false, unique: true
		password blank: false
		firstName nullable: true
		lastName nullable: true
		district nullable: true
		lokal nullable: true
		contactNumber nullable: true
	}

	static mapping = {
		table("users")
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}