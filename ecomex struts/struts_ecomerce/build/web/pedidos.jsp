<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <title> Projeto comercio eletronico </title>
        <link REL="stylesheet" HREF="css.css" TYPE="text/css">
    </head>
    <body>
        <div class="geral">
            <!-- Area do Topo -->
            <%@include file="cabecalho.jsp"%>
            <!-- Menu Lateral-->
            <%@include file="menu_esquerda.jsp" %>
            <!-- Area Principal -->
            <div class="content">
                <h3 align="center">Andamento dos Meus Pedidos</h3>
                <table align="center" style="width: 600px; background-color: lightgray; border: 2px solid black" >
                    <tr>
                        <td>
                            Numero do Pedido
                        </td>
                        <td>
                            Data
                        </td>
                        <td>
                            Valor
                        </td>
                        <td>
                             Status
                        </td>
                    </tr>
                    <tr>
                        <td>
                            0000001
                        </td>
                        <td>
                            01/01/2011
                        </td>
                        <td>
                            R$ 3500 REAIS
                        </td>
                        <td>
                            Finalizado
                        </td>
                    </tr>
                    <tr>
                        <td>
                            0000002
                        </td>
                        <td>
                            01/01/2011
                        </td>
                        <td>
                            R$ 800 REAIS
                        </td>
                        <td>
                            Andamento
                        </td>
                    </tr>
                    <tr>
                        <td>
                            0000002
                        </td>
                        <td>
                            01/01/2011
                        </td>
                        <td>
                            R$ 800 REAIS
                        </td>
                        <td>
                            Andamento
                        </td>
                    </tr>
                    <tr>
                        <td>
                            0000002
                        </td>
                        <td>
                            01/01/2011
                        </td>
                        <td>
                            R$ 800 REAIS
                        </td>
                        <td>
                            Andamento
                        </td>
                    </tr>
                    <tr>
                        <td>
                            0000002
                        </td>
                        <td>
                            01/01/2011
                        </td>
                        <td>
                            R$ 800 REAIS
                        </td>
                        <td>
                            Andamento
                        </td>
                    </tr>
                    <tr>
                        <td>
                            0000002
                        </td>
                        <td>
                            01/01/2011
                        </td>
                        <td>
                            R$ 800 REAIS
                        </td>
                        <td>
                            Andamento
                        </td>
                    </tr>
                    <tr>
                        <td>
                            0000002
                        </td>
                        <td>
                            01/01/2011
                        </td>
                        <td>
                            R$ 800 REAIS
                        </td>
                        <td>
                            Andamento
                        </td>
                    </tr>
                </table>
                <br />
            </div>
            <!-- Area Rodape -->
            <%@include file="rodape.jsp"%>
        </div>
    </body>
</html>





