/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package struts.action;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProdutoDAO;
import java.sql.SQLException;
import java.util.List;
import modelo.Categoria;
import modelo.Produto;

/**
 *
 * @author Pablo
 */
public class filtraCategoriaAction  extends ActionSupport{

    Categoria categoria;

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }


    private List<Produto> produtos;

    public List<Produto> getProdutos() {
        return produtos;
    }

    public void setProdutos(List<Produto> produtos) {
        this.produtos = produtos;
    }

    @Override
    public String execute() throws Exception {

        System.out.println("filtrando categorias");

        try {
            produtos = new ProdutoDAO().readAllCategoria(categoria);
            System.out.println("success listagem");
            System.out.println("retounou " + produtos.size() + " produtos");
            return "success";
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }





}
