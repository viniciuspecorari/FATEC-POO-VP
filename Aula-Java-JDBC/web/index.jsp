<%-- 
    Document   : index.jsp
    Created on : 8 de nov de 2021, 19:33:41
    Author     : Desenvolvedor
--%>

<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="TasksConnector.TaskConnector"%>
<%@page import="java.util.ArrayList"%>
<%@page import="web.DbListener"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    ArrayList<String> taskList = new ArrayList<>();
    Exception requestException = null;

    try {
        if (request.getParameter("add") != null) {
            String taskName = request.getParameter("taskName");
            TaskConnector.addTask(taskName, "dasda");
            response.sendRedirect(request.getRequestURI());

        }
        if (request.getParameter("remove") != null) {
            String taskName = request.getParameter("taskName");
            TaskConnector.removeTask(taskName);
            response.sendRedirect(request.getRequestURI());
        }
        taskList = TaskConnector.getTasks();
    } catch (Exception e) {
        requestException = e;
    }

    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JDBC - To-do list</title>
    </head>
    <body>
        <h1>JDBC - Vinicius Pecorari</h1>
        <h2>    <%= dtf.format(LocalDateTime.now()) %></h2>
        <hr>

        <h2>
            To-do List
        </h2>

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

        <form>
            <input type="text" name="taskName"/>
            <input type="submit" name="add" value="+"/>
        </form>

        <table>
            <% for (String taskName : taskList) {%>
            <tr>
                <td><%= taskName%></td>


                <td>
                    <form>
                        <input type="hidden" name="taskName" value="<%= taskName%>"/>
                        <input type="submit" name="remove" value="-"/>
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
