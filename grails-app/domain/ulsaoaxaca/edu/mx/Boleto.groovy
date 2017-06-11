package ulsaoaxaca.edu.mx

import grails.plugins.springsecurity.Secured


@Secured(["ROLE_ADMIN"])
class Boleto {

    Viaje viaje
    Asiento asiento
    Salida salida
    String pasajero
    String huella
    boolean valido

    static constraints = {

    }

}
