<%-- 
    Document   : index
    Created on : 4 de out de 2020, 15:00:23
    Author     : richa
--%>

<%@page import="aula.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Prova POO</title>
         <%@include file="WEB-INF/jspf/menu.jspf" %>
    </head>
    <body>
        <h1>Avaliação POO</h1>
        <h1>Richard Barbosa dos Santos Silva</h1>
        <h1>RA:	1290481912031</h1>
    </body>
    <table border="1" >
        <tr>
            <th>Indice</th>
            <th>Disciplina</th>
            <th>Ementa</th>
            <th>Ciclo</th>
        </tr>
        <%for(int i = 0; i < Disciplina.getList().size(); i++){%>
        <tr>
            <td><%=i%></td>
            <%Disciplina d = Disciplina.getList().get(i); %>
            <td><%=d.getNome() %></td>
            <td><%=d.getEmenta() %></td>
            <td><%=d.getCiclo() %></td>
        </tr>
        <%}%>
    </table>
</html>
