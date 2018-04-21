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
   
    <!-- Fim do include do cabeçalho-->
    <body>
        <%-- Carregando a navbar --%>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
       
          <%-- Banner --%>
          <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light" style="background-image: url(Imagens/group0.png)">
      <div class="col-md-5 p-lg-5 mx-auto my-5">
        <h1 class="display-4 font-weight-normal">Bem Vindo ao Cadastro</h1>
        <p class="lead font-weight-normal">Selecione uma das opçóes abaixo para realizar um cadasto, edita ou remover.</p>
       
      </div>
      <div class="product-device box-shadow d-none d-md-block"></div>
      <div class="product-device product-device-2 box-shadow d-none d-md-block"></div>
    </div>
           
           
           
      <%-- Banner 
        <div class="card mb-3">
            <center><img class="card-img-top bannerbody" src="Imagens/banner_cadastro.jpg" alt="tela de cadastro" style="width:100%;height:400px;">
            </center>
        </div>--%>
        
      
        
      <!-- <center>
                <a class="btn btn-lg btn-info" href="Cliente.jsp" role="button"> Cliente  </a><br/><br/>
                <a class="btn btn-lg btn-info" href="Fornecedor.jsp" role="button">Fornecedor</a>
       </center>-->
    
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
            <!--  Seundo card -->
            <div class="card"><br/>
                <div class="card bg-light text-white">
                    <a href="Fornecedor.jsp">
                        <img class="card-img" src="Imagens/fornecedores.png" alt="Card image" >
                    </a>
                    <p class="card-text" align=""><a class="btn btn-lg btn-info btn-lg btn-block" href="Fornecedor.jsp" role="button"> Click Aqui</a></p>
                </div>
            </div>           
        </div>
        
              <%-- Carregando foorte--%>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>