<%-- 
    Document   : index
    Created on : 22 de nov de 2021, 15:23:55
    Author     : Desenvolvedor
--%>

<%@page import="WEB.VPDbListener"%>
<%@page import="JavaClasses.CadastrarTarefas"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/header.jspf" %>
<%
    ArrayList<String> taskList = new ArrayList<>();
    String taskName = request.getParameter("taskName");
    String nameUser = sessionUser;
    
    Exception requestException = null;

    try {
        if (request.getParameter("cadastrar") != null) {
            
            
            CadastrarTarefas.addTask(taskName, nameUser);
            response.sendRedirect(request.getRequestURI());

        }
        if (request.getParameter("Deletar") != null) {
           
            
            CadastrarTarefas.removeTask(taskName, nameUser);
            response.sendRedirect(request.getRequestURI());
        }
        
        taskList = CadastrarTarefas.getTasks();
        
    } catch (Exception e) {
        requestException = e;
    }

%>


<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <title>P2 VP</title>
        
    </head>

   
<%if(sessionUser!=null){%>
    <body>
       
        <% if (VPDbListener.exception != null) {%>
        <div style="color:red;">
            Erro na criação do DB: <%=  VPDbListener.exception.getMessage()%>
        </div>
        <%}%>

        <% if (requestException != null) {%>
        <div style="color:red;">
            Erro de leitura / gravação: <%=  requestException.getMessage()%>
        </div>
        <%}%>

        <div class="container-fluid">
            <form>
                <div class="row" >
                    <div class="col-md-2">
                        <input type="text" class="form-control" id="tarefa" name="nome" placeholder="Tarefa"/>
                    </div>

                    <div class="col-md-6">
                        <button type="submit" class="btn btn-success" name="cadastrar" > Cadastrar</button>
                    </div>
                </div>
            </form>
        </div>

        <div class="container-fluid" id="table">
            <table class="table"> 
               
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">TASK</th>
                        <th scope="col">NAME</th>                 
                        <th scope="col"></th>    
                    </tr>
                </thead>

                <tbody>
                    <% for(String id : taskList) {%>
                    <tr>
                        <th scope="row">1</th>
                        <td><%= id%></td>
                    </tr>
                    <%}%>
                </tbody>
              
            </table>  
        </div>
        
    </body>
    <%}%>
</html>
