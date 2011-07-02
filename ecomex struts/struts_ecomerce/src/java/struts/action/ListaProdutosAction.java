/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package struts.action;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProdutoDAO;
import java.sql.SQLException;
import java.util.List;
import modelo.Produto;

/**
 *
 * @author Pablo
 */
public class ListaProdutosAction extends ActionSupport {

    private List<Produto> produtos;

    public List<Produto> getProdutos() {
        return produtos;
    }

    public void setProdutos(List<Produto> produtos) {
        this.produtos = produtos;
    }

    @Override
    public String execute() throws Exception {

        System.out.println("buscando produtos");

        try {
            produtos = new ProdutoDAO().readAll();
            System.out.println("success listagem");
            System.out.println("retounou " + produtos.size() + " produtos");
            return "success";
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
