<%-- 
    Document   : index
    Created on : 20 de set de 2021, 19:53:35
    Author     : Desenvolvedor
--%>

<%
    int tabelaNumero[][] = new int[2][3];
    for (int l = 0; l < 2; l++) {
            for (int c = 0; c < 3; c++) {
                tabelaNumero[l][c] = ((int) (Math.random() * 100));
            }
        }
        
    if (request.getParameter("login-name") != null) {
        session.setAttribute("login-name", request.getParameter("login-name"));
        response.sendRedirect(request.getRequestURI());

    } else if (request.getParameter("login-pass") != null) {
        session.setAttribute("login-pass", request.getParameter("login-pass"));
        response.sendRedirect(request.getRequestURI());

    } else if (request.getParameter("logout") != null) {
        session.removeAttribute("login-name");
        session.removeAttribute("login-pass");
        response.sendRedirect(request.getRequestURI());
    }

    String loginName = (String) session.getAttribute("login-name");


%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VP APP</title>
    </head>

    <!-- header -->
    <%@include file="WEB-INF/jspf/Header.jspf"%>

    <body style="font-family: sans-serif; font-size: 23;">

        <section id="login">

            <form>
                <%if (loginName == null) {%>
                <p>Usuario:</p>
                <input type="text" name="login-name" placeholder="Usuário">
                <p>Senha: </p>
                <input type="password" name="login-pass" placeholder="Senha"><br><br>
                <input type="submit" name="login" value="Entrar">

                <%} else {%>
                Bem vindo, <%= loginName%>
                <input type="submit" name="logout" value="Sair">
                <hr>

                <div name="tabela">
                    <table border="1">
                        <%for (int l = 0; l < 2; l++) {%>
                        <tr>
                            <%for (int c = 0; c < 3; c++) {%>
                            <td><%= tabelaNumero[l][c]%></td>
                            <%}%>
                        </tr>

                        <%}%>
                    </table>
                </div>

                <%}%>
            </form>

        </section>
        <hr>



    </body>
</html>
