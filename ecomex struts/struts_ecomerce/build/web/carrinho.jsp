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
                <h3 align="center"> Meu Carrinho de Compras  </h3>

                <s:if test="%{produtos.isEmpty}">
                    <br /> <h3 align="center"> Nenhum produto cadastrado no seu Carrinho!</h3>
                </s:if>

                <s:else>


                    <table align="center"  border="1" style="width: 600px; background-color: lightgray; border: 2px solid black" >
                        <tr>
                            <td align="center" style="color:white; background-color: #2A567E">
                                <strong>Produto</strong>
                            </td>
                            <td align="center" style="color:white; background-color: #2A567E">
                                <strong>Descrição</strong>
                            </td>
                            <td align="center" style="color:white; background-color: #2A567E">
                                <strong>Valor</strong>
                            </td>
                            <td style="color:white; background-color: #2A567E">
                                
                            </td>
                        </tr>


                        <s:iterator value="produtos" status="stat">
                            <tr>
                                <td align="center" style="font: Verdana; font-size: 12px; font-weight: bold">${nome_prod}</td>
                                <td align="center" style="font: Verdana; font-size: 12px; font-weight: bold">${descricao}</td>
                                <td align="center" style="font: Verdana; font-size: 12px; font-weight: bold"> R$ ${preco}</td>
                                <td align="center">
                                    <a href="#">
                                        <img src="images/botoes/carrinho_remover.png" alt="excluir" title="excluir" width="20" height="20">
                                    </a>
                                    <a href="carrinhoExcluir.action?produto.cod_produto=<s:property value="produtos[#stat.index].cod_produto"/>"><span style="color: red;">Excluir</span></a>
                                </td>
                            </tr>
                        </s:iterator>

                        <tr>
                            <td colspan="4" align="right" style="background-color: lightsteelblue; font-weight: bold">
                                Total do pedido: R$ <s:property value="valor_itens"></s:property> Reais
                            </td>
                        </tr>
                    </table>

                </s:else>
                <br />
                <s:if test="%{!produtos.isEmpty}">
                    <a href="pedidoInserir" class="formButton" style="float: right; margin-right: 50px">Fechar pedido</a>
                </s:if>
                <a href="listaProdutosIndex" class="formButton" style="float: right; margin-right: 10px">Continue Comprando</a>
                <br />
                <br />
            </div>
            <!-- Area Rodape -->
            <%@include file="rodape.jsp"%>
        </div>
    </body>

</html>





