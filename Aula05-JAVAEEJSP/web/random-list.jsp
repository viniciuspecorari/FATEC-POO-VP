<%-- 
    Document   : date-time
    Created on : 30 de ago de 2021, 19:15:33
    Author     : Desenvolvedor
--%>


<%@page import="java.lang.reflect.Parameter"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int mes = 1;
    
    String error = null;
               
    try {
                mes = Integer.parseInt(request.getParameter("n1"));
                
                
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
        
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Número</th>
            </tr>
            
            <%for (int i = 1; i < 1; i++){%>
            <tr>
                
                <td><%= i %></td>
                <td><%= ((int) (Math.random()*100))%></td>
            </tr>
            <%}%>
            
        </table>
        <%}%>
    
</html>

