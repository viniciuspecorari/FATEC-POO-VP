<%-- 
    Document   : ViniciusPecorari
    Created on : 27 de set de 2021, 19:47:23
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
        <%@include file="WEB-INF/jspf/header.jspf"%>
    </header>

    <body style="background-color:white;">

        <% if (sessionUser != null) { %>
    <center>
        <section id="dados">
            <table id="tabela">
                <tr id="cabecalho">
                    <th>Nome</th>
                    <th>RA</th>
                    <th>Inicio faculdade </th>
                    <th>GitHub</th>
                </tr>
                <tr>
                    <td>José Vinicius Pecorari</td>
                    <td>1290482012015</td>
                    <td>1º Semestre de 2020</td>
                    <td><a id="link" href="https://github.com/viniciuspecorari">https://github.com/viniciuspecorari</a></td>
                </tr>
            </table>
        </section>



        <section>
            <table id="tabela">
                
                <tr><div id="legenda">Disciplinas - 4º Ciclo Noturno</tr>
                <tr id="cabecalho">
                    <th>Segunda</th>
                    <th>Terça</th>
                    <th>Quarta</th>
                    <th>Quinta</th>
                    <th>Sexta</th>
                    <th>Sabado</th>
                </tr>

                
                <tr>
                    <td>Programação Orientada a Objetos</td>
                    <td>Engenharia de Software III</td>
                    <td>Linguagem de Programação IV</td>
                    <td>Sistemas Operacionais II</td>
                    <td>Metodologia da Pesquisa Científico-Tecnológica</td>
                    <td>Banco de Dados</td>
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
        text-transform: uppercase;
        font-size: 20px;
        font-family: sans-serif;
        background-color: #1E1F1F;
        color:white;

        width: 40%;
        height: 6%;
        border: 1px solid #1E1F1F;
        border-radius: 6px 6px 0px 0px;

        position: relative;
    }
    #dados{
        margin-bottom: 0.3%;
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
        #legenda{
            text-align: center;
            font-weight: bold;
            text-transform: uppercase;
            font-size: 23px;
            font-family: sans-serif;
            background-color: #1C1C1C;
            color:white;
            
            width: 90%;
            height: 6%;
            padding-top: 10px;
            padding-bottom: 10px;
            border: 1px solid grey;
            border-radius: 6px 6px 0px 0px;
            position: relative;
        }
        #link{
            color:white;
        }
        #link:hover{
            color:#3BB1E4;
        }
</style>
