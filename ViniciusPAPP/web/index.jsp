<%-- 
    Document   : index
    Created on : 20 de set de 2021, 19:19:02
    Author     : Desenvolvedor
--%>
<%

    String context = request.getParameter("context");
    String name = request.getParameter("name");
    
    if (name != null && context != null){
        if (context.equals("request")){
            request.setAttribute("name", name);
        }else if(context.equals("session")){
            session.setAttribute("name", name);
        }else if(context.equals("application")){
            application.setAttribute("name", name);
        }
    }
    

        String requestName = (String) request.getAttribute("name");
        String SessionName = (String) session.getAttribute("name");
        String ApplicationName = (String) application.getAttribute("name");


%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atributos de contexto</title>
    </head>
    <body>
        <h1>Atributos de contexto</h1>
        
        <form>
            Contexto:
            <select name = "context">
                <option value = "">Selecione uma opção</option>
                <option value = "request">Requisição</option>
                <option value = "session">Sessão</option>
                <option value = "application">Aplicação</option>            
            </select>
            
            Nome: <input type="text" name="name"/>
            <input type="submit" value="enviar"/>
        </form>
        
        
        <%if(SessionName!=null){%>
            <hr/>
            <h2>Sessão</h2>
            <div>Nome: <%= SessionName%></div>
        <%}%>
        
        
        <%if(requestName!=null){%>
            <hr/>
            <h2>Requisição</h2>
            <div>Nome: <%= requestName%></div>
        <%}%>
        
        
        <%if(ApplicationName!=null){%>
            <hr/>
            <h2>Aplicação</h2>
            <div>Nome: <%= ApplicationName%></div>
        <%}%>
    </body>
</html>
