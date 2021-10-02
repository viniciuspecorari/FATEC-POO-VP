<%-- 
    Document   : ViniciusPecorari
    Created on : 2 de out de 2021, 17:00:48
    Author     : Desenvolvedor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aluno</title>
    </head>

    <header>
        <%@include file="WEB-INF/jspf/header.jspf" %>
    </header>

    <body>
        
    <% if (SessionUser != null) {%>
    <center>
        <!-- DADOS ALUNO -->
        <section id="dados">
            <table id="tabela">
                <tr id="cabecalho">
                    <th>NOME</th>
                    <th>RA</th>
                    <th>INICIO FACULDADE</th>
                    <th>GitHub</th>
                </tr>

                <tr>
                    <td>Vinicius Pecorari</td>
                    <td>1290482012015</td>
                    <td>1º Semestre de 2020</td>
                    <td><a id="link" href="https://github.com/viniciuspecorari">https://github.com/viniciuspecorari</a></td>
                </tr>
            </table>
        </section>

        <section>
            <table id="tabela">
                <tr><div id="legenda">Disciplinas - 4º Ciclo Noturno</div></tr>

                <tr id="cabecalho">
                    <th>SEGUNDA</th>
                    <th>TERÇA</th>
                    <th>QUARTA</th>
                    <th>QUINTA</th>
                    <th>SEXTA</th>
                    <th>SÁBADO</th>
                </tr>

                <tr>
                    <td>Programação Orientada a Objetos</td>
                    <td>Engenharia de Software III</td>
                    <td>Linguagem de programação IV</td>
                    <td>Sistemas Operacionais II</td>
                    <td>Metodologia de Pesquisa Científico-Tecnológica</td>
                    <td>Banco de dados</td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>Inglês</td>
                    <td></td>
                </tr>
            </table>
        </section>
    </center>
    <%}%>

</body>
</html>

<style>
    #cabecalho{
        text-align: center;
        font-weight: bold;
        font-size: 20px;
        font-family: sans-serif;
        background-color: #1E1F1F;
        color:white;
        
        width: 40%;
        height: 6%;
        border:1px solid  #1E1F1F;
        border-radius: 6px 6px 6px 6px;
        
        position: relative;
    }
    #tabela{
        font-family: Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 90%;
        font-size: 18px;

    }
    #tabela td{
        border: 1px solid white;
        padding: 8px;
    }
    #tabela tr:nth-child(even){
        background-color: #1C1C1C;
    }
    #tabela td{
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: center;
        background-color: #808080;
        color: white;
    }
    #dados{
        margin-bottom: 1%;
    }
    #legenda{
        text-align: center;
        font-weight: bold;
        text-transform: uppercase;
        font-size: 23px;
        font-family: sans-serif;
        background-color: #1E1F1F;
        color:white;
        
        width: 90%;
        height: 6%;
        padding-top:10px;
        padding-bottom:10px;
        border:1px solid grey;
        border-radius: 6px 6px 6px 6px;
        position:relative;
    }
    #link{
        color:white;
    }
    #link:hover{
        color:#3BB1E4;
    }
</style>
