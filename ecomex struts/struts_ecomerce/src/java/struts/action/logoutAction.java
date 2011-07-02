/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package struts.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;

/**
 *
 * @author Pablo
 */
public class logoutAction extends ActionSupport{
    
    Map<String, Object> session = ActionContext.getContext().getSession();

    @Override
    public String execute() throws Exception {
         session.clear();
        return SUCCESS;
    }


}
