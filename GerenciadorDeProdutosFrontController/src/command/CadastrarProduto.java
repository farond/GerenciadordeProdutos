package command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Produto;
import service.ProdutoService;

public class CadastrarProduto implements Command {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Recebendo os par�metros:		
		//Instaciando e populando JavaBean de Produto:
		
		Produto produto = new Produto();
		produto.setCodigo(Integer.parseInt(request.getParameter("codigo")));
		produto.setNome(request.getParameter("nome"));
		produto.setDescricao(request.getParameter("descricao"));		
		produto.setValor(Double.parseDouble(request.getParameter("valor")));
		produto.setEstoque(Integer.parseInt(request.getParameter("estoque")));
				
		
		//Instanciando uma Service de Produto:
		ProdutoService produtoService = new ProdutoService(); 
		
		//Solicitando � service que registre o produto no banco:
		produtoService.cadastrarProduto(produto);
		
		//Antes de despachar o usu�rio, adicionar um atribut� requisi��o:
		request.setAttribute("mensagem", "Produto Cadastrado com sucesso");
		
		//Despachar o usuario � parte de vis�o (apresenta��o - view):
		RequestDispatcher view = request.getRequestDispatcher("cadastro.jsp");
		view.forward(request, response);
	}

}
