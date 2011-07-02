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
        <div class="geral">
            <!-- Area do Topo -->
            <%@include file="cabecalho.jsp"%>
            <!-- Menu Lateral-->
            <%@include file="menu_esquerda.jsp" %>
            <!-- Area Principal -->
            <div class="content">
                <h3 align ="center">Formulário de Contato</h3>
                <FORM ACTION= "" METHOD="POST">
                    <table border="1" align="center" >
                        <tr>
                            <td>Nome:</td>
                            <td></td>
                            <td> <INPUT TYPE="TEXT" NAME="textnome" style="border:1px solid black"/></td>

                        </tr>
                        <tr>
                            <td> Idade:</td>
                            <td></td>
                            <td> <INPUT TYPE="TEXT" NAME="textidade"style="border:1px solid black"/></td>
                        </tr>

                        <tr>
                            <td>Telefone:</td>
                            <td></td>
                            <td><INPUT TYPE="TEXT" NAME="texttel"style="border:1px solid black"/></td>

                        </tr>
                        <tr>
                            <td> Deixe sua mensagem aqui:</td>
                            <td></td>
                            <td>
                                <br />
                                <textarea name="teste" rows="8" cols="40"style="border:1px solid black">
                                </textarea>

                            </td>

                        </tr>

                        <tr>
                            <td></td>
                            <td></td>

                            <td><INPUT TYPE="SUBMIT" value="Enviar"/></td>
                        </tr>
                    </table>
                </FORM>
            </div>
            <!-- Area Rodape -->
            <%@include file="rodape.jsp"%>
        </div>
    </body>
</html>





