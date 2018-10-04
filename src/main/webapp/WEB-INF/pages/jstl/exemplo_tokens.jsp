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
		<c:forTokens items="${nomes}" delims="|" var="nome">
			<p>
				<c:out value="${nome}" />
			</p>
		</c:forTokens>
	</div>
	<br />
	<div id="voltarMain">
		<a href="controller?acao=voltar_main">Voltar</a>
	</div>
</body>
</html>
