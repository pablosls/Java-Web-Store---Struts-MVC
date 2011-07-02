<%-- 
    Document   : index
    Created on : 14/03/2011, 22:14:25
    Author     : lab210
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html>
    <head>
        <title> :: GLOBAL COMÉRCIO :: </title>
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
                <h3 align="center">Produtos em destaque </h3>

                <s:if test="%{produtos.isEmpty}">
                   <br />
                   <h3>Nenhum produto foi encontrado!</h3>
                </s:if>

                <hr />
                <hr />
                <center>
                    <div style="width: 470px;">
                        <s:iterator value="produtos" status="stat">
                            <table align="center" style="height: 180px; width: 150px; margin-top: 15px; float: left">
                                <tr >
                                    <td align="center" > <img src="<s:property value="produtos[#stat.index].url_img"/>" width="120" height="120" alt="pq21607031"/>
                                        <br />
                                        <strong style="text-transform: uppercase; color: #2A567E">${nome_prod}</strong>
                                        <br />
                                        <b> Por </b> R$ ${preco}
                                        <br />
                                        <a href="detalheProd.jsp" class="compre_agora"></a>
                                        <a href="carrinhoAdicionar.action?produto.cod_produto=<s:property value="produtos[#stat.index].cod_produto"/>" class="compre_agora"> Compre Agora </a>
                                    </td>
                                </tr>
                            </table>
                        </s:iterator>
                    </div>
                    <div style="height: 30px; clear: both">
                    </div>
                </center>
                <br />
                <br />
            </div>
            <!-- Area Rodape -->
            <%@include file="rodape.jsp"%>
        </div>
    </body>
</html>





