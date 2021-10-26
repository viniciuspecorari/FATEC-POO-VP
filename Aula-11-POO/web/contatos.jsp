<%-- 
    Document   : Index
    Created on : 25 de out de 2021, 19:12:38
    Author     : Desenvolvedor
--%>

<%@page import="model.Data"%>
<%@page import="model.Contato"%>
<%@page import="model.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    String error = null;
    
    try {
        if (request.getParameter("form-add") != null) {
            String nome = request.getParameter("nome");
            String telefone = request.getParameter("telefone");
            int dia = Integer.parseInt(request.getParameter("nascimento.dia"));
            int mes = Integer.parseInt(request.getParameter("nascimento.mes"));
            int ano = Integer.parseInt(request.getParameter("nascimento.ano"));
            Contato c = new Contato(nome, telefone, new Data(dia, mes, ano));
            Base.getContatoList().add(c);
            response.sendRedirect(request.getRequestURI());
        } else if (request.getParameter("form-add") == null) {
            int index = Integer.parseInt(request.getParameter("index"));
            Base.getContatoList().remove(index);
            response.sendRedirect(request.getRequestURI());
        }
    } catch (Exception e) {
        error = e.getMessage();
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contatos  - JAVA OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>CONTATOS</h2>

        <form>
            <fieldset>
                <legend>Novo contato</legend>
                Nome: <br/> <input type="text" name="nome"/><br/>
                Telefone: <br/> <input type="text" name="telefone"/><br/>
                Data de nascimento:<br/> 
                <input type="number" step="1" name="nascimento.dia"/>/
                <input type="number" step="1" name="nascimento.mes"/>/
                <input type="number" step="1" name="nascimento.ano"/><br/><br/>
                <input type="submit" name="form-add"/><br>
            </fieldset>
        </form>

        <hr/>

        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Telefone</th>
                <th>Nascimento</th>
                <th>Remoção</th>
            </tr>

            <% for (Contato c : Base.getContatoList()) {%>
            <tr>
                <td><%= c.getNome()%></td>
                <td><%= c.getTelefone()%></td>
                <td><%= c.getNascimento().getData()%></td>
                <td>
                    <form>
                        <input type="submit" name="form-remove" value="Remover">
                        <input type="hidden" name="index" value="<%= Base.getContatoList().indexOf(c)%>">
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
