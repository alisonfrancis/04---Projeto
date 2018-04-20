<%-- 
    Document   : Home - projeto 04
    Created on : 18/04/2018, 09:28:24
    Author     : user
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
      <%-- Banner --%>
        <div class="card mb-3">
            <center><img class="card-img-top bannerbody" src="Imagens/banner_cadastro.jpg" alt="tela de cadastro" style="width:100%;height:400px;">
            </center>
        </div>
        
      
        
      <!-- <center>
                <a class="btn btn-lg btn-info" href="Cliente.jsp" role="button"> Cliente  </a><br/><br/>
                <a class="btn btn-lg btn-info" href="Fornecedor.jsp" role="button">Fornecedor</a>
       </center>-->
    
            <%-- Apresentando os Cadastros --%>
        <div class="card-group">
            <div class="card"><br/>
              <div class="card bg-light text-white">
  <img class="card-img" src="Imagens/Cliente.png" alt="Card image">
  <div class="card-img-overlay">
    <h5 class="card-title"></h5>
    <p class="card-text"></p>
    <p class="card-text" align="right" ><a class="btn btn-lg btn-info" href="Cliente.jsp" role="button"> Click Aqui</a></p>
  </div>
</div>
            </div>
            <div class="card"><br/>
                <center><img class="imgdev" src="Imagens/fornecedores.png" alt="imagem do cad. fornecedor"></center>
                <div class="card-body">
                    <center><a class="btn btn-lg btn-info" href="Fornecedor.jsp" role="button">Click Aqui</a></center>
                </div>
            </div>            
        </div>
        
              <%-- Carregando foorte--%>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
