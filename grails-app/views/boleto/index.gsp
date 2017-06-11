<%--
  Created by IntelliJ IDEA.
  User: Alondra
  Date: 11/06/2017
  Time: 01:40 AM
--%>


<%@ page import="ulsaoaxaca.edu.mx.Boleto" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="dash">
</head>
<body>
<div class="dialog">
    <h2>Escoge el dia de tu viaje:</h2>
    <g:select id="dias" name="dias"
              noSelection="['': '']"
              from="${ulsaoaxaca.edu.mx.Boleto.Dias.values()}"
              optionKey="abreviatura"
              optionValue="nombre"
              onchange="escribirDia(this)"/>
</div>
<div class="dialog">
    <h2>Escoge el horario de tu viaje:</h2>
    <g:select id="horas" name="horas"
              noSelection="['': '']"
              from="${ulsaoaxaca.edu.mx.Boleto.Horas.values()}"
              optionValue="hora"
              onchange="escribirHora(this)"/>
</div>
<div>
    <button>Buscar</button>

</div>
<div>
    <input type="text" class="" name='Huella' id='huella' placeholder="Huella" required="" />
</div>
<div>
    <button>Cancelar </button>

</div>
<div>
    <button>Vender</button>

</div>

</body>
</html>