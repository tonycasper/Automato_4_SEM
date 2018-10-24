<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p>Olá Retire seu doce ${doce} por gentileza (:</p>
	
	<c:if test="${saldo == 0}"> 
		<p>Você não possui troco. </p>
	</c:if>
	
	<c:if test="${saldo > 0}"> 
		<p><b> Seu troco é de: R$ ${saldo}</b></p>
	</c:if>
</body>
</html>