<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>FAPI - Orientação a Objetos II - Servlets - JSTL - Exemplo if</title>
</head>
<body>
	<div id="mensagem">
		<c:if test="${nome == 'Marcelo'}">
			<p>Seu nome é:  <c:out value = "${nome}"/> portanto seu nome começa com M</p>
		</c:if>
		<c:if test="${nome != 'Marcelo'}">
			<p>Seu nome não é Marcelo =/</p>
		</c:if>
	</div>
	<br />
	<div id="voltarMain">
		<a href="controller?acao=voltar_main">Voltar</a>
	</div>
</body>
</html>
