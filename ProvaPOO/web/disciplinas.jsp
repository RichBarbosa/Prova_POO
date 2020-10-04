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
        disciplina = new ArrayList();
        disciplina.add(new Disciplina("programação orientada a objetos", "Conceitos e evolução da tecnologia de orientação a objetos. Limitações e diferenças entre o paradigma da programação estruturada em relação à orientação a objetos. Conceito de objeto, classe, métodos, atributos, herança, polimorfismo, agregação, associação, dependência, encapsulamento, mensagem e suas respectivas notações na linguagem padrão de representação da orientação a objetos. Implementação de algoritmos orientado a objetos utilizando linguagens de programação. Aplicação e uso das estruturas fundamentais da orientação a objetos.", "4"));
        disciplina.add(new Disciplina("Banco de dados", "Conceitos de Base de Dados. Modelos conceituais de informações. Modelos de Dados: Relacional,  Redes e Hierárquicos. Modelagem de dados - conceitual, lógica e física. Teoria relacional: dependências funcionais e multivaloradas, formas normais. Restrições de integridade e de segurança em Banco de Dados Relacional. Sistemas Gerenciadores de Banco de Dados – objetivo e funções. Linguagens de declaração e de manipulação de dados.", "4"));
        disciplina.add(new Disciplina("Sistemas Operacionais 2", "Apresentação de um sistema operacional específico utilizado em ambiente corporativo. Requisitos de hardware para instalação do sistema. Processo de instalação, personalização, operação, administração e segurança sobre o sistema operacional focado.  Elaboração de projetos de seleção e implantação de um sistema operacional.", "4"));
        disciplina.add(new Disciplina("inglês", "Consolidação da compreensão e produção oral e escrita por meio da integração das habilidades lingüístico-comunicativas desenvolvidas na disciplina Inglês 3. Ênfase na oralidade, atendendo às especificidades acadêmico-profissionais da área e abordando aspectos sócio-culturais da língua inglesa.", "4"));
        disciplina.add(new Disciplina("metodologia da pesquisa cintifico-tecnologica", "Consolidação da compreensão e produção oral e escrita por meio da integração das habilidades lingüístico-comunicativas desenvolvidas na disciplina Inglês 3. Ênfase na oralidade, atendendo às especificidades acadêmico-profissionais da área e abordando aspectos sócio-culturais da língua inglesa.", "4"));
        disciplina.add(new Disciplina("engenharia de software 3", "Conceitos, evolução e importância de arquitetura de software. Padrões de Arquitetura. Padrões de Distribuição. Camadas no desenvolvimento de software. Tipos de Arquitetura de Software. Visões na arquitetura de software. Modelo de Análise e Projetos. Formas de representação. O processo de desenvolvimento. Mapeamento para implementação. Integração do sistema. Testes: planejamento e tipos. Manutenção. Documentação.", "4"));
        disciplina.add(new Disciplina("Linguagem de programação 4", "Comandos de linguagens usadas na construção e estruturação de sites para a Web, com páginas dinâmi­cas e interativas. Definição de layouts e formatação em geral. Adição de algorítmos usando laços, matrizes, datas, funções e condições. Introdução a Orientação a Objetos utilizando objetos, métodos e propriedades. Integração com Banco de Dados. Exercícios práticos com projeto de criação de sites.", "4"));
        application.setAttribute("disciplina", disciplina);
    
    }
    if(request.getParameter("def") != null){
        int i = Integer.parseInt(request.getParameter("i"));
        float nota = Float.parseFloat(request.getParameter("n"));
        Disciplina disc = disciplina.get(i);
        disc.setNota(nota);
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prova POO</title>
    </head>
    <body>
        <h1>Avaliação POO</h1>
        <table border="1" >
        <tr>
            <th>Indice</th>
            <th>Disciplina</th>
            <th>Ementa</th>
            <th>Ciclo</th>
        </tr>
        <%for(int i = 0; i < disciplina.size(); i++){%>
        <tr>
            <td><%=i%></td>
            <%Disciplina d = disciplina.get(i); %>
            <td><%=d.getNome() %></td>
            <td><%=d.getEmenta() %></td>
            <td><%=d.getCiclo() %></td>
            <td><%=d.getNota() %></td>
            <td>
                <form>
                    <input type="number" name="n">
                    <input type="hidden" name="i" value="<%= i %>">
                    <input type="submit" name="def" value="definir">
                </form>
            </td>
        </tr>
        <%}%>
    </table>
    </body>
</html>
