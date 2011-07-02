<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
                <h3 align="center"> Meus pedidos  </h3>

                <s:if test="%{pedidos.isEmpty}">
                    <br /> <h3 align="center"> Nenhum produto cadastrado no seu Carrinho!</h3>
                </s:if>

                <s:else>

                    <table align="center"  border="1" style="width: 600px; background-color: lightgray; border: 2px solid black" >
                        <tr>
                            <td align="center" style="color:white; background-color: #2A567E">
                                <strong>Número do pedido</strong>
                            </td>
                            <td align="center" style="color:white; background-color: #2A567E">
                                <strong>Data</strong>
                            </td>
                            <td align="center" style="color:white; background-color: #2A567E">
                                <strong>Valor</strong>
                            </td>
                            <td style="color:white; background-color: #2A567E">
                                
                            </td>
                        </tr>


                        <s:iterator value="pedidos" status="stat">
                            <tr>
                                <td align="center" style="font: Verdana; font-size: 12px; font-weight: bold">${num_pedido}</td>
                                <td align="center" style="font: Verdana; font-size: 12px; font-weight: bold">${data}</td>
                                <td align="center" style="font: Verdana; font-size: 12px; font-weight: bold">R$ ${valor}</td>
                                <td align="center">
                                    <a href="#">
                                        <img src="images/botoes/carrinho_remover.png" alt="excluir" title="excluir" width="20" height="20">
                                    </a>
                                    <a href="visualizaDetalhePedido.action?pedido.num_pedido=<s:property value="pedidos[#stat.index].num_pedido"/>"><span style="color: #0033cc;">Detalhes</span></a>
                                </td>
                            </tr>
                        </s:iterator>

                        <tr>
                            <td colspan="4" align="right" style="background-color: lightsteelblue; font-weight: bold">
                                Total de <s:property value="pedidos.size()"></s:property> Pedidos
                            </td>
                        </tr>
                    </table>

                </s:else>
                <br />
                <a href="listaProdutosIndex" class="formButton" style="float: right; margin-right: 50px">Continue Comprando</a>
                <br style="clear: both"/>
                <br style="clear: both"/>
            </div>
            <!-- Area Rodape -->
            <%@include file="rodape.jsp"%>
        </div>
    </body>

</html>





