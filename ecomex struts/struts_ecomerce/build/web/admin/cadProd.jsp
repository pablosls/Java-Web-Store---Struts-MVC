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
        <title> Projeto comercio eletronico </title>
        <link REL="stylesheet" HREF="css.css" TYPE="text/css">
    </head>

    <body>
        <div id="geral">

            <!-- Area do Topo -->
            <%@include file="cabecalho.jsp"%>
            <!-- Area Principal -->
            <div style="margin-left: 300px">



                <p> Cadastro de Produtos</p>
                <form action="cadastraProdutoAction" method="post">
                    <div>

                        <span style="width: 400px;"> Nome</span>
                        <div>
                            <input type="text" name="produto.nome_prod"
                                   value="" size="35"/>
                        </div>
                    </div>
                    <div>
                        <label for="produto.descricao">Descricao</label>
                        <div>
                            <input type="text" name="produto.descricao"
                                   value="" size="35"/>
                        </div>
                    </div>
                    <div>
                        <label for="produto.preco">Preço</label>
                        <div>
                            <input type="text" name="produto.preco"
                                   value="" size="35"/>
                        </div>
                    </div>

                    <div>
                        <label for="produto.url_img">Url</label>
                        <div>
                            <input type="text" name="produto.url_img"
                                   value="" size="35"/>
                        </div>
                    </div>
                    <div>
                        <label for="produto.categoria.cod_cat">Categoria</label>
                        <div>
                            <select name="produto.categoria.cod_cat">
                                <option value="1">Eletronicos</option>
                                <option value="2">Informatica</option>
                                <option value="3">Celulares</option>
                                <option value="6">Livros</option>
                                <option value="7">Localizadores</option>
                                <option value="8">Televisores</option>
                            </select>
                        </div>
                    </div>
                    <br />
                    <input type="submit" value="Cadastrar" name="btcadastrar"/>
                </form>


                <center>
                    <div id="alerta" style="">
                        <font face="tahoma" color="#FF0000">
                            <b>
                                <s:fielderror fieldName="produto.nome_prod" />
                                <s:fielderror fieldName="produto.descricao" />
                                <s:fielderror fieldName="produto.preco" />
                                <s:fielderror fieldName="produto.url_img" />
                                <s:fielderror fieldName="produto.categoria.cod_cat" />
                            </b>
                        </font>
                    </div>
                </center>



            </div>
        </div>
        <!-- Area Rodape -->
        <%@include file="rodape.jsp"%>

    </body>

</html>
