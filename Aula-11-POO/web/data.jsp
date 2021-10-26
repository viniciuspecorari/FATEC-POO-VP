<%-- 
    Document   : Index
    Created on : 25 de out de 2021, 19:12:38
    Author     : Desenvolvedor
--%>

<%@page import="model.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    Data hoje = new Data();  
    hoje.setDia(25);
    hoje.setMes(10);
    hoje.setAno(2021);
    
    Data NiverVinicius = new Data(9, 8, 2002);
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datas - JAVA OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Classe data</h2>
        <h3>Data de hoje: </h3>
        <div><%= hoje.getData() %></div>
        <h3>Meu aniversário: </h3>
        <div><%= NiverVinicius.getData() %></div>
    </body>
</html>
