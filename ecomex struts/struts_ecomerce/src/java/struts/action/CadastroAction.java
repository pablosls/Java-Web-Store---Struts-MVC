/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package struts.action;

import com.opensymphony.xwork2.ActionSupport;
import modelo.Usuario;
import dao.UsuarioDAO;

/**
 *
 * @author lab210
 */
public class CadastroAction extends ActionSupport {

    private Usuario user;

    public Usuario getUser() {
        return user;
    }
    
    public void setUser(Usuario user) {
        this.user = user;
    }

    @Override
    public String execute() throws Exception {

        if (CadastrarNovo()) {
            return "success";
        } else {
            super.addFieldError("user.login", "Usuário não pode ser cadastrado!");
            return "error";
        }
    }

    public void validate() {
        if (getUser().getNome() == null || getUser().getNome().isEmpty()) {
            super.addFieldError("user.nome", "O nome deve ser informado!");
        }
        if (getUser().getLogin() == null || getUser().getLogin().isEmpty()) {
            super.addFieldError("user.login", "Login deve ser informado!");
        }
        if (getUser().getSenha() == null || getUser().getSenha().isEmpty()) {
            super.addFieldError("user.senha", "Senha deve ser informado!");
        }
        if (getUser().getEmail() == null || getUser().getEmail().isEmpty()) {
            super.addFieldError("user.email", "Email deve ser informado!");
        }
        if (getUser().getSexo() == null || getUser().getSexo().isEmpty()) {
            super.addFieldError("user.sexo", "Sexo deve ser informado!");
        }
    }

    public boolean CadastrarNovo() {

        try {
            System.out.println("CadastrarNovo");
            UsuarioDAO userDAO = new UsuarioDAO();
            userDAO.create(user);
            return true;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
