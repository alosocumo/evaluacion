package ulsaoaxaca.edu.mx

class ViajeController {

    def index() { }

    def _asiento(Long id){
        def salida = Salida.get(id)
        def asientos = Asiento.findAllBySalidaAndDisponible(salida, true)
        [asientos: asientos]
    }

    def vender(){
        def asiento = Asiento.get(Long.parseLong(params.asiento))
        def viaje = Viaje.get(1)
        def salida = Salida.get(Long.parseLong(params.fecha))
        def boleto = new Boleto(asiento: asiento, viaje: viaje, salida: salida,
                pasajero: params.nombre, huella: params.huella, valido: true)

        if(boleto.save(flush: true)){
            asiento.disponible = false
            asiento.save(flush: true)
            flash.message = "Venta Exitosa"
        }else{
            flash.error = "La venta no se pudo realizar"
        }

        redirect(controller: 'boleto', action:  'index')

    }
}
