package celebrarmais


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PacoteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Pacote.list(params), model: [pacoteInstanceCount: Pacote.count()]
    }

    def show(Pacote pacoteInstance) {
        respond pacoteInstance
    }

    def create() {
        respond new Pacote(params)
    }

    @Transactional
    def save(Pacote pacoteInstance) {
        if (pacoteInstance == null) {
            notFound()
            return
        }

        if (pacoteInstance.hasErrors()) {
            respond pacoteInstance.errors, view: 'create'
            return
        }

        pacoteInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pacote.label', default: 'Pacote'), pacoteInstance.id])
                redirect pacoteInstance
            }
            '*' { respond pacoteInstance, [status: CREATED] }
        }
    }

    def edit(Pacote pacoteInstance) {
        respond pacoteInstance
    }

    @Transactional
    def update(Pacote pacoteInstance) {
        if (pacoteInstance == null) {
            notFound()
            return
        }

        if (pacoteInstance.hasErrors()) {
            respond pacoteInstance.errors, view: 'edit'
            return
        }

        pacoteInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Pacote.label', default: 'Pacote'), pacoteInstance.id])
                redirect pacoteInstance
            }
            '*' { respond pacoteInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Pacote pacoteInstance) {

        if (pacoteInstance == null) {
            notFound()
            return
        }

        pacoteInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Pacote.label', default: 'Pacote'), pacoteInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pacote.label', default: 'Pacote'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
