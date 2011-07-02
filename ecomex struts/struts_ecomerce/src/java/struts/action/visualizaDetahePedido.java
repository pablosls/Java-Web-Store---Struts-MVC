/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package struts.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.PedidoDAO;
import java.util.List;
import java.util.Map;
import modelo.Pedido;
import modelo.Produto;
import modelo.Usuario;

/**
 *
 * @author Pablo
 */
public class visualizaDetahePedido extends ActionSupport {

    Map<String, Object> session = ActionContext.getContext().getSession();

    Pedido pedido;
    List<Produto> produtos;

    public List<Produto> getProdutos() {
        return produtos;
    }

    public void setProdutos(List<Produto> produtos) {
        this.produtos = produtos;
    }



    public Pedido getPedido() {
        return pedido;
    }

    public void setPedido(Pedido pedido) {
        this.pedido = pedido;
    }



    @Override
    public String execute() throws Exception {

        Usuario userLogado = (Usuario) session.get("SESSION_USER");

        PedidoDAO pedidoDao = new PedidoDAO();

        produtos = (List<Produto>) pedidoDao.readProdutosDoPedido(pedido);

        System.out.println("total de " + produtos.size());

        return SUCCESS;

    }
}
