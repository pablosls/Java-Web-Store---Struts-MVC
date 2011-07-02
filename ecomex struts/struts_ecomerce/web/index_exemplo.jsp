<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="cabecalho.jsp" %>

<%@taglib uri="/struts-tags" prefix="s" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Controle de Produtos</title>
    </head>
    <body>
        <form method="POST" action="login">
            <font face="cambria">
                <table border="1" cellspacing="10" cellpadding="10" align="center">
                    <tbody>
                        <tr>
                            <td>Login:</td>
                            <td><input type="text" name="login.login" value="" size="25" /><BR>
                            </td>
                        </tr>

                        <tr>
                            <td>Senha:</td>
                            <td><input type="password" name="login.password" value="" size="25" />
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="2"><input type="reset" value="Limpar" name="btnLimpar" />
                                &nbsp;&nbsp;
                                <input type="submit" value="Entrar" name="btnEntrar" /></td>
                        </tr>


                    </tbody>
                </table>
            </font>
        </form>
        <center>
            <font face="tahoma" color="#FF0000">
                <b><s:fielderror fieldName="login.login" />
                    <s:fielderror fieldName="login.password" />
                    <s:fielderror fieldName="login.usuario" />
                </b>
            </font>
        </center>

    </body>
</html>
<%@include file="rodape.jsp" %>