<%-- 
    Document   : disciplinas
    Created on : 4 de out de 2020, 15:00:39
    Author     : richa
--%>

<%@page import="aula.Disciplina"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Disciplina> disciplina = (ArrayList)application.getAttribute("disciplina");
    if(disciplina == null){
        disciplina = Disciplina.getList();
        application.setAttribute("disciplina", disciplina);
    
    }
    String ExceptionMessage = null;
    if(request.getParameter("def") != null){
        try{
        int i = Integer.parseInt(request.getParameter("i"));
        float nota = Float.parseFloat(request.getParameter("n"));
        disciplina.get(i).setNota(nota);
        response.sendRedirect(request.getRequestURI());
        }catch(Exception ex){
           ExceptionMessage = ex.getLocalizedMessage();
        }
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prova POO</title>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
    </head>
    <body>
        <h1>Avaliação POO</h1>
        <%if(ExceptionMessage != null){%>
        <div style="color: red"> Erro ao exibir nota: <%=ExceptionMessage%></div>
        <%}%>
        <table border="1" >
        <tr>
            <th>Indice</th>
            <th>Disciplina</th>
            <th>Ementa</th>
            <th>Ciclo</th>
            <th>nota</th>
            <th>Alterar nota</th>
        </tr>
        <%for(int i = 0; i < disciplina.size(); i++){%>
        <tr>
            <td><%=i%></td>
            <td><%=disciplina.get(i).getNome() %></td>
            <td><%=disciplina.get(i).getEmenta() %></td>
            <td><%=disciplina.get(i).getCiclo() %></td>
            <td><%=disciplina.get(i).getNota() %></td>
            <td>
                <form>
                    <input type="number" name="n" step="0.1" min="1" max="10">
                    <input type="hidden" name="i" value="<%= i %>">
                    <input type="submit" name="def" value="definir">
                </form>
            </td>
        </tr>
        <%}%>
    </table>
    </body>
</html>
