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
<h2>Oaxaca - Huatulco</h2>
<br>
<br>
<form>
    <div class="row">
        <div class="col-md-3">
            <h2>Escoge la fecha de tu viaje:</h2>
        </div>
        <div class="col-md-3">
            <g:select id="fecha" name="fecha"
                      class="form-control"
                      noSelection="['': 'Seleccionar']"
                      from="${salidas}"
                      optionKey="id"
                      optionValue="fecha" required="required"/>
        </div>

        <div class="col-md-2">
            <button type="button" id="buscarAsiento" class="btn btn-success right">Buscar</button>
        </div>

        <div id="asiento">

        </div>
    </div>
    <br>
    <br>
    <div class="row">
        <div class="col-md-2">
            <h2>Nombre Pasajero:</h2>
        </div>
        <div class="col-md-4">
            <input type="text" class="form-control" name='nombre' id='nombre' placeholder="Nombre Pasajero" required="required" />
        </div>
        <div class="col-md-2">
            <h2>Huella Dactilar:</h2>
        </div>
        <div class="col-md-4">
            <input type="text" class="form-control" name='huella' id='huella' placeholder="Huella Dactilar" required="required" />
        </div>
    </div>

    <div class="ln_solid"></div>
    <div class="form-group">
        <div class="col-md-6 col-md-offset-3">
            <button id="reset" type="reset" class="btn btn-primary">Cancelar</button>

            <button id="send" type="submit" formaction="${createLink(controller: 'viaje', action: 'vender')}" class="btn btn-success">Aceptar</button>

        </div>
    </div>
</form>
<script>

    $("#buscarAsiento").click(function () {

        var idd = $("#fecha").val();

        console.log(idd);

        $.ajax({
            type: 'POST',
            data: {
                id: idd
            },
            url: "${createLink(controller: 'viaje', action: '_asiento')}",
            success: function(result) {
                $("#asiento").html(result);
            },
            error: function (error) {
                sweetAlert("Ooops...", error.responseText, "error");
            }
        });

    });

</script>
</body>
</html>