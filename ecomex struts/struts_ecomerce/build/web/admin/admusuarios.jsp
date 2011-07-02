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
        <div id="geral">
            <div id="content">
                <!-- Area do Topo -->
                <%@include file="cabecalho.jsp"%>
                <!-- Area Principal -->
                <div style="background-color: white; width: 880px; height: 900px">
                    <h4 align ="center">Gerenciamento de Usuarios</h4>
                    <center>
                        <form>

                            <table align="center" style="width: 600px; background-color: lightgray; border: 2px solid black" >

                                <tr style=" background-color: lightblue; font-size: 15px">
                                    <td>
                                        Login
                                    </td>
                                    <td>
                                        Email
                                    </td>
                                    <td>
                                        Status
                                    </td>
                                    <td>
                                        Data Cadastro 
                                    </td>
                                    <td>
                                         ----- 
                                    </td>
                                    <td>
                                         ----- 
                                    </td>

                                </tr>
                                <tr>
                                    <td>
                                        Ana Paula
                                    </td>
                                    <td>
                                        ana@gmail.com
                                    </td>
                                    <td>
                                        Ativo
                                    </td>
                                    <td>
                                        01/05/2011
                                    </td>
                                    <td>
                                         <a href="confirmaexcUser.jsp" style="font-size: 18px; color: blue">Excluir</a>
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Alterar</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Pablo
                                    </td>
                                    <td>
                                        pablo@msn.com
                                    </td>
                                    <td>
                                        BLOQUEADO
                                    </td>
                                    <td>
                                        03/06/2011
                                    </td>
                                    <td>
                                         <a href="confirmaexcUser.jsp" style="font-size: 18px; color: blue">Excluir</a>
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Alterar</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Pablo
                                    </td>
                                    <td>
                                        pablo@msn.com
                                    </td>
                                    <td>
                                        BLOQUEADO
                                    </td>
                                    <td>
                                        03/06/2011
                                    </td>
                                    <td>
                                         <a href="confirmaexcUser.jsp" style="font-size: 18px; color: blue">Excluir</a>
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Alterar</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Pablo
                                    </td>
                                    <td>
                                        pablo@msn.com
                                    </td>
                                    <td>
                                        BLOQUEADO
                                    </td>
                                    <td>
                                        03/06/2011
                                    </td>
                                    <td>
                                         <a href="confirmaexcUser.jsp" style="font-size: 18px; color: blue">Excluir</a>
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Alterar</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Pablo
                                    </td>
                                    <td>
                                        pablo@msn.com
                                    </td>
                                    <td>
                                        BLOQUEADO
                                    </td>
                                    <td>
                                        03/06/2011
                                    </td>
                                    <td>
                                        <a href="confirmaexcUser.jsp" style="font-size: 18px; color: blue">Excluir</a>
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Alterar</a>
                                    </td>
                                </tr>


                            </table>

                             <a href="../cadUser.jsp" style="font-size: 25px; color: blue">Cadastrar novo Usuario</a>


                        </form>

                    </center>

                </div>
                <!-- Area Rodape -->
                <%@include file="rodape.jsp"%>

            </div>

        </div>
    </body>

</html>
