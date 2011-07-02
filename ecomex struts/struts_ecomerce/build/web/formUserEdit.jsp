<%-- 
    Document   : index
    Created on : 14/03/2011, 22:14:25
    Author     : lab210
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>


<!doctype html>
<html>

    <head>
        <script type="text/javascript">
            function validaNum(){
                if(event.keyCode < 48 || event.keyCode > 57){
                    event.returnValue = false;
                }
            }
        </script>
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
                <h3 align="center"> Atualização de Cadastro</h3>

                <form method="POST" action="AtualizaUserAction">
                    <fieldset class="formFieldSet">
                        <legend> Informe os dados abaixo</legend>
                            

                            <div>
                                <label class="formLabel">Senha <span style="color:red"><b>*</b></span></label>
                                <br />
                                <input class="formInput" type="password" name="user.senha"
                                       value="<s:property value="user.senha"/>"  maxlength="8" />
                            </div>
                            <div>
                                <label class="formLabel">E-mail <span style="color:red"><b>*</b></span></label>
                                <br />
                                <input class="formInput" type="text" name="user.email" value="<s:property value="user.email"/>" maxlength="45"/>
                            </div>
                            <div>
                                <label class="formLabel">Telefone <span style="color:red">(somente números)</span></label>
                                <br />
                                <input class="formInput" type="text" name="user.tel" onkeypress="validaNum();"
                                       value="<s:property value="user.tel"/>" maxlength="15"/>
                            </div>
                            <div>
                                <label class="formLabel">Endereco</label>
                                <br />
                                <input class="formInput" type="text" name="user.endereco"
                                       value="<s:property value="user.endereco"/>" maxlength="45" />
                            </div>

                            <div>
                                <input type="submit" value=" Atualizar meus dados " name="btcadastrar" class="formButton"/>
                            </div>
                            <br />
                            <br />
                            <center>
                                <div id="alerta" style="">
                                    <font face="tahoma" color="#FF0000">
                                        <b>
                                            <s:fielderror fieldName="user.user" />
                                            <s:fielderror fieldName="user.login" />
                                            <s:fielderror fieldName="user.senha" />
                                            <s:fielderror fieldName="user.email" />
                                            <s:fielderror fieldName="user.sexo" />
                                        </b>
                                    </font>
                                </div>
                            </center>

                       
                    </fieldset>
                </form>

            </div>
            <!-- Area Rodape -->
            <%@include file="rodape.jsp"%>
        </div>
    </body>
</html>





