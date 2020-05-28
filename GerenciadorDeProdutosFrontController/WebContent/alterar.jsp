<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="model.Produto"%>
<%@ page import="service.ProdutoService"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Cadastrar</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css">
    <link rel="stylesheet" href="css/styles.min.css?h=3cfdedfbfdb644c0235fda151573807b">
</head>

<body>
	<nav class="navbar navbar-dark bg-dark">
  	<a class="navbar-brand" href="index.jsp">Gerenciador de Produtos</a>
	</nav>	
	<%
	Produto produto = new Produto();
	ProdutoService produtoService = new ProdutoService(); 
	int codigo = Integer.parseInt(request.getParameter("codigo"));	
	produto = produtoService.consultarProduto(codigo);	
	%>
	
	${requestScope.mensagem}
	${requestScope.mensagem}
    <!-- Start: Login Form Dark -->
    <div class="login-dark">
        <form action="controller.do" method="post" style="width: 344px;height: 455px;padding: 34px;filter: blur(0px) brightness(102%);min-width: 1px;max-width: 412px;">
			<input type="hidden" name="command" value="AlterarProduto">	
            <h4 class="text-center text-light" data-aos="fade">Cadastrar Produto</h4>
            <div class="form-group"><input class="form-control" type="number"  name="codigo" placeholder="Codigo Produto" value= <%= produto.getCodigo() %>></div>
            <div class="form-group"><input class="form-control" type="text"  name="nome" placeholder="Nome Produto" value= <%= produto.getNome() %>></div>
            <div class="form-group"><input class="form-control" type="text"  name="descricao" placeholder="Descrição" value= <%= produto.getDescricao() %>></div>
            <div class="form-group"><input class="form-control" type="number"  step="0.1" name="valor" placeholder="Preço Produto" value=<%= produto.getValor() %>></div>
            <div class="form-group"><input class="form-control" type="text"  name="estoque" placeholder="Estoque" value=<%= produto.getEstoque() %>></div>
            <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Alterar Produto</button></div>
        </form>
    </div>
    <!-- End: Login Form Dark -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
    <script src="js/script.min.js?h=2a0d40cabb24d9b4a16bf3644a15df35"></script>
</body>

</html>