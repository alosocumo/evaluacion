<%--
  Created by IntelliJ IDEA.
  User: Alondra
  Date: 11/06/2017
  Time: 01:20 AM
--%>

<%@ page import="ulsaoaxaca.edu.mx.Boleto" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>UTicket | Dashboard</title>
    <meta name="layout" content="dash">
    <g:javascript src="jquery.dataTables.js"></g:javascript>
    <g:javascript src="dataTables.tableTools.js"></g:javascript>

</head>

<body>
<div class="col-md-2">
    <h2>Buscar boleto:</h2>
</div>
<div class="input-group top_search col-md-6">
    <input type="text" name="buscar" id="buscar" class="form-control" placeholder="Huella Dactilar...">
</div>
<div class="x_content col-md-8 col-sm-8">
    <table id="example" class="table table-striped table-hover table-condensed responsive-utilities jambo_table">
        <thead>
        <tr class="headings">
            <th>Nombre</th>
            <th>Origen</th>
            <th>Destino</th>
            <th>Salida</th>
            <th>Huella</th>
            <th>Validar</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${boletos}" var="b">
            <tr>
                <td>${b.pasajero}</td>
                <td>${b.viaje.origen}</td>
                <td>${b.viaje.destino}</td>
                <td>${b.salida.fecha}</td>
                <td>${b.huella}</td>
                <td>
                    <g:if test="${b.valido}">
                        <a id="${b.id}" class="validar btn btn-sm btn-success">Validar</a>
                    </g:if>
                    <g:else>
                        <p>Boleto Usado</p>
                    </g:else>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
<g:javascript>

        $(document).ready(function() {

            function filterGlobal () {
                $('#example').DataTable().search(
                        $('#buscar').val()
                ).draw();
            }

            $('#buscar').on( 'keyup click', function () {
                filterGlobal();
            } );

            var oTable = $('#example').dataTable({
                "pageLength": 10,
                "language": {
                    "decimal":        "",
                    "emptyTable":     "No hay informacion disponible",
                    "info":           "Mostrando del _START_ al _END_ de _TOTAL_ entradas",
                    "infoEmpty":      "Mostrando 0 de 0 de 0 entradas",
                    "infoFiltered":   "(filtrado de _MAX_ total entradas)",
                    "infoPostFix":    "",
                    "thousands":      ",",
                    "lengthMenu":     "Mostrar _MENU_ entradas",
                    "loadingRecords": "Cargando...",
                    "processing":     "Procesando...",
                    "search":         "Buscar:",
                    "zeroRecords":    "No se han encontrado resultados",
                    "paginate": {
                        "first":      "Primero",
                        "last":       "Ultimo",
                        "next":       "Siguiente",
                        "previous":   "Anterior"
                    },
                    "aria": {
                        "sortAscending":  ": Activar ordenación ascendente",
                        "sortDescending": ": Activar ordenacion descendente"
                    }
                },
                "aoColumnDefs": [
                    {
                        'bSortable': false,
                        'aTargets': [0]
                    } //disables sorting for column one
                ],
                'iDisplayLength': 12,
                "sPaginationType": "full_numbers"
            });
        });


        $("#mensaje").delay(5000).fadeOut(400);
        $("#warning").delay(7000).fadeOut(400);
        $("#error").delay(10000).fadeOut(400);

        $(".validar").click(function() {
            validar(this.id);
        });

        function validar(boleto) {
            swal({   title: "Está seguro?",
                    text: "El boleto se usara!",
                    type: "warning",
                    cancelButtonText: 'Cancelar',
                    showCancelButton: true,
                    closeOnConfirm: false,
                    showLoaderOnConfirm: true,
                },
                function() {
                    // ajax para eliminar
                    $.ajax({
                        type: 'POST',
                        data: {
                            id: boleto
                        },
                        url: "${createLink(controller: 'boleto', action: 'aplicar')}",
                        success: function(result) {
                            swal({
                                title: 'Bien',
                                text: result,
                                type: 'success',
                                confirmButtonText: 'Aceptar',
                                closeOnConfirm: true
                            }, function() {
                                location.reload();

                            });
                        },
                        error: function (error) {
                            sweetAlert("Ooops...", error.responseText, "error");
                        }
                    });

                });
        }


</g:javascript>
</body>
</html>