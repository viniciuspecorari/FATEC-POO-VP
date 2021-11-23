<%-- 
    Document   : index.jsp
    Created on : 8 de nov de 2021, 19:33:41
    Author     : Desenvolvedor
--%>

<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="TasksConnector.TasksConnector"%>
<%@page import="java.util.ArrayList"%>
<%@page import="web.DbListener"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/header.jspf"%>
<!DOCTYPE html>

<%
    ArrayList<String> taskList = new ArrayList<>();
    ArrayList<String> userList = new ArrayList<>();
    Exception requestException = null;

    int contador = 0;

    try {
        if (request.getParameter("add") != null) {
            String taskName = request.getParameter("taskName");
            TasksConnector.addTask(taskName, sessionUser);
            response.sendRedirect(request.getRequestURI());

        }
        if (request.getParameter("remove") != null) {
            String taskName = request.getParameter("taskName");
            TasksConnector.removeTask(taskName);
            response.sendRedirect(request.getRequestURI());
        }
        taskList = TasksConnector.getTasks();
        
    } catch (Exception e) {
        requestException = e;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <title>VPecorari P2</title>
    </head>

    <body>

        <% if (DbListener.exception != null) {%>
        <div style="color:red;">
            Erro na criação do DB: <%=  DbListener.exception.getMessage()%>
        </div>
        <%}%>

        <% if (requestException != null) {%>
        <div style="color:red;">
            Erro de leitura / gravação: <%=  requestException.getMessage()%>
        </div>
        <%}%>


        <% if (sessionUser != null) {%>
        <div class="container-fluid">
            <form>
                <div class="row" >
                    <div class="col-md-2">
                        <input type="text" class="form-control" id="tarefa" name="taskName" placeholder="Tarefa"/>
                    </div>

                    <div class="col-md-6">
                        <button type="submit" class="btn btn-success" name="add" > Cadastrar</button>
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
                    <% for (String taskName : taskList) {%>
                    <% for (String user : userList) {%>
                    <tr>
                        <td><%= ++contador%></td>


                        <td>                        
                            <%= taskName%>
                        </td>

                        <td>                        
                        <%= user%>
                        </td>

                        <td>                        
                            <form>  
                                <input type="hidden" name="taskName" value="<%= taskName%>"/>                                              
                                <button type="submit" class="btn btn-danger" name="remove" value="<%= taskName%>">Deletar</button>
                            </form>
                        </td>
                    </tr>
                    <%}%>
                    <%}%>
                </tbody>
            </table>
        </div>
        <%}%>

    </body>
</html>
