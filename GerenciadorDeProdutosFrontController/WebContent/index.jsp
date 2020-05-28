<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Produto"%>
<%@ page import="service.ProdutoService"%>
<!DOCTYPE html>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Gerenciador de Produtos</title>
</head>
<body>
	<nav class="navbar navbar-dark bg-dark">
  	<a class="navbar-brand" href="index.jsp">Gerenciador de Produtos</a>
  	 <a class="nav-link" href="cadastro.jsp">Cadastrar Produto</a>
	</nav>	
	
	
	${requestScope.mensagem}
<div>
	<table class="table table-dark">
		<tr>
			<th scope="col">Código Produto</th>
			<th scope="col">Nome</th>
			<th scope="col">Descrição</th>
			<th scope="col">Valor</th>	
			<th scope="col">Estoque</th>
			<th scope="col">Alterar</th>
			<th scope="col">Excluir</th>
		</tr>

			
		<%
			List<Produto> lista;
			ProdutoService pds = new ProdutoService();		
			lista = pds.listarProdutos();
			
			for (Produto p : lista){	
		%>
				
		<tr>
			<td><%=p.getCodigo() %></td>
			<td><%=p.getNome() %></td>
			<td><%= p.getDescricao() %></td>
			<td>R$ <%= p.getValor() %></td>
			<td><%= p.getEstoque() %></td>			
			<td><a href="alterar.jsp?codigo=<%=p.getCodigo()%>">Alterar</a></td>
			<td><a href="controller.do?command=ExcluirProduto&codigo=<%=p.getCodigo()%>">Deletar</a></td>		
			
		</tr>					
				
		<%}%>			
				
		</table>
		</div>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>