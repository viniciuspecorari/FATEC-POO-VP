<%-- 
    Document   : ViniciusPecorari-Dica-MegaSena
    Created on : 27 de set de 2021, 19:47:49
    Author     : Desenvolvedor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <header>
        <%@include file="WEB-INF/jspf/header.jspf"%>
    </header>

    <body style="background-color:white;">

        <%if (sessionUser != null) {%>
    <center>
        <section id="tabela">
            <table id="MegaSena">

                <tr>
                <div id="legenda">Mega - sena</div>
                </tr>

                <tr>
                    <td><%= n1%></td>
                    <td><%= n2%></td>
                    <td><%= n3%></td>
                </tr>

                <tr>
                    <td><%= n4%></td>
                    <td><%= n5%></td>
                    <td><%= n6%></td>
                </tr>
            </table>
        </section>
    </center>
    <%}%>


</body>

<!-- Estilo-->
<style>
    #MegaSena{
        font-family: Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 50%;
        font-size: 18px;
    }
    #MegaSena td{
        border: 1px solid white;
        padding: 8px;
    }
    #MegaSena tr:nth-child(even){
        background-color: #808080;
    }
    #MegaSena tr:hover {
        background-color: white;
    }
    #MegaSena td{
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: center;
        background-color: #808080;
        color: white;
    }
    #legenda{
        text-align: center;
        font-weight: bold;
        text-transform: uppercase;
        font-size: 25px;
        font-family: sans-serif;
        background-color: #1C1C1C;
        color:white;

        width: 50%;
        padding-top: 10px;
        padding-bottom: 10px;
        border: 1px solid grey;
        border-radius: 6px 6px 0px 0px;
        position: relative;
    }
    #tabela{
        margin-top: 1%;
    }
</style>
</html>

