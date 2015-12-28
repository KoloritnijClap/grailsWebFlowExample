package net.realizeideas.blog

/**
 * Created by kolorit on 25.12.15.
 */
class Product implements Serializable{
    String title
    String description
    Long price
    String currencyCode
    static mapping = {
        description type: 'text'
    }
}
