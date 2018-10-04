<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>FAPI - Orientação a Objetos II - Servlets - Cadastro
	Aluno</title>
</head>
<body>
	<div id="mensagem">

		<c:choose>
			<c:when test="${nome == 'Marcelo'}">
				<p>Seu nome é Marcelo ;)</p>
			</c:when>
			<c:when test="${nome == 'André'}">
				<p>Seu nome é André ;)</p>
			</c:when>
			<c:otherwise>
				<p>Seu nome não é Marcelo e nem André, que pena =[</p>
			</c:otherwise>
		</c:choose>

	</div>
	<br />
	<div id="voltarMain">
		<a href="controller?acao=voltar_main">Voltar</a>
	</div>
</body>
</html>
