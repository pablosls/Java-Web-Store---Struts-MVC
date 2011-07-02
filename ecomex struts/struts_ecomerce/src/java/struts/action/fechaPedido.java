/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package struts.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.CarrinhoDAO;
import java.util.List;
import java.util.Map;
import modelo.Produto;
import modelo.Usuario;

/**
 *
 * @author lab210
 */
public class fechaPedido extends ActionSupport{
    
      public List<Produto> produtos;
      public double valor_itens;

    public List<Produto> getProdutos() {
        return produtos;
    }

    public void setProdutos(List<Produto> produtos) {
        this.produtos = produtos;
    }

    public double getValor_itens() {
        return valor_itens;
    }

    public void setValor_itens(double valor_itens) {
        this.valor_itens = valor_itens;
    }

      

    @Override
    public String execute() throws Exception {

        Map<String, Object> session = ActionContext.getContext().getSession();

         Usuario userLogado = (Usuario) session.get("SESSION_USER");

        CarrinhoDAO carrinhoDAO = new CarrinhoDAO();
        produtos = (List<Produto>) carrinhoDAO.read(userLogado.getCod_user());
        System.out.println(produtos.size() + " encontrados");

        for (Produto produto : produtos) {
            System.out.println(produto.getNome_prod());
            valor_itens = valor_itens + produto.getPreco();
        }
        return SUCCESS;

    
    }



}
