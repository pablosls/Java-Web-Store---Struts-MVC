<%-- 
    Document   : index
    Created on : 14/03/2011, 22:14:25
    Author     : lab210
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>


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
                <h3 align="center">Efetuar Login</h3>
                <form action="userLogin" method="post">
                    <fieldset class="formFieldSet">
                        <legend>Informe os dados abaixo para efetuar login</legend>
                        <div>
                            <label class="formLabel" for="login">Login</label>
                            <br />
                            <input class="formInput" type="text" name="userLogin.login" value="teste" class="text" size="20" maxlength="32" id="userLogin.login">
                        </div>
                        <div>
                            <label class="formLabel" for="senha">Senha</label>
                            <br />
                            <input class="formInput" type="password" name="userLogin.senha" value="123456" class="text" size="20" maxlength="32" id="userLogin.senha">
                        </div>
                        <div>
                            <input type="submit" name="fullName" value="Efetuar Login" class="formButton">
                            <a href="cadUser.jsp" class="formButton"> Novo Cadastro </a>
                        </div>
                        <br />
                    </fieldset>
                </form>


                <div id="alerta" style="margin-left: 80px">
                    <font face="tahoma" color="#FF0000">
                        <b>
                            <s:fielderror fieldName="userLogin.login" />
                            <s:fielderror fieldName="userLogin.senha" />
                        </b>
                    </font>
                </div>


            </div>
            <!-- Area Rodape -->
            <%@include file="rodape.jsp"%>
        </div>
    </body>
</html>





