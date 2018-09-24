<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<title>Automato Vending Machine</title>
</head>
<body>

	<div class="container">

		<h1>Autômato - Máquina de Doces</h1>

		<!-- Default panel contents -->
		<div class="panel panel-default">
			<div class="panel-heading">Doces Disponíveis</div>
			<p>Abaixo os doces disponíveis para compra</p>
			<p style="float: right;">Seu saldo é: $$$$</p>
			<div class="panel-body"></div>

			<!-- Table -->
			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>Nome do doce</th>
						<th>Valor</th>
						<th>Retirar Doce</th>
					<tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>A</td>
						<td>R$ 6,00</td>
						<td><button class="btn btn-default">Retirar</button></td>
					</tr>
					<tr>
						<th scope="row">1</th>
						<td>B</td>
						<td>R$ 7,00</td>
						<td></td>
					</tr>
					<tr>
						<th scope="row">1</th>
						<td>C</td>
						<td>R$ 8,00</td>
						<td></td>
					</tr>
				</tbody>
			</table>


		</div>
		<div class="">
			<p>Inserir Notas</p>
			<button class="btn btn-default">Retirar</button>
			<button class="btn btn-default">Retirar</button>
			<button class="btn btn-default">Retirar</button>

			<fieldset>
				<legend>Personalia:</legend>
				Name: <input type="text"><br>
				Email: <input type="text"><br>
				Date of birth: <input type="text">
			</fieldset>
			</form>

		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.js"
		integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
		crossorigin="anonymous"></script>
</body>
</html>