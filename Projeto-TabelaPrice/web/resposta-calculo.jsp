<%-- 
    Document   : date-time
    Created on : 30 de ago de 2021, 19:15:33
    Author     : Desenvolvedor
--%>


<%@page import="java.text.DecimalFormat"%>
<%@page import="java.lang.reflect.Parameter"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    double valor = 0, juros = 0, prestacao = 0, resposta =0;
    String error = null;
    
    DecimalFormat df = new DecimalFormat("###,###.00");
    
    try {
                valor = Double.parseDouble(request.getParameter("valor"));
                juros = Double.parseDouble(request.getParameter("juros"));
                prestacao = Double.parseDouble(request.getParameter("prestacao"));
                
                resposta = valor * (Math.pow(1 + (juros / 100), prestacao) * (juros/100)) / (Math.pow((1 + (juros / 100)), prestacao) -1);
                
                
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
        
        <!<!-- header -->
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <!<!-- menu -->
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        
        
        <%if (error != null){%>
        
            <div style="color: red;">ERRO</div>
        <%}else{%>
        
        <div style="color:blue;font-size: 28px; text-align: center; margin-top: 10%; margin-bottom: 30%;">Resposta: <%=df.format(resposta)%></div> 
        <%}%>
         
        <!<!-- footer -->
    <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>