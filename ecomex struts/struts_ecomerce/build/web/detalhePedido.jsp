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
                <h3 align="center"> Detalhes do Pedido  </h3>

                <s:if test="%{produtos.isEmpty}">
                    <br /> <h3 align="center"> Nenhum produto cadastrado no seu Carrinho!</h3>
                </s:if>

                <s:else>


                    <table align="center" style="width: 600px; background-color: lightgray; border: 2px solid black" >
                        <tr>
                            <td>
                                Produto
                            </td>
                            <td>
                                Descrição
                            </td>
                            <td>
                                Valor
                            </td>
                        </tr>


                        <s:iterator value="produtos" status="stat">
                            <tr>
                                <td >${nome_prod}</td>
                                <td >${descricao}</td>
                                <td >${preco}</td>

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

                <h3 align="center"> Formas de Pagamento  </h3>

                <div style="margin-left: 50px;">
                    <table>
                        <tr>
                            <td><input type="radio" name="payment"></td>
                            <td><img src="images/payments/boleto.png" /></td>
                            <td>Boleto Bancário 15 % de Desconto </td>

                        </tr>
                        <tr>
                            <td><input type="radio" name="payment"></td>
                            <td><img src="images/payments/visa.gif" /></td>
                            <td>Visa </td>

                        </tr>
                        <tr>
                            <td><input type="radio" name="payment"></td>
                            <td><img src="images/payments/mastercard.gif" /></td>
                            <td>Master Card </td>

                        </tr>
                        <tr>
                            <td><input type="radio" name="payment"></td>
                            <td><img src="images/payments/amex.gif" /></td>
                            <td>Amex</td>

                        </tr>
                        <tr>
                            <td><input type="radio" name="payment"></td>
                            <td><img src="images/payments/hipercard.gif" /></td>
                            <td> Hipercard </td>

                        </tr>
                        <tr>
                            <td><input type="radio" name="payment"></td>
                            <td><img src="images/payments/diners.gif" /></td>
                            <td>Diners</td>

                        </tr>
                    </table>

                </div>


                <br />
                <s:if test="%{!produtos.isEmpty}">
                    <a href="Carrinho" class="formButton" style="float: right; margin-right: 50px">Voltar para o Carrinho</a>
                </s:if>
                <a href="pedidoInserir" class="formButton" style="float: right; margin-right: 10px">Confirmar Compra</a>
                <br />
                <br />

                <p></p>
            </div>
            <!-- Area Rodape -->
            <%@include file="rodape.jsp"%>
        </div>
    </body>

</html>





