package org.unity

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PlayerController {
    def burningImageService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Player.list(params), model:[playerInstanceCount: Player.count()]
    }

    def show(Player playerInstance) {
        respond playerInstance
    }

    def create() {
        respond new Player(params)
    }

    @Transactional
    def save(Player playerInstance) {

        if (playerInstance == null) {
            notFound()
            return
        }

        if (playerInstance.hasErrors()) {
            respond playerInstance.errors, view:'create'
            return
        }

        def file = request.getFile('pictureFile')
        println(">>> "+file.originalFilename)
        def userDir = new File("C:\\", "/payload/${playerInstance?.team?.name}")
        userDir.mkdirs()
        def ext = file.originalFilename.toString().substring(file.originalFilename.toString().lastIndexOf('.'))
        File fileNew =  new File( userDir, "${playerInstance?.firstName} ${playerInstance?.middleName} ${playerInstance?.lastName} ${playerInstance?.birthDate?.getYear()}${ext}")
        file.transferTo(fileNew)
        playerInstance.picture = fileNew.getAbsolutePath()
        playerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'player.label', default: 'Player'), playerInstance.id])
                redirect playerInstance
            }
            '*' { respond playerInstance, [status: CREATED] }
        }
    }

    def edit(Player playerInstance) {
        respond playerInstance
    }

    @Transactional
    def update(Player playerInstance) {
        if (playerInstance == null) {
            notFound()
            return
        }

        if (playerInstance.hasErrors()) {
            respond playerInstance.errors, view:'edit'
            return
        }

        playerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Player.label', default: 'Player'), playerInstance.id])
                redirect playerInstance
            }
            '*'{ respond playerInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Player playerInstance) {

        if (playerInstance == null) {
            notFound()
            return
        }
        String path = playerInstance?.getPicture()
        playerInstance.delete flush:true
        new File(path).delete()
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Player.label', default: 'Player'), playerInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'player.label', default: 'Player'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
