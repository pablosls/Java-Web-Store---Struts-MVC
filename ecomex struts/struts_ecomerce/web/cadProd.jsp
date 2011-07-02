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
                 <div>
                    <h3 align ="center">Cadastro de Produtos</h3>
                </div>
                <!-- Area Rodape -->
                <%@include file="rodape.jsp"%>

            </div>

                
                 

                    <form>

                        <table border="0" align="center">        
                            <tbody>
                                <tr>
                                    <td>Nome </td>
                                    <td><input type="text" name="nome" 
                                               value="" size="35"style="border:1px solid black" /></td>
                                </tr>
                                <tr>
                                    <td>Descricao</td>
                                    <td><input type="text" name="sobrenome" 
                                               value="" size="25" style="border:1px solid black"/></td>
                                </tr>
                                <tr>
                                    <td>Valor</td>
                                    <td><input type="text" name="telefone" 
                                               value="" size="25" style="border:1px solid black"/></td>
                                </tr>
                                <tr>
                                    <td>Foto</td>
                                    <td><input type="text" name="&nbsp;" 
                                               value="" size="25" style="border:1px solid black"/></td>
                                         <td align="center"><input type="submit" value="Localizar..." name="btcadastrar"style="border:1px solid black" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Categoria</td>
                                    <td><select name="estado">
                                            <option value="RJ">Eletronicos</option>
                                            <option value="RS">Informatica</option>
                                            <option value="SP">Livros</option>
                                            <option value="RJ">Televisores</option>
                                            <option value="RS">Celulares</option>
                                           
                                        </select></td>
                                </tr>
                               


                                
                               

                                <tr >

                                    <td> </td>
                                    <td> </td>
                                </tr>


                                <tr>
                                    <td align="center"><input type="submit" value="cadastrar" name="btcadastrar"style="border:1px solid black" />
                                    </td>
                                    <td align="center"><input type="reset" value="redefinir" name="btredefinir" style="border:1px solid black"/></td>
                                </tr>

                            </tbody>
                        </table>
                    </form>
        </div>
    </body>

</html>





