/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package struts.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.CarrinhoDAO;
import dao.PedidoDAO;
import dao.PedidoProdutoDAOArrayList;
import java.util.List;
import java.util.Map;
import modelo.Produto;
import modelo.Usuario;

/**
 *
 * @author lab210
 */
public class pedidoInserir extends ActionSupport{

public List<Produto> produtos;
    private double valor_itens;

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
    Map<String, Object> session = ActionContext.getContext().getSession();

    @Override
    public String execute() throws Exception {

        Usuario userLogado = (Usuario) session.get("SESSION_USER");

        CarrinhoDAO cartDao = new CarrinhoDAO();
        PedidoDAO pedidoDao = new PedidoDAO();

        produtos = (List<Produto>) cartDao.read(userLogado.getCod_user());

        pedidoDao.createPedido(userLogado, produtos);

        cartDao.limpaCarrinho(userLogado);

        return SUCCESS;

    }


}
