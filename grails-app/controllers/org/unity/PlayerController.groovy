package org.unity

import org.springframework.security.access.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class PlayerController {
    def burningImageService

    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]

    def findSubTeamsForTeam = {
        def subTeams = SubTeam.findAllByTeam(Team.get(params.team))
        render(template: 'teamSelection', model:  [subTeams: subTeams])
    }

    def findCategoriesBySport = {
        def categories = Category.findAllBySport(Sport.get(params.sport));
        render(template: 'categories', model:  [categories: categories])
    }

    def list = {
        session.removeAttribute("team")
        session.removeAttribute("subTeam")
        session.setAttribute("team", params.team)
        session.setAttribute("subTeam", params.subTeam)
        def players = Player.findAllByTeamAndSubTeam(Team.get(params.team), SubTeam.get(params.subTeam), [max:params.max?:10, offset: params.offset?:0, sort:params.sort, order:params.order?:'asc'])
        respond players, model:[playerInstanceCount: Player.findAllByTeamAndSubTeam(Team.get(params.team), SubTeam.get(params.subTeam)).size()]
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Player.list(params), model:[playerInstanceCount: Player.count()]
    }

    def show(Player playerInstance) {
        println(params.team)
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
        if(file.size != 0) {
            println(">>> "+file.size)
            println(">>> "+file)
            def userDir = new File("C:\\", "/payload/${playerInstance?.team?.name}")
            userDir.mkdirs()
            def ext = file?.originalFilename?.toString()?.substring(file?.originalFilename?.toString()?.lastIndexOf('.'))
            File fileNew =  new File( userDir, "${playerInstance?.firstName} ${playerInstance?.middleName} ${playerInstance?.lastName} ${playerInstance?.birthDate?.getYear()}${ext}")
            file?.transferTo(fileNew)
            playerInstance.picture = fileNew.getAbsolutePath()
        }
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
        println(playerInstance.sports)
        respond playerInstance
    }

    @Transactional
    def update(Player playerInstance) {
        println(playerInstance?.sports)
        if (playerInstance == null) {
            notFound()
            return
        }

        if (playerInstance.hasErrors()) {
            respond playerInstance.errors, view:'edit'
            return
        }
        def file = request.getFile('pictureFile')
        if(file.size != 0) {
            def userDir = new File("C:\\", "/payload/${playerInstance?.team?.name}")
            userDir.mkdirs()
            def ext = file?.originalFilename?.toString()?.substring(file?.originalFilename?.toString()?.lastIndexOf('.'))
            File fileNew =  new File( userDir, "${playerInstance?.firstName} ${playerInstance?.middleName} ${playerInstance?.lastName} ${playerInstance?.birthDate?.getYear()}${ext}")
            file?.transferTo(fileNew)
            playerInstance.picture = fileNew.getAbsolutePath()
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
        path == null ?:new File(path)?.delete()
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Player.label', default: 'Player'), playerInstance.id])
                redirect action:"list", params: [team:session.getAttribute('team'), subTeam: session.getAttribute('subTeam')], method:"GET"
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
