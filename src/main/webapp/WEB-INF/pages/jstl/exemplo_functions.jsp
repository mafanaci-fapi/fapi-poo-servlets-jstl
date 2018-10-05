<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<meta charset="UTF-8">
<title>FAPI - Orientação a Objetos II - Servlets - JSTL - Exemplo functions</title>
</head>
<body>
	<div id="mensagem">

		<c:forEach var="nome" items="${nomes}">
			<p>
				Nome:
				<c:out value="${nome}" />
				<c:if test="${fn:contains(nome, 'a')}">
					<p style="color: blue;">Esse nome contem a letra "a"</p>
				</c:if>
			</p>

		</c:forEach>

	</div>
	<br />
	<div id="voltarMain">
		<a href="controller?acao=voltar_main">Voltar</a>
	</div>
</body>
</html>
