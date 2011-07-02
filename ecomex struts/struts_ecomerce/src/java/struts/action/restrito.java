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
public class restrito extends ActionSupport{
    //Objeto Session

    Map<String, Object> session = ActionContext.getContext().getSession();

    @Override
    public String execute() throws Exception {

        System.out.println("chamando execute");
        Usuario userLogado = (Usuario)session.get("SESSION_USER");

        if(userLogado == null)
        {
            System.out.println("Retornando erro");
            return ERROR;
        }
        System.out.println("Retornando success");
        return SUCCESS;

    }


}
