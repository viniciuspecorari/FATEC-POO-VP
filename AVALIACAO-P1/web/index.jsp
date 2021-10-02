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
        <%if (sessionUser != null) {%>
    <center>
        <section>
            <table id="tabela">
                <tr>
                    <th>ONLINE: </th>
                    <th><%= online%></th>
                </tr>
            </table>
        </section>

        <!-- Lista de usuarios -->
        <section>
            <% if (nomeUsuarios != null) {%>
            <table id="tabela">
                <%for (int i = 0; i < nomeUsuarios.length - 1; i++) {%>
                <%if (nomeUsuarios[i] != null && !nomeUsuarios[i].equals("")) {%>
                <tr>
                    <td><%= nomeUsuarios[i]%></td>
                </tr>
                <%}%>

                <%}%>
            </table>
            <%}%>
        </section>
    </center>
    <%}%>
</body>

<style>
    #tabela{
        font-family: Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 50%;
        font-size: 18px;
    }
    #tabela th{
        border: 1px solid white;
        padding: 0px;
        width: 10%;
    }
    #tabela tr:nth-child(even){
        background-color: 2A272A;
    }
    #tabela tr:hover {
        background-color: white;
    }
    #tabela th{
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: center;
        background-color: #2A272A;
        color: white;
    }
    #tabela td{
        border: 1px solid white;
        padding: 0px;
        width: 10%;
        font-size: 20px;
        text-transform: uppercase;
        
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: center;
        background-color: #575457;
        color: white;
    }

</style>
</html>
