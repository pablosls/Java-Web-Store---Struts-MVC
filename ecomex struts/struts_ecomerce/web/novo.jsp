<%-- 
    Document   : novo
    Created on : 21/03/2011, 19:48:59
    Author     : lab210
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<%@include file="cabecalho.jsp" %>

<form action="" method="post">

    <center>

        <fieldset style="width:450px" >
            <legend>
                <h3> Novo Contato </h3>
            </legend>
            <center>
                <table border="0" style="width:400px">

                    <tr>
                        <td>Nome</td>
                        <td align="left">
                            <input type="text" size="40">
                        </td>
                    </tr>
                    <tr>
                        <td>Sobrenome</td>
                        <td align="left">
                            <input type="text" size="40">
                        </td>
                    </tr>
                    <tr>
                        <td>Sexo</td>
                        <td align="left">
                            <input type="radio" name="sexo" value="femino"/> Feminino
                            <input type="radio" name="sexo" value="masculino"/> Masculino
                        </td>
                    </tr>
                    <tr>
                        <td>Estado</td>
                        <td align="left">
                            <select style="width: 270px">
                                <option> Selecione </option>
                                <option> São Paulo  </option>
                                <option> São Paulo  </option>
                                <option> São Paulo </option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td align="left">
                            <input type="text" size="40">
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td align="left" >

                            <table style="margin-left: 60px">
                                <tr>
                                    <td> 
                                        <input type="submit" size="15" value="Cadastrar" name="btncadastrar"> 
                                    </td>
                                    <td> 
                                        <input type="reset" size="15" value ="Limpar">
                                    </td>
                                </tr>

                            </table>


                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 20px"> </td>
                    </tr>
                </table>
            </center>
        </fieldset>
    </center
</form>

<%@include file="rodape.jsp" %>

