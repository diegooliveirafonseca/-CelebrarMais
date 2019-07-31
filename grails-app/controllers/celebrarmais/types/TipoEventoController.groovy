package celebrarmais.types



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TipoEventoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TipoEvento.list(params), model:[tipoEventoInstanceCount: TipoEvento.count()]
    }

    def show(TipoEvento tipoEventoInstance) {
        respond tipoEventoInstance
    }

    def create() {
        respond new TipoEvento(params)
    }

    @Transactional
    def save(TipoEvento tipoEventoInstance) {
        if (tipoEventoInstance == null) {
            notFound()
            return
        }

        if (tipoEventoInstance.hasErrors()) {
            respond tipoEventoInstance.errors, view:'create'
            return
        }

        tipoEventoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tipoEvento.label', default: 'TipoEvento'), tipoEventoInstance.id])
                redirect tipoEventoInstance
            }
            '*' { respond tipoEventoInstance, [status: CREATED] }
        }
    }

    def edit(TipoEvento tipoEventoInstance) {
        respond tipoEventoInstance
    }

    @Transactional
    def update(TipoEvento tipoEventoInstance) {
        if (tipoEventoInstance == null) {
            notFound()
            return
        }

        if (tipoEventoInstance.hasErrors()) {
            respond tipoEventoInstance.errors, view:'edit'
            return
        }

        tipoEventoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TipoEvento.label', default: 'TipoEvento'), tipoEventoInstance.id])
                redirect tipoEventoInstance
            }
            '*'{ respond tipoEventoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TipoEvento tipoEventoInstance) {

        if (tipoEventoInstance == null) {
            notFound()
            return
        }

        tipoEventoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TipoEvento.label', default: 'TipoEvento'), tipoEventoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoEvento.label', default: 'TipoEvento'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
