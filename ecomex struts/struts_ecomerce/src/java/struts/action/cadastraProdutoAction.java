/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package struts.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.ProdutoDAO;
import java.util.Map;
import modelo.Produto;
import modelo.Usuario;

/**
 *
 * @author Pablo
 */
public class cadastraProdutoAction extends ActionSupport {

    Map<String, Object> session = ActionContext.getContext().getSession();
    public Produto produto;

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    @Override
    public String execute() throws Exception {


        Usuario userLogado = (Usuario) session.get("SESSION_USER");

        if (userLogado.getTipo_user() == 2) {
            ProdutoDAO produtoDao = new ProdutoDAO();
            produtoDao.create(produto);
            return SUCCESS;
        } else {
            super.addFieldError("produto.nome_prod", "Apenas administrador!");
            return ERROR;
        }
        
    }

    public void validate() {
        if (getProduto().getNome_prod() == null || getProduto().getNome_prod().isEmpty()) {
            super.addFieldError("produto.nome_prod", "O nome deve ser informado!");
        }
        if (getProduto().getDescricao() == null || getProduto().getDescricao().isEmpty()) {
            super.addFieldError("produto.descricao", "Descricao deve ser informado!");
        }
        if (getProduto().getPreco() == null || getProduto().getPreco() == 0) {
            super.addFieldError("produto.preco", "Preco deve ser informado!");
        }
        if (getProduto().getUrl_img() == null || getProduto().getUrl_img().isEmpty()) {
            super.addFieldError("produto.url_img", "Url da imagem deve ser informado!");
        }
        if (getProduto().getCategoria() == null || getProduto().getCategoria().getCod_cat() == 0) {
            super.addFieldError("produto.categoria.cod_cat", "Categoria deve ser informado!");
        }
    }
}
