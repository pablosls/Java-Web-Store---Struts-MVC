<%-- 
    Document   : formulario
    Created on : 14/03/2011, 22:29:30
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
        <h1>Hello World!</h1>
        <form name="form1" action="resposta.jsp" method="get">
            campo1
             <input type="text" name="campo1">
            <br>
            campo2
             <input type="text" name="campo2">
            <br>
            <input type="submit" value="enviar">
            
        </form>
        
    </body>
</html>
/*<HEAD><TITLE>Leitura de campos de texto</TITLE>
</HEAD><BODY><H1>Leitura de campos de texto</H1>
    <FORM ACTION= "resposta.jsp" METHOD="POST">
        Entre com seu nome:<INPUT TYPE="TEXT" NAME="textnome"><BR>
        Entre com sua idade:<INPUT TYPE="TEXT" NAME="textidade"><BR><INPUT TYPE="SUBMIT" value="Enviar"></FORM>