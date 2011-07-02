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
                <!-- Menu Lateral-->
                <%@include file="menu_esquerda.jsp" %>
                <!-- Area Principal -->
                <div style="background-color: white; width: 880px; height: 900px">
                    <h3 align="center">Meus Pedidos</h3>

                    <table align="center" style="width: 600px; background-color: lightgray; border: 2px solid black" >

                        <tr>
                            <td>
                                Produto
                            </td>
                            <td>
                                Quantidade
                            </td>
                            <td>
                                Valor
                            </td>
                            <td>
                                 
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Celular
                            </td>
                            <td>
                                1
                            </td>
                            <td>
                                RS: 9000 REAIS
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Televisao
                            </td>
                            <td>
                                1
                            </td>
                            <td>
                                RS: 700 REAIS
                            </td>
                             <td>
                                 <input type="button" value="Excluir">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                GPS PORTATIL
                            </td>
                            <td>
                                1
                            </td>
                            <td>
                                RS: 400 REAIS
                            </td>
                            <td>
                                 <input type="button" value="Excluir">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                VIDEO GAME
                            </td>
                            <td>
                                1
                            </td>
                            <td>
                                RS: 700 REAIS
                            </td>
                            <td>
                                 <input type="button" value="Excluir">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" align="right" style="background-color: lightsteelblue">
                                Valor da compra: R$ 3500 REIAS
                            </td>
                        </tr>
                    </table>
                    
                    </br>
                    
                    <a href="#"> <h3>Finalizar compra Pedido</h3></a>
                    


                </div>
                <!-- Area Rodape -->
                <%@include file="rodape.jsp"%>

            </div>

        </div>
    </body>

</html>





