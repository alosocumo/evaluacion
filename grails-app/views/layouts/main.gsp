

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>U-Ticket| Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="${resource(dir: 'images', file: 'logo.png')}" type="image/x-icon">
	<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
	<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'fonts/css', file: 'font-awesome.min.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'custom.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'green.css')}" type="text/css">
	<g:layoutHead/>
	<r:layoutResources />
</head>

<body style="background:#F7F7F7;">

<div class="">

	<div id="wrapper">
		<div id="login" class="animate form">
			<section class="login_content">
				<g:layoutBody/>
				<r:layoutResources />
			</section>
		</div>
	</div>
</div>
<g:javascript src="icheck.min.js"></g:javascript>

</body>
</html>