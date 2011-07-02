<%-- 
    Document   : resultado
    Created on : 21/03/2011, 19:49:08
    Author     : lab210
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<%@page import="modelo.Contato" %>
<%@page import="java.util.*" %>

<%@include file="cabecalho.jsp" %>

<%! ArrayList<Contato> lista = new ArrayList<Contato>(0);%>

<%if (request.getParameter("btncadastrar") == null) {
        if (!lista.isEmpty()) {
        }
    }
%>

<table>
    <tr>
        <th>Nome</th>
        <th>Sobrenome</th>
        <th>Sexo</th>
        <th>Estado</th>
        <th>Email</th>
    </tr>
    <% for (Contato c : lista) {%>
    <tr>
        <td>
            
        </td>
        
        <td></td>
        <td></td>
        <td></td>
        <td></td>

    </tr>


</table>

<%@include file="rodape.jsp" %>