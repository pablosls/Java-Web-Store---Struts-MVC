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
public class LoginAction extends ActionSupport {

    Map<String, Object> session = ActionContext.getContext().getSession();
    private Usuario userLogin;

    public Usuario getUserLogin() {
        return userLogin;
    }

    public void setUserLogin(Usuario userLogin) {
        this.userLogin = userLogin;
    }

    @Override
    public String execute() throws Exception {

        session.clear();

        Usuario userValido;
        userValido = validaLogin();


        if (userValido != null) {
            ActionContext.getContext().getSession().put("SESSION_USER", userValido);
            if (userValido.getTipo_user() == 1) {
                return SUCCESS;
            } else {
                return "userAdmin";
            }
            
        } else {
            System.out.println("invalido");
            super.addFieldError("userLogin.login", "Login/Senha inválido");
            return ERROR;
        }
    }

    public void validate() {
        if (getUserLogin().getLogin() == null || getUserLogin().getLogin().isEmpty()) {
            super.addFieldError("userLogin.login", "O login deve ser informado!");
        }
        if (getUserLogin().getSenha() == null || getUserLogin().getSenha().isEmpty()) {
            super.addFieldError("userLogin.senha", "A senha deve ser informada!");
        }
    }

    public Usuario validaLogin() {
        try {
            System.out.println(userLogin.getLogin());
            System.out.println(userLogin.getSenha());

            System.out.println("Validando Usuario");
            Usuario userTemp;
            UsuarioDAO userDao = new UsuarioDAO();
            userTemp = userDao.readUserLoginPassWord(userLogin);
            if (userTemp == null) {
                return null;
            } else {
                return userTemp;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
