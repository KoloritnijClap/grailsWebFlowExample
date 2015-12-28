package net.realizeideas.blog

/**
 * Created by kolorit on 25.12.15.
 */
class Buyer implements Serializable{

    String firstName
    String lastName
    String phoneNumber
    String city
    String country
    String address1
    String address2
    String postalCode
    static constraints = {
        lastName nullable: true
        address2 nullable: true
    }
}
