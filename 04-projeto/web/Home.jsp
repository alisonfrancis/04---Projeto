<%-- 
    Document   : Home - projeto 04
    Created on : 18/04/2018, 09:28:24
    Author     : Alison/Allan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!-- include do cabeçalho -->
    <head>
        <title>HOME - Cadastro</title>
        <%-- Carregando os jsp's da página --%>
        <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
    </head>
   
    
    <body>
        <%-- Carregando a navbar --%>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
       
        <%-- Banner --%>
        <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light" style="background-image: url(Imagens/group0.png)">
            <div class="col-md-5 p-lg-5 mx-auto my-5">
                <h1 class="display-4 font-weight-normal">Bem Vindo ao Cadastro</h1>
                <p class="lead font-weight-normal">Selecione uma das opções abaixo para realizar, editar ou remover um cadastro.</p>
            </div>
        
            <div class="product-device box-shadow d-none d-md-block"></div>
            <div class="product-device product-device-2 box-shadow d-none d-md-block"></div>
        </div>
           
                 
        <%-- Apresentando os Cadastros --%>
        <div class="card-group" >
            <div class="card" ><br/>
                <div class="card bg-light text-white">
                    <a href="Cliente.jsp">
                        <img class="card-img" src="Imagens/Cliente.png" alt="Card image" >
                    </a>
                    <p class="card-text" align=""><a class="btn btn-lg btn-info btn-lg btn-block" href="Cliente.jsp" role="button"> Click Aqui</a></p>
                </div>
            </div>
            
            <div class="card"><br/>
                <div class="card bg-light text-white">
                    <a href="Fornecedor.jsp">
                        <img class="card-img" src="Imagens/fornecedores.png" alt="Card image" >
                    </a>
                    <p class="card-text" align=""><a class="btn btn-lg btn-info btn-lg btn-block" href="Fornecedor.jsp" role="button"> Click Aqui</a></p>
                </div>
            </div>           
        </div>
        
        <%-- Carregando footer --%>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>