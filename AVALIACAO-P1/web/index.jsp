<%-- 
    Document   : index
    Created on : 27 de set de 2021, 19:46:48
    Author     : Desenvolvedor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Inicial</title>
    </head>
    
    <!-- header -->
    <header>
        <%@include file="WEB-INF/jspf/header.jspf"%>
    </header>
    
    
    <body style="background-color:white;">
        <%if(sessionUser == null){%>
            <h1>Online:</h1>
        <%}else{%>
             <h1>Online:</h1>
            <%}%>
    </body>
    
    
</html>
