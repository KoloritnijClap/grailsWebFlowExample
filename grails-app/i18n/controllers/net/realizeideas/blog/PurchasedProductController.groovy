package net.realizeideas.blog



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PurchasedProductController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PurchasedProduct.list(params), model:[purchasedProductInstanceCount: PurchasedProduct.count()]
    }

    def show(PurchasedProduct purchasedProductInstance) {
        respond purchasedProductInstance
    }

    def create() {
        respond new PurchasedProduct(params)
    }

    @Transactional
    def save(PurchasedProduct purchasedProductInstance) {
        if (purchasedProductInstance == null) {
            notFound()
            return
        }

        if (purchasedProductInstance.hasErrors()) {
            respond purchasedProductInstance.errors, view:'create'
            return
        }

        purchasedProductInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'purchasedProduct.label', default: 'PurchasedProduct'), purchasedProductInstance.id])
                redirect purchasedProductInstance
            }
            '*' { respond purchasedProductInstance, [status: CREATED] }
        }
    }

    def edit(PurchasedProduct purchasedProductInstance) {
        respond purchasedProductInstance
    }

    @Transactional
    def update(PurchasedProduct purchasedProductInstance) {
        if (purchasedProductInstance == null) {
            notFound()
            return
        }

        if (purchasedProductInstance.hasErrors()) {
            respond purchasedProductInstance.errors, view:'edit'
            return
        }

        purchasedProductInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PurchasedProduct.label', default: 'PurchasedProduct'), purchasedProductInstance.id])
                redirect purchasedProductInstance
            }
            '*'{ respond purchasedProductInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PurchasedProduct purchasedProductInstance) {

        if (purchasedProductInstance == null) {
            notFound()
            return
        }

        purchasedProductInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PurchasedProduct.label', default: 'PurchasedProduct'), purchasedProductInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchasedProduct.label', default: 'PurchasedProduct'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
