<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
		<br /> <br /> <br />

		<h1>Autômato - Máquina de Doces</h1>

		<!-- Default panel contents -->
		<div class="panel panel-default">
			<div class="panel-heading">Doces Disponíveis</div>
			<p>A seguir os doces disponíveis para comprar, insira as notas
				abaixo para o autômato habilitar a compra.</p>
			<p style="float: left;">
				<b>Seu saldo é: R$ ${saldo}</b>
			</p>
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
				<form action="controller.do" method="post">
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>A</td>
							<td>R$ 6,00</td>
							<td><c:if test="${saldo >= 6}">
									<input type="radio" name="valor" value="6" checked>
								</c:if></td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>B</td>
							<td>R$ 7,00</td>
							<td><c:if test="${saldo >= 7}">
									<input type="radio" name="valor" value="7" checked>
								</c:if></td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>C</td>
							<td>R$ 8,00</td>
							<td><c:if test="${saldo >= 8}">
									<input type="radio" name="valor" value="8" checked>
								</c:if></td>
						</tr>
					</tbody>
			</table>


			<c:if test="${saldo >= 6}">
				<p>Clique aqui para retirar seu doce!</p>
				<button class="btn btn-danger" name="command" value="RetirarDoce">Retirar</button>
			</c:if>
			</form>

		</div>
		<br /> <br /> <br />
		<div class="">
			<p>
				<b>Inserir Notas</b>
			</p>
			<form action="controller.do" method="post">
				<input type="radio" name="valor" value="1" checked> R$1,00 <input
					type="radio" name="valor" value="2"> R$2,00 <input
					type="radio" name="valor" value="5"> R$5,00 <br /> <br />
				<br />
				<button class="btn btn-success" name="command"
					value="AdicionarSaldo">Inserir</button>
			</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.js"
		integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
		crossorigin="anonymous"></script>
</body>
</html>