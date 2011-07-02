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
                <div style="width: 880px; background-color: white ; height: 500px">

                    <form>
                        <center>
                             </br>
                            <h3> Confirma exclusao do usuario ? </h3>
                            </br>
                             </br>
                             
                             <a href="respexcUser.jsp"> Confirmar </a>
                             </br>
                             <a href="admusuarios.jsp"> Cancelar </a>
                             </br>
                             


                        </center>
                    </form>

                </div>
                <!-- Area Rodape -->
                <%@include file="rodape.jsp"%>

            </div>

        </div>
    </body>

</html>





