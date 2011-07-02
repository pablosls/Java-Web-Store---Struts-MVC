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
                <h3 align="center"> Detalhes do pedido:  <s:property value="pedido.num_pedido"></s:property>  </h3>

                <s:if test="%{produtos.isEmpty}">
                    <br /> <h3 align="center"> Nenhum produto para o pedido solicitado !</h3>
                </s:if>

                <s:else>

                    <table align="center"  border="1" style="width: 600px; background-color: lightgray; border: 2px solid black" >
                        <tr>
                            <td align="center" style="color:white; background-color: #2A567E">
                                <strong>produto</strong>
                            </td>
                            <td align="center" style="color:white; background-color: #2A567E">
                                <strong>Valor</strong>
                            </td>
                        </tr>


                        <s:iterator value="produtos" status="stat">
                            <tr>
                                <td align="center" style="font: Verdana; font-size: 12px; font-weight: bold">${nome_prod}</td>

                                <td align="center" style="font: Verdana; font-size: 12px; font-weight: bold">R$ ${preco}</td>
                            </tr>
                        </s:iterator>

                    </table>

                </s:else>
                <br />
                <a href="visualizaPedidos" class="formButton" style="float: right; margin-right: 50px">Retornar aos meus pedidos</a>
                <a href="listaProdutosIndex" class="formButton" style="float: right; margin-right: 10px">Continue Comprando</a>
                <br style="clear: both"/>
                <br style="clear: both"/>
            </div>
            <!-- Area Rodape -->
            <%@include file="rodape.jsp"%>
        </div>
    </body>

</html>





