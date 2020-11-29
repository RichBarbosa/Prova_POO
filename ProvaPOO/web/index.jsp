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
        <div>Disciplinas matriculadas</div>
        <div><%= Disciplina.getList().size() %></div>
    </body>
   
</html>
