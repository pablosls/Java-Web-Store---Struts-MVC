<%-- 
    Document   : index
    Created on : 14/03/2011, 22:14:25
    Author     : lab210
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!doctype html>
<html>

    <head>
        <title> Projeto comercio eletronico </title>
        <link REL="stylesheet" HREF="css.css" TYPE="text/css">
    </head>

    <body>
        <div id="geral" >
            <div id="content" >
                <!-- Area do Topo -->
                <%@include file="cabecalho.jsp"%>
                <!-- Menu Lateral-->
                <%@include file="menu_esquerda.jsp" %>
                <!-- Area Principal -->
                <div style="background-color: white; width: 880px; height: 900px">
                    <h4 align ="center">Tela do Administrador</h4>

                    <form>

                        <table border="0" align="center">        
                            <tbody>
                       


                                <tr>
                                    <td>Login</td>
                                    <td><input type="text" name="login" 
                                               value="" size="25" style="border:1px solid black"/></td>
                                </tr>
                                <tr>

                                    <td>Senha</td>
                                    <td><input type="text" name="senha" 
                                               value="" size="25" style="border:1px solid black"/></td>
                                </tr>

                                <tr >

                                    <td> </td>
                                    <td> </td>
                                </tr>


                                <tr>
                                    <td align="center"><input type="submit" value="entrar" name="btentrar"style="border:1px solid black" />
                                    </td>
                                   
                                </tr>

                            </tbody>
                        </table>
                    </form>

                </div>

                <!-- Area Rodape -->
                <%@include file="rodape.jsp"%>

            </div>

        </div>
    </body>

</html>





