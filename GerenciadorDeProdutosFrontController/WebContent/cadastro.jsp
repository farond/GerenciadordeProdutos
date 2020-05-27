<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	${requestScope.mensagem}

	<form action="controller.do" method="post">
	<input type="hidden" name="command" value="CadastrarProduto"> 
	
		Codigo
		<input type="number" name="codigo"></br> 
		Nome: <input type="text"	name="nome"></br> 
		Descricao: <input type="text"	name="descricao"></br> 
		Valor: <input type="number" step="0.1"	name="valor"></br> 
		Estoque: <input type="number" name="estoque"></br> 
		<input type="submit">
	
	
	</form>

</body>
</html>