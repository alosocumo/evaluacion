import ulsaoaxaca.edu.mx.Asiento
import ulsaoaxaca.edu.mx.Salida
import ulsaoaxaca.edu.mx.User
import ulsaoaxaca.edu.mx.Role
import ulsaoaxaca.edu.mx.UserRole
import ulsaoaxaca.edu.mx.Viaje

class BootStrap {

    def init = { servletContext ->
        def user = User.findAll()
        if(user.size() == 0) {
            User admin = new User(username: 'admin', password: 'admin', enabled: true).save()
            Role rolAdmin = new Role(authority: 'ROLE_ADMIN').save()
            UserRole.create(admin, rolAdmin, true)

            Viaje viaje = new Viaje(origen: 'Oaxaca', destino: 'Huatulco').save(flush: true)

            Salida uno = new Salida(fecha: 'Miercoles 13 2017, 08:00 hrs', viaje: viaje).save(flush: true)
            Salida dos = new Salida(fecha: 'Miercoles 13 2017, 10:00 hrs', viaje: viaje).save(flush: true)
            Salida tres = new Salida(fecha: 'Miercoles 13 2017, 16:00 hrs', viaje: viaje).save(flush: true)
            Salida cuatro = new Salida(fecha: 'Miercoles 13 2017, 20:00 hrs', viaje: viaje).save(flush: true)

            Salida cinco = new Salida(fecha: 'Viernes 15 2017, 08:00 hrs', viaje: viaje).save(flush: true)
            Salida seis = new Salida(fecha: 'Viernes 15 2017, 10:00 hrs', viaje: viaje).save(flush: true)
            Salida siete = new Salida(fecha: 'Viernes 15 2017, 16:00 hrs', viaje: viaje).save(flush: true)
            Salida ocho = new Salida(fecha: 'Viernes 15 2017, 20:00 hrs', viaje: viaje).save(flush: true)

            Asiento aUno = new Asiento(numero: 1, viaje: viaje, disponible: true, salida: uno).save(flush: true)
            Asiento aDos = new Asiento(numero: 2, viaje: viaje, disponible: true, salida: uno).save(flush: true)
            Asiento aTres = new Asiento(numero: 3, viaje: viaje, disponible: true, salida: uno).save(flush: true)
            Asiento aCuatro = new Asiento(numero: 4, viaje: viaje, disponible: true, salida: uno).save(flush: true)
            Asiento aCinco = new Asiento(numero: 5, viaje: viaje, disponible: true, salida: uno).save(flush: true)

        }

    }
    def destroy = {
    }
}
