<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>FAPI - Orienta��o a Objetos II - Servlets - Cadastro
	Aluno</title>
</head>
<body>
	<div id="mensagem">

		<c:choose>
			<c:when test="${nome == 'Marcelo'}">
				<p>Seu nome � Marcelo ;)</p>
			</c:when>
			<c:when test="${nome == 'Andr�'}">
				<p>Seu nome � Andr� ;)</p>
			</c:when>
			<c:otherwise>
				<p>Seu nome n�o � Marcelo e nem Andr�, que pena =[</p>
			</c:otherwise>
		</c:choose>

	</div>
	<br />
	<div id="voltarMain">
		<a href="controller?acao=voltar_main">Voltar</a>
	</div>
</body>
</html>
