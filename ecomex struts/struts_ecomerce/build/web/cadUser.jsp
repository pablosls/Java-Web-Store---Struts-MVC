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
                <h3 align="center"> Cadastro de usuário</h3>

                <form method="POST" action="user">
                    <fieldset class="formFieldSet">
                        <legend> Informe os dados abaixo</legend>
                            <div>
                                <label class="formLabel">Nome</label>
                                <br />
                                <input class="formInput" type="text" name="user.nome"  maxlength="45"
                                       value="" />
                            </div>
                            <div>
                                <label class="formLabel">Login <span style="color:red"><b>*</b></span></label>
                                <br />
                                <input class="formInput" type="text" name="user.login"
                                       value=""  maxlength="15" />
                            </div>
                            <div>
                                <label class="formLabel">Senha <span style="color:red"><b>*</b></span></label>
                                <br />
                                <input class="formInput" type="password" name="user.senha"
                                       value=""  maxlength="8" />
                            </div>
                            <div>
                                <label class="formLabel">E-mail <span style="color:red"><b>*</b></span></label>
                                <br />
                                <input class="formInput" type="text" name="user.email" value="" maxlength="45"/>
                            </div>
                            <div>
                                <label class="formLabel">Telefone <span style="color:red">(somente números)</span></label>
                                <br />
                                <input class="formInput" type="text" name="user.tel" onkeypress="validaNum();"
                                       value="" maxlength="15"/>
                            </div>
                            <div>
                                <label class="formLabel">Sexo*</label>
                                <br />
                                <input type="radio" name="user.sexo" value="F" checked/>Feminino &nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="user.sexo" value="M" />Masculino
                            </div>
                            <div>
                                <label class="formLabel">Endereco</label>
                                <br />
                                <input class="formInput" type="text" name="user.endereco"
                                       value="" maxlength="45" />
                            </div>
                            <div>
                                <label class="formLabel">Estado</label>
                                <br />
                                <select class="formInput" name="user.estado">
                                    <option value="AC">	AC</option>
                                    <option value="AL">	AL</option>
                                    <option value="AP">	AP</option>
                                    <option value="AM">	AM</option>
                                    <option value="BA">	BA</option>
                                    <option value="CE">	CE</option>
                                    <option value="DF">	DF</option>
                                    <option value="ES">	ES</option>
                                    <option value="GO">	GO</option>
                                    <option value="MA">	MA</option>
                                    <option value="MT">	MT</option>
                                    <option value="MS">	MS</option>
                                    <option value="MG">	MG</option>
                                    <option value="PA">	PA</option>
                                    <option value="PB">	PB</option>
                                    <option value="PR">	PR</option>
                                    <option value="PE">	PE</option>
                                    <option value="PI">	PI</option>
                                    <option value="RJ">	RJ</option>
                                    <option value="RN">	RN</option>
                                    <option value="RS">	RS</option>
                                    <option value="RO">	RO</option>
                                    <option value="RR">	RR</option>
                                    <option value="SC">	SC</option>
                                    <option value="SP" selected>SP</option>
                                    <option value="SE">	SE</option>
                                    <option value="TO">	TO</option>
                                </select>
                            </div>
                            <div>
                                <label class="formLabel">Cidade</label>
                                <br />
                                <input class="formInput" type="text" name="user.cidade"
                                       value=""  maxlength="45">
                            </div>
                            <div>

                                <input type="submit" value=" Cadastrar " name="btcadastrar" class="formButton"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="reset" value=" Redefinir " name="btredefinir" class="formButton"/>
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





