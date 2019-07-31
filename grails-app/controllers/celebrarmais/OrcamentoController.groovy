package celebrarmais



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OrcamentoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Orcamento.list(params), model:[orcamentoInstanceCount: Orcamento.count()]
    }

    def show(Orcamento orcamentoInstance) {
        respond orcamentoInstance
    }

    def create() {
        respond new Orcamento(params)
    }

    @Transactional
    def save(Orcamento orcamentoInstance) {
        if (orcamentoInstance == null) {
            notFound()
            return
        }

        if (orcamentoInstance.hasErrors()) {
            respond orcamentoInstance.errors, view:'create'
            return
        }

        orcamentoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'orcamento.label', default: 'Orcamento'), orcamentoInstance.id])
                redirect orcamentoInstance
            }
            '*' { respond orcamentoInstance, [status: CREATED] }
        }
    }

    def edit(Orcamento orcamentoInstance) {
        respond orcamentoInstance
    }

    @Transactional
    def update(Orcamento orcamentoInstance) {
        if (orcamentoInstance == null) {
            notFound()
            return
        }

        if (orcamentoInstance.hasErrors()) {
            respond orcamentoInstance.errors, view:'edit'
            return
        }

        orcamentoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Orcamento.label', default: 'Orcamento'), orcamentoInstance.id])
                redirect orcamentoInstance
            }
            '*'{ respond orcamentoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Orcamento orcamentoInstance) {

        if (orcamentoInstance == null) {
            notFound()
            return
        }

        orcamentoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Orcamento.label', default: 'Orcamento'), orcamentoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'orcamento.label', default: 'Orcamento'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
