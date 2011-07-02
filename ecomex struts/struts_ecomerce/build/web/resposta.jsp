<%-- 
    Document   : resposta
    Created on : 14/03/2011, 22:33:06
    Author     : lab210
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <div id="geral">
            <div id="topo">

            </div>

            <div id="menu">

                <ul>
                    <li><a href="#">Categoria 1</a></li>
                    <li><a href="#">Categoria 1</a></li>
                    <li><a href="#">Categoria 1</a></li>
                    <li><a href="#">Categoria 1</a></li>
                    <li><a href="#">Categoria 1</a></li>


                </ul>

            </div>
            <div id="navegacao">
                <ul>
                    <li><a href=""> Home </a></li>
                    <li><a href=""> Home </a></li>
                    <li><a href=""> Home </a></li>
                    <li><a href=""> Home </a></li>
                </ul>
            </div>

            <div id="principal">

            </div>
            <div id="destaque_lateral">

            </div>
            <div id="rodape">


            </div>


        </div>
        Valor campo 1:

        </br>


        <%=request.getParameter("campo1")%>
        </br>
        Valor campo 2:
        </br>
        <%=request.getParameter("campo2")%>


    </body>
</html>
