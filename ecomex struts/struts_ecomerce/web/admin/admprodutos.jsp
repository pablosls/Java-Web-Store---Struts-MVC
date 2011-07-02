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
                    <h4 align ="center">Gerenciamento de Produtos</h4>
                    <center>
                             <a href="cadProd.jsp" style="font-size: 25px; color: blue">Incluir novo Produto</a>
                    </center>
                </div>
                <!-- Area Rodape -->
                <%@include file="rodape.jsp"%>
            </div>
        </div>
    </body>

</html>
