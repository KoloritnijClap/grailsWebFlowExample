import net.realizeideas.blog.Product

class BootStrap {

    def init = { servletContext ->

        new Product(title: 'Car', description: 'Old car for everyday purpose', price: 4000, currencyCode: 'USD').save(failOnError: true, flush: true)
        new Product(title: 'Mobile', description: 'New smartphone for everyone', price: 600, currencyCode: 'USD').save(failOnError: true, flush: true)

    }
    def destroy = {
    }
}
