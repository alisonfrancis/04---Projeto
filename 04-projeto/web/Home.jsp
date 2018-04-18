<%-- 
    Document   : Home - projeto 04
    Created on : 18/04/2018, 09:28:24
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!-- include do cabeçalho -->
    <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
    <!-- Fim do include do cabeçalho-->
    <body>
        <h1></h1>
        <div class="container">
      <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="Imagens/group-2517459_1280.png"  alt="" width="72" height="72">
        <h2>Realizer Cadastro</h2>
        <p class="lead">Selecione uma das opção abaixo para fazer o cadastro.</p>
      </div>
        </div>
        
       <center>
                <a class="btn btn-lg btn-info" href="Cliente.jsp" role="button"> Cliente  </a><br/><br/>
                <a class="btn btn-lg btn-info" href="Fornecedor.jsp" role="button">Fornecedor</a>
       </center>
       
    </body>
</html>
