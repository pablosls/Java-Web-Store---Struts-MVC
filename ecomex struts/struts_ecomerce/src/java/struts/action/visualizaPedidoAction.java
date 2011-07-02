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
public class visualizaPedidoAction extends ActionSupport {

    Map<String, Object> session = ActionContext.getContext().getSession();

    public List<Pedido> pedidos;

    public List<Pedido> getPedidos() {
        return pedidos;
    }

    public void setPedidos(List<Pedido> pedidos) {
        this.pedidos = pedidos;
    }

    


    @Override
    public String execute() throws Exception {

        Usuario userLogado = (Usuario) session.get("SESSION_USER");

        PedidoDAO pedidoDao = new PedidoDAO();

        pedidos = (List<Pedido>) pedidoDao.readPedidosUser(userLogado);

        for (Pedido pedido : pedidos) {
            System.out.println(pedido.getNum_pedido());
        }

        return SUCCESS;

    }
}
