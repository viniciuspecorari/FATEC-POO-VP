<%-- 
    Document   : Tabela
    Created on : 12 de nov de 2021, 21:31:11
    Author     : Desenvolvedor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">        
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <title>Tabela</title>
    </head>
    
    <%@include file="WEB-INF/jspf/header.jspf"%>
    
    <body>
        <div class="container-fluid" id="table">
        <table class="table"> 
            <thead class="thead-dark">
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nome</th>
                    <th scope="col">RA</th>
                    <th scope="col">E-mail</th>                    
                </tr>
            </thead>
            
            <tbody>                
                <tr>
                    <th scope="row">4</th>
                    <td>Vinicius</td>
                    <td>518.983.638-03</td>
                    <td>@viniciuspecorari</td>
                </tr>
            </tbody>
        </table>  
        </div>
    </body>
    
</html>
