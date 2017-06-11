<html>
<head>
	<meta name='layout' content='main'/>
	<title>U-Ticket| Login</title>
</head>

<body>
<div id='login'>
	<div class=''>

		<g:if test='${flash.message}'>
			<div class='login_message'>Usuario o contraseña incorrectas</div>
		</g:if>
		<div>

			<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
				<h1>Bienvenido a U-Ticket</h1>
				<div>
					<input type="text" class="form-control" name='j_username' id='username' placeholder="Usuario" required="" />
				</div>
				<div>
					<input type="password" class="form-control" name='j_password' id='password' placeholder="Contraseña" required="" />
				</div>
				<div>
					<input type="submit" class="btn btn-default submit" id="submit" value='Iniciar Sesión'>

				</div>

			</form>
		</div>


	</div>
	<div class="separator">



	</div>
</div>
</body>
</html>
