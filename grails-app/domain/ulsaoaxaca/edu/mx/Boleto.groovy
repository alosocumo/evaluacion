package ulsaoaxaca.edu.mx

import grails.plugins.springsecurity.Secured


@Secured(["ROLE_ADMIN"])
class Boleto {

    static constraints = {

    }
    enum Dias {


        LUNES(1, "Lunes","LUN"),
        MARTES(2,"Martes","MAR"),
        MIERCOLES(3,"Miércoles","MIE"),
        JUEVES(4,"Jueves","JUE"),
        VIERNES(5,"Viernes","VIE"),
        SABADO(7,"Sábado","SAB"),
        DOMINGO(8,"Domingo","DOM");

        private final int numero
        private final String nombre
        private final String abreviatura

        Dias(int numero,String nombre,String abreviatura){
            this.numero = numero
            this.nombre = nombre
            this.abreviatura = abreviatura
        }

        private int numero() { return numero }
        private String nombre() { return nombre }
        private String abreviatura() { return abreviatura }

    }
    enum Horas {

        primera("8:00 am" ),
        segunda("9:00 am"),
        tercera("10:00 am" ),
        cuarta("11:00 am"),
        quinta("12:00 am" ),
        sexta("1:00 pm"),
        septima("2:00 pm" ),
        octava("3:00 pm"),


        private final String hora


        Horas(String hora){

            this.hora = hora

        }


        private String hora() { return hora }

    }

}
