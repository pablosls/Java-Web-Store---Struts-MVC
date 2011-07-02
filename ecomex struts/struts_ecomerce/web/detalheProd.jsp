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
                <center>
                    <h3> Detalhes do Produto: GPS DIGITAL 4 em 1 </h3>
                    <br />
                    <h1> GPS Discovery Channel 4,3", 1.403 Cidades Mapeadas, 2 Milhões de POI´s </h1>
                    <img src="images/21786851_4.jpg" width="500" height="500" alt="21786851_4"/>
                    <h3 style="color: Blue; font-size: 20px">Preco do Produto </h3>
                    <br />
                    <h3 style="color: Red; font-size: 20px">R$ 300 REAIS </h3>
                    <br />
                    <a href="#"> <img src="images/icone_comprar.jpg" width="170" title="Clique para comprar !" height="41" alt="icone_comprar"/> </a>
                    <br />
                    <form action="AdicionaCarrinho" method="post">
                        <input type="hidden" name="produto.cod_produto" value="1"/>
                        <input type="submit" class="formButton" value="Adicionar no meu carrinho de compras">
                    </form>
                    <br />
                </center>
            </div>
            <!-- Area Rodape -->
            <%@include file="rodape.jsp"%>
        </div>
    </body>
</html>





