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
                    <h4 align ="center">Gerenciamento de Categorias</h4>
                    <center>
                        <form>



                            <h3> Categorias Cadastradas </h3>
                            <table align="center" style="width: 600px; background-color: lightgray; border: 2px solid black" >

                                <tr style=" background-color: lightgrey; font-size: 15px">
                                    <td>
                                       Codigo da Categoria
                                    </td>
                                    <td>
                                        Nome da Categoria
                                    </td>
                                    <td>
                                        Descricao Categoria
                                    </td>
                                    <td>
                                          ------
                                    </td>
                                    <td>
                                          ------
                                    </td>
                                </tr>
                                <tr style=" background-color: lightblue; font-size: 15px">
                                    <td>
                                        0001
                                    </td>
                                    <td>
                                        Eletronicos
                                    </td>
                                    <td>
                                        Produtos eletronicos em geral
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Excluir</a>
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Alterar</a>
                                    </td>
                                </tr>
                                <tr style=" background-color: lightblue; font-size: 15px">
                                    <td>
                                        0002
                                    </td>
                                    <td>
                                        Informatica
                                    </td>
                                    <td>
                                        Produtos Informatica em geral
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Excluir</a>
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Alterar</a>
                                    </td>
                                </tr>
                                <tr style=" background-color: lightblue; font-size: 15px">
                                    <td>
                                        0003
                                    </td>
                                    <td>
                                        Livros
                                    </td>
                                    <td>
                                        Produtos Livros em geral
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Excluir</a>
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Alterar</a>
                                    </td>
                                </tr>
                                <tr style=" background-color: lightblue; font-size: 15px">
                                    <td>
                                        0004
                                    </td>
                                    <td>
                                        Televisores
                                    </td>
                                    <td>
                                        Produtos Televisores em geral
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Excluir</a>
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Alterar</a>
                                    </td>
                                </tr>
                                <tr style=" background-color: lightblue; font-size: 15px">
                                    <td>
                                        0005
                                    </td>
                                    <td>
                                        Celulares
                                    </td>
                                    <td>
                                        Produtos Celulares em geral
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Excluir</a>
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Alterar</a>
                                    </td>
                                </tr>
                                <tr style=" background-color: lightblue; font-size: 15px">
                                    <td>
                                        0006
                                    </td>
                                    <td>
                                        Eletronicos
                                    </td>
                                    <td>
                                        Produtos eletronicos em geral
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Excluir</a>
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Alterar</a>
                                    </td>
                                </tr>
                                <tr style=" background-color: lightblue; font-size: 15px">
                                    <td>
                                        0007
                                    </td>
                                    <td>
                                        Eletronicos
                                    </td>
                                    <td>
                                        Produtos eletronicos em geral
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Excluir</a>
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Alterar</a>
                                    </td>
                                </tr>
                                <tr style=" background-color: lightblue; font-size: 15px">
                                    <td>
                                        0008
                                    </td>
                                    <td>
                                        Eletronicos
                                    </td>
                                    <td>
                                        Produtos eletronicos em geral
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Excluir</a>
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Alterar</a>
                                    </td>
                                </tr>
                                <tr style=" background-color: lightblue; font-size: 15px">
                                    <td>
                                        0009
                                    </td>
                                    <td>
                                        Eletronicos
                                    </td>
                                    <td>
                                        Produtos eletronicos em geral
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Excluir</a>
                                    </td>
                                    <td>
                                         <a href="#" style="font-size: 18px; color: blue">Alterar</a>
                                    </td>
                                </tr>



                            </table>


                             <a href="cadProd.jsp" style="font-size: 25px; color: blue">Cadastrar nova categoria</a>


                        </form>
                    </center>
                </div>

                <!-- Area Rodape -->
                <%@include file="rodape.jsp"%>

            </div>
            <!-- Area Rodape -->
            <%@include file="rodape.jsp"%>

        </div>

    </div>
</body>

</html>
