/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package struts.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import modelo.Usuario;

/**
 *
 * @author Pablo
 */
public class UserEditAction extends ActionSupport{
    
    Map<String, Object> session = ActionContext.getContext().getSession();

    public Usuario user = new Usuario();

    public Usuario getUser() {
        return user;
    }

    public void setUser(Usuario user) {
        this.user = user;
    }



    @Override
    public String execute() throws Exception {

        user = (Usuario) session.get("SESSION_USER");
        return "success";
    }



}
