<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>FAPI - Orientação a Objetos II - Servlets - JSTL - Exemplo forEach</title>
</head>
<body>
	<div id="mensagem">
		<table>
			<tr>
				<th>Nome</th>
			</tr>
			<tbody>
				<c:forEach var="nome" items="${nomes}">
					<tr>
						<td><c:out value="${nome}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br />
	<div id="voltarMain">
		<a href="controller?acao=voltar_main">Voltar</a>
	</div>
</body>
</html>
