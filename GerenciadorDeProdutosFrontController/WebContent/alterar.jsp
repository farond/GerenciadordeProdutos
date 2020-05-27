<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="model.Produto"%>
<%@ page import="service.ProdutoService"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		
	<%
	Produto produto = new Produto();
	ProdutoService produtoService = new ProdutoService(); 
	int codigo = Integer.parseInt(request.getParameter("codigo"));	
	produto = produtoService.consultarProduto(codigo);	
	%>
	
	${requestScope.mensagem}
	
	<form action="controller.do" method="post">
		<input type="hidden" name="command" value="AlterarProduto">

		Codigo <input type="number" name="codigo" value= <%= produto.getCodigo() %>></br> 
		Nome: <input type="text" name="nome" value= <%= produto.getNome() %>></br> 
		Descricao: <input type="text" name="descricao" value= <%= produto.getDescricao() %>></br> 
		Valor: <input type="number" step="0.1"	name="valor" value=<%= produto.getValor() %>></br> 
		Estoque: <input type="number" name="estoque" value=<%= produto.getEstoque() %>></br>
		<input type="submit">


	</form>

</body>
</html>