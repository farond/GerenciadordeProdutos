<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Produto"%>
<%@ page import="service.ProdutoService"%>
<!DOCTYPE html>

<html>
	<style>table, th, td {border: 1px solid black;}
		table{width: 100%;} 
		th {height: 50px; background-color: #696969;}
		td { text-align: center;}
		tr:nth-child(even) {background-color: #f4f4f4;}
	</style>
<head>
<meta charset="ISO-8859-1">
<title>Gerenciador de Produtos</title>
</head>
<body>

	<h1>Gerenciador de Produtos</h1>
	
	${requestScope.mensagem}
	
	<table>
		<tr>
			<th>Código Produto</th>
			<th>Nome</th>
			<th>Descrição</th>
			<th>Valor</th>	
			<th>Estoque</th>
			<th>Alterar</th>
			<th>Excluir</th>
		</tr>

			
		<%  List<Produto> lista;
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
			<td><a href="ExcluirProduto?codigo=<%=p.getCodigo()%>">Deletar</a></td>
		</tr>					
				
		<%}%>			
				
		</table>
	
</body>
</html>