
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>UTicket | Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'logo.png')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'fonts/css', file: 'font-awesome.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'custom.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'green.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery-ui.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'animate.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'pnotify.custom.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'sweetalert.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-datetimepicker.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'fullcalendar.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'responsive.dataTables.min.css')}" type="text/css">

    <g:javascript src="jquery-3.1.1.min.js"/>
    <g:javascript src="jquery-ui.js"></g:javascript>
    <g:javascript src="bootstrap.min.js"></g:javascript>
    <g:javascript src="bootbox.min.js"></g:javascript>
    <g:javascript src="jsapi.js"/>
    <g:javascript src="jquery.dataTables.min.js"/>
    <g:javascript src="offcanvas.js"/>
    <g:javascript src="bootstrap-filestyle.min.js"/>
    <g:javascript src="application.js"></g:javascript>
    <g:javascript src="jquery.dataTables.js"></g:javascript>
    <g:javascript src="dataTables.tableTools.js"></g:javascript>
    <g:javascript src="pnotify.custom.min.js"></g:javascript>
    <g:javascript src="sweetalert.min.js"></g:javascript>
    <g:javascript src="moment.min.js"></g:javascript>
    <g:javascript src="es.js"></g:javascript>
    <g:javascript src="bootstrap-datetimepicker.js"></g:javascript>
    <g:javascript src="fullcalendar.js"></g:javascript>
    <g:javascript>
    $('.alert').fadeToggle(5000);
    </g:javascript>
    <style type="text/css">
    .dataTables_filter {
        display: none;
    }
    </style>
    <g:layoutHead/>
    <r:layoutResources />
</head>
<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col menu_fixed">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="${createLink(controller: 'boleto', action: 'dash')}" class="site_title"><i class="fa fa-ticket"></i><span>U-Ticket</span></a>
                </div>
                <div class="clearfix"></div>

                <div class="profile clearfix">
                    <div class="profile_pic">
                        <img src="${resource(dir: 'images', file: 'profile.png')}" alt="..." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>
                            Bienvenido,
                        </span>
                        <h2>Admin</h2>
                    </div>
                </div>

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                    <div class="menu_section">
                        <h3>General</h3>
                        <ul class="nav side-menu">
                            <li class="boleto"><a href="${createLink(controller: 'boleto', action: 'index')}"><i class="fa fa-home"></i>Vender </a>
                            </li>
                            <li class="boleto"><a href="${createLink(controller: 'boleto', action: 'validar')}"><i class="fa fa-check"></i>Validar </a>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu ">
                <nav class="" role="navigation">
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="clickAbrir">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                <img src="${resource(dir: 'images', file: 'profile.png')}" alt="">Admin
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                                <li><a href="${createLink(controller: 'logout', action: 'index')}"><i class="fa fa-sign-out pull-right"></i> Cerrar Sesión</a>
                                </li>
                            </ul>
                        </li>

                    </ul>
                </nav>
            </div>
        </div>
        <!--Page content-->
        <div class="right_col" role="main">
            <div class="">
                <div class="row">
                    <div class="col-md-12">
                        <div class="">

                            <g:if test="${flash.message}">
                                <g:hiddenField name="texto" value="${flash.message}" id="successNotification" onclick="showSuccessNotification()"></g:hiddenField>
                            </g:if>
                            <g:if test="${flash.error}">
                                <g:hiddenField name="texto" id="errorNotification" value="${flash.error}" onclick="showErrorNotification()"></g:hiddenField>
                            </g:if>
                            <g:if test="${flash.warning}">
                                <g:hiddenField name="texto" id="warningNotification" value="${flash.warning}" onclick="showWarningNotification()"></g:hiddenField>
                            </g:if>

                            <g:layoutBody/>
                            <r:layoutResources />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <g:javascript src="custom.js"></g:javascript>
        <r:layoutResources />
    </div>
</div>

<script>
    $(document).ready(function() {
        $("#successNotification").click();
        $("#errorNotification").click();
        $("#warningNotification").click();
    });

    function showSuccessNotification() {
        var text = $("#successNotification").val();
        var notice = new PNotify({
            title : 'Acción Exitosa',
            text : text + '',
            animate : {
                animate : true,
                in_class : 'slideInDown',
                out_class : 'slideOutUp'
            },
            buttons : {
                closer : false,
                sticker : false
            },
            type : 'success',
            icon : 'fa fa-check',
            delay : 3000
        })

        notice.get().click(function() {
            notice.remove();
        });
    };

    function showErrorNotification() {
        var text = $("#errorNotification").val();
        var notice = new PNotify({
            title : 'Error',
            text : text + '',
            animate : {
                animate : true,
                in_class : 'slideInDown',
                out_class : 'slideOutUp'
            },
            buttons : {
                closer : false,
                sticker : false
            },
            type : 'error',
            icon : 'icon-warning-sign',
            delay : 5000
        })

        notice.get().click(function() {
            notice.remove();
        });
    };
    function showWarningNotification() {
        var text = $("#warningNotification").val();
        var notice = new PNotify({
            title : 'Nota',
            text : text + '',
            animate : {
                animate : true,
                in_class : 'slideInDown',
                out_class : 'slideOutUp'
            },
            buttons : {
                closer : false,
                sticker : false
            },
            icon : 'fa fa-exclamation-triangle',
            delay : 10000
        })

        notice.get().click(function() {
            notice.remove();
        });
    };
</script>
</body>
</html>
