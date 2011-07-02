/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package struts.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.UsuarioDAO;
import java.util.Map;
import modelo.Usuario;

/**
 *
 * @author Pablo
 */
public class AtualizaUserAction extends ActionSupport {

    Map<String, Object> session = ActionContext.getContext().getSession();
    Usuario user;

    public Usuario getUser() {
        return user;
    }

    public void setUser(Usuario user) {
        this.user = user;
    }

    @Override
    public String execute() throws Exception {
        Usuario userLogado = (Usuario) session.get(("SESSION_USER"));
        UsuarioDAO userDao = new UsuarioDAO();
        userDao.updateUser(userLogado, user);
        session.clear();
        return "success";

    }

    @Override
    public void validate() {



        if (getUser().getSenha() == null || getUser().getSenha().isEmpty()) {
            super.addFieldError("user.senha", "Senha deve ser informado!");
        }
        if (getUser().getEmail() == null || getUser().getEmail().isEmpty()) {
            super.addFieldError("user.email", "Email deve ser informado!");
        }
        if (getUser().getTel() == null || getUser().getTel().isEmpty()) {
            super.addFieldError("user.email", "Telefone deve ser informado!");
        }
        if (getUser().getEndereco() == null || getUser().getEndereco().isEmpty()) {
            super.addFieldError("user.email", "Endereco deve ser informado!");
        }

    }
}
