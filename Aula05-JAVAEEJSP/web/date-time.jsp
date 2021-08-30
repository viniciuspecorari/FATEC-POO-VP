<%-- 
    Document   : date-time
    Created on : 30 de ago de 2021, 19:15:33
    Author     : Desenvolvedor
--%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>JAvaEE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    
        <h1>JAVAEE</h1>
        <h2>Java Server Pages</h2>
        <h3>Data/Hora do servidor</h3>
        <h4><a href="index.html">Voltar</h4>
        <h/>
        <div>
           <%
                Date dNow = new Date( );
                SimpleDateFormat ft = 
                new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss");
                out.print( "<h2>" + ft.format(dNow) + "</h2>");
        %>
        </div>
    
</html>

