/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import modelo.Usuario;

/**
 *
 * @author Pablo
 */
public class AutorizarAcessoInterceptor implements Interceptor {

    public void destroy() {
        
    }

    public void init() {
        
    }

    public String intercept(ActionInvocation ai) throws Exception {
        Usuario usuarioLogado = (Usuario) ai.getInvocationContext().getSession().get("SESSION_USER");

        System.out.println("Pegando sessao user");
        if (usuarioLogado == null) {
            System.out.println("Retornando global result nao logado");
            return "naoLogado";
        } else {
             System.out.println("Passou pelo interceptador");
            return ai.invoke();
        }

    }
}
