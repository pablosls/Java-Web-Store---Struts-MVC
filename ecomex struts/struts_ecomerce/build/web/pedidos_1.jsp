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
                    <h3>Meus Pedidos</h3>
                </div>
                <!-- Area Rodape -->
                <%@include file="rodape.jsp"%>

            </div>

        </div>
    </body>

</html>





