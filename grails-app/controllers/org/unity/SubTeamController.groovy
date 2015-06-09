package org.unity

import org.springframework.security.access.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class SubTeamController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SubTeam.list(params), model:[subTeamInstanceCount: SubTeam.count()]
    }

    def show(SubTeam subTeamInstance) {
        respond subTeamInstance
    }

    def create() {
        respond new SubTeam(params)
    }

    @Transactional
    def save(SubTeam subTeamInstance) {
        if (subTeamInstance == null) {
            notFound()
            return
        }

        if (subTeamInstance.hasErrors()) {
            respond subTeamInstance.errors, view:'create'
            return
        }

        subTeamInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'subTeam.label', default: 'SubTeam'), subTeamInstance.id])
                redirect subTeamInstance
            }
            '*' { respond subTeamInstance, [status: CREATED] }
        }
    }

    def edit(SubTeam subTeamInstance) {
        respond subTeamInstance
    }

    @Transactional
    def update(SubTeam subTeamInstance) {
        if (subTeamInstance == null) {
            notFound()
            return
        }

        if (subTeamInstance.hasErrors()) {
            respond subTeamInstance.errors, view:'edit'
            return
        }

        subTeamInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SubTeam.label', default: 'SubTeam'), subTeamInstance.id])
                redirect subTeamInstance
            }
            '*'{ respond subTeamInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SubTeam subTeamInstance) {

        if (subTeamInstance == null) {
            notFound()
            return
        }

        subTeamInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SubTeam.label', default: 'SubTeam'), subTeamInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'subTeam.label', default: 'SubTeam'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
