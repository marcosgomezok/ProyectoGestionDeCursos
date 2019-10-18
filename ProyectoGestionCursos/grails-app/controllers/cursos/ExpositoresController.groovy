package cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ExpositoresController {

    ExpositoresService expositoresService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond expositoresService.list(params), model:[expositoresCount: expositoresService.count()]
    }

    def show(Long id) {
        respond expositoresService.get(id)
    }

    def create() {
        respond new Expositores(params)
    }

    def save(Expositores expositores) {
        if (expositores == null) {
            notFound()
            return
        }

        try {
            expositoresService.save(expositores)
        } catch (ValidationException e) {
            respond expositores.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'expositores.label', default: 'Expositores'), expositores.id])
                redirect expositores
            }
            '*' { respond expositores, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond expositoresService.get(id)
    }

    def update(Expositores expositores) {
        if (expositores == null) {
            notFound()
            return
        }

        try {
            expositoresService.save(expositores)
        } catch (ValidationException e) {
            respond expositores.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'expositores.label', default: 'Expositores'), expositores.id])
                redirect expositores
            }
            '*'{ respond expositores, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        expositoresService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'expositores.label', default: 'Expositores'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'expositores.label', default: 'Expositores'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
