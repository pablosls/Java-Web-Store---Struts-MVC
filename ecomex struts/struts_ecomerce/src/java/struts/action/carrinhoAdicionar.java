/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package struts.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.CarrinhoDAO;
import dao.ProdutoDAO;
import java.util.Map;
import modelo.Produto;
import modelo.Produto;
import modelo.Usuario;

/**
 *
 * @author Pablo
 */
public class carrinhoAdicionar extends ActionSupport {

    Map<String, Object> session = ActionContext.getContext().getSession();
    private Produto produto;

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    @Override
    public String execute() throws Exception {

        Usuario usuarioLogado = (Usuario) session.get("SESSION_USER");
        //valida Sessao
        if (usuarioLogado != null) {
            CarrinhoDAO carrinhoDao = new CarrinhoDAO();

            carrinhoDao.AdicionaItemCarrinho(usuarioLogado, produto);
            //carrinhoDao.AdicionaItemCarrinho(usuarioLogado.getCod_user(), produto.getCod_produto());
            return SUCCESS;
        } else {
            return ERROR;
        }

    }
}
