<%-- 
    Document   : vp-calendar
    Created on : 30 de ago de 2021, 20:37:15
    Author     : Vinicius Pecorari
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%--Inicialização e validação dos parms--%>
<%
    int 
    ano = 0,
    mes = 0;
    
    String erro = null;
    
    //validando os parametros
    if(request.getParameter("mes") == null){
        erro = "Parâmetro 'mês' está vazio!";
    }else if (request.getParameter("ano") == null){
        erro = "Parâmetro 'ano' está vazio!";
    }else if(Integer.parseInt(request.getParameter("ano")) > 3000 || Integer.parseInt(request.getParameter("mes")) > 13){
        erro = "Valores inválidos.";
    }else{
        try{
            ano = Integer.parseInt(request.getParameter("ano"));
            mes = Integer.parseInt(request.getParameter("mes"));
            
           
        }catch(Exception e){
            erro = "ERRO NOS PARÂMETROS\nAno: "+ano+"\nMês: "+mes;
        }
    }
    
%>   
    
<%
    //declarando variaveis CALENDAR
    int dia = 1;
    boolean bissexto = false;
    int tamanhoMes[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    String meses[] = {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"};
    String diaMes[] = {"D", "S", "T", "Q", "Q", "S", "S"};
    String calendario[][] = new String[6][7];
    
    //instanciando classe CALENDAR
    Calendar c = Calendar.getInstance();
    c.set(Calendar.YEAR, ano);
    c.set(Calendar.MONTH, mes -1);
    c.set(Calendar.DAY_OF_MONTH, dia);
    int diaSemana = c.get(Calendar.DAY_OF_WEEK);
    
    //verificando se é ano bissexto
    if((ano % 4 == 0)&& (ano % 100 != 0) || (ano %400 == 0)){
        bissexto = true;
    }if(bissexto){
        tamanhoMes[1] = 29;
    }

    //criando calendario
    for(int i = 0; i < 6; i++){
        for(int j = 0; j < 7; j++){
            if(i == 0 && j < diaSemana - 1){
                calendario[i][j] = "";
            }else if(dia <= tamanhoMes[mes - 1]){
                calendario[i][j]= String.valueOf(dia++);
            } else{
                calendario[i][j] = "";
            }
        }
    }
        
%>   

<html>
    <head>
        <title>Calendário</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
    
    </head>
    
    
    <body>
        
        <!-- Erro -->
        <%if(erro != null){%>
            <p style="color:blue;"><%= erro%></p>
        <%}else{%>
        
        <!-- Calendário -->
        <section id="calendario" style="font-family: sans-serif"><center>
           
                
             <table id="tabela">
                
                 <!-- MÊS E ANO-->
                 <tr>
                     <div id="cabecalho" ><%= meses[mes -1]%> - <%= ano%></div>
                </tr> 
                 
                 <!-- DIAS DA SEMANA-->
                 <tr id="diaSemana" style="color: white;background-color: #156DBD; font-weight: bold;">
                    <%for(int i = 0; i < diaMes.length; i++){%>
                        <th id="diaMes"><%= diaMes[i]%></th>
                    <%}%>
                </tr>  
                
                <!-- NUMERO DIAS DA SEMANA -->
                <%for(int i = 0; i < 6; i++){%>
                    <tr>
                        <%for(int j = 0; j < 7; j++){%>
                            <td id="dias"><%= calendario[i][j]%></td>
                        <%}%>
                    </tr>
                <%}%>
             </table> 
             
              <!-- VOLTAR -->
             <tr><button class="voltar"><a href="index.html">VOLTAR</a></button></tr>
             
             </center>
            
        </section>
            <%}%>
            
    </body>
    
    
    <!-- CSS CALENDARIO-->
    <style>
        
        section{
            background-color: white;
            margin-top: 5%;
            
        }
        table{
            background-color: white;
            
            width: 40%;
            height: 50%;
            
            font-family: sans-serif;
            font-size: 18px;
            text-align: center;
            
            border: solid #156DBD;
            border-radius: 6px 6px 6px 6x;
            
            overflow-x:auto;
            
            
        }
        #tabela td, #tabela th{
            border: 1px solid #ddd;
            padding: 8px;
        }
        #tabela tr:nth-child(even){
            background-color: #f2f2f2;
        }
        #tabela tr:hover{
            background-color: #ddd;
        }
        #cabecalho{
            text-align: center;
            font-weight: bold;
            text-transform: uppercase;
            font-size: 25px;
            font-family: sans-serif;
            background-color: #156DBD;
            color:white;
            
            width: 40%;
            height: 6%;
            padding-top: 10px;
            border: 1px solid #ddd;
            border-radius: 6px 6px 0px 0px;
            
            position: relative;
        }
       .voltar{
            background-color: #156DBD; /* Green */
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
            
            margin-left: 31.5%;
            
        }
        .voltar:hover{
              box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
        }
        a{
            text-decoration: none;
            color: white;
            font-weight: bold;
            font-size: 16px;
        }
              
    </style>
</html>
