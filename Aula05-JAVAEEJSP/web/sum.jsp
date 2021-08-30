<%-- 
    Document   : date-time
    Created on : 30 de ago de 2021, 19:15:33
    Author     : Desenvolvedor
--%>


<%@page import="java.lang.reflect.Parameter"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    double n1 = 0, n2 = 0, result = 0;
    String error = null;
               
    try {
                n1 = Double.parseDouble(request.getParameter("n1"));
                n2 = Double.parseDouble(request.getParameter("n2"));
                result = n1+n2;
                
        } catch (Exception e) {
            error = "Erro: "+e.getMessage();
        }
%>
<html>
    <head>
        <title>JAvaEE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    
        <h1>JAVAEE</h1>
        <h2>Java Server Pages</h2>
        <h3>Soma de dois números</h3>
        <h4><a href="index.html">Voltar</h4>
        <h/>
        
        <%if (error != null){%>
        
            <div style="color: red;">ERRO</div>
        <%}else{%>
        
            <div style="color: red;"><%= n1%> + <%= n2%> = <%= result%></div>
        <%}%>
    
</html>

