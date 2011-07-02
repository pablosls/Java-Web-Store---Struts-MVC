/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package struts.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.CarrinhoDAO;
import java.util.Map;
import modelo.Carrinho;
import modelo.Produto;
import modelo.Usuario;

/**
 *
 * @author Pablo
 */
public class AdicionaCarrinho extends ActionSupport {

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


        try {

            Usuario userLogado = (Usuario)session.get("SESSION_USER");

            if(userLogado != null){
                CarrinhoDAO carDao = new CarrinhoDAO();
                carDao.AdicionaItemCarrinho(userLogado, produto);
                return SUCCESS;

            }
            System.out.println("Erro ao adicionar carrinho");
            return ERROR;

        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        }

    }



}
