package net.realizeideas.blog

/**
 * Created by kolorit on 25.12.15.
 */
class PurchaseController {

    def purchaseFlow = {
        init {
            action {
                if (params.productId) {
                    Product product = Product.get(params.productId)
                    if (product) {
                        flow.purchasedProduct = new PurchasedProduct(product: product, buyer: new Buyer())
                    }
                }
            }
            on("success").to "productCountSelect"
            on(Exception).to "exit"
        }

        productCountSelect {
            on("next").to "updateCount"
            on("back").to "exit"
        }

        updateCount {
            action {
                if (params.int('count')) {
                    flow.purchasedProduct.count = params.int('count')
                } else {
                    flash.error = "You should fill count!"
                    return back()
                }
            }
            on("success").to "enterAddress"
            on("back").to "productCountSelect"
            on(Exception).to "exit"
        }

        enterAddress {
            on("next").to "saveBuyer"
            on("back").to "productCountSelect"
        }

        saveBuyer {
            action {
                bindData(flow.purchasedProduct.buyer, params)
                if (!flow.purchasedProduct.buyer.validate()) {
                    flash.error = "Failed to save buyer, please, be sure that you filled all fields"
                    return fail()
                }
            }
            on("success").to "preview"
            on(Exception).to "exit"
            on("fail").to "enterAddress"
        }

        preview {
            on("save").to "save"
            on("back").to "enterAddress"
        }
        save {
            action {
                PurchasedProduct purchasedProduct = flow.purchasedProduct
                if (!purchasedProduct.buyer.save(flush: true, failOnError: true) ||
                        !purchasedProduct.save(flush: true, failOnError: true)) {
                    return fail()
                }
            }
            on("success") { flash.message = "Bought successfully" }.to "exit"
            on("fail") { flash.error = "Failed" }.to "exit"
        }
        exit {
            redirect(controller: 'product', action: 'index')
        }
    }
}
