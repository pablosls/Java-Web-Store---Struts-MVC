<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
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
                    <br />
                    <br />
                    <br />
                    <h3 align="center">
                        <div class="solid-green"> Atualizado com sucesso!
                        </div>
                    </h3>
                </div>
                <!-- Area Rodape -->
                <%@include file="rodape.jsp"%>
            </div>
    </body>
</html>





