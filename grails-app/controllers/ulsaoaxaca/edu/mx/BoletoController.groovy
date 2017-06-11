package ulsaoaxaca.edu.mx

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class BoletoController {


    def validar() {
        def boletos = Boleto.findAll()
        [boletos: boletos]
    }

    def aplicar(Long id){
        def boleto = Boleto.get(id)
        boleto.valido = false
        if(boleto.save(flush: true)){
            render status: 200
        }else{
            render status: 400
        }
    }

    def index() {
        def salidas = Salida.getAll()
        [salidas: salidas]
    }

}
