<%-- 
    Document   : home
    Created on : 19/04/2018, 20:54:27
    Author     : ALLAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>HOME - Cadastro</title>
        <%-- Carregando os jsp's da página --%>
        <%@include file="WEB-INF/jspf/meta_bootstrap_fonts.jspf"%>
    </head>
    
    <body class="bodycolor">
        
        <%-- Carregando a navbar --%>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        
        <%-- Banner --%>
        <div class="card mb-3">
            <center><img class="card-img-top bannerbody" src="images/banner_cadastro.jpg" alt="tela de cadastro" style="width:100%;height:400px;">
            </center>
        </div>
        
        <%-- Apresentando os Cadastros --%>
        <div class="card-group">
            <div class="card">
                <center><a href="cliente.jsp"><img class="imgdev" src="images/cliente.png" alt="imagem do cad. cliente"></center>
                <div class="card-body">
                    <center><h5 class="card-title h5body">Clique acima para efetuar o Cadastramento de Clientes.</h5></center>                          
                </div>
            </div>
            <div class="card">
                <center><a href="fornecedor.jsp"><img class="imgdev" src="images/fornecedor.png" alt="imagem do cad. fornecedor"></a></center>
                <div class="card-body">
                    <center><h5 class="card-title h5body">Clique acima para efetuar o Cadastramento de Fornecedores.</h5></center>
                </div>
            </div>            
        </div>
        
        
        
        
        
        
        
        
        
        
        
        
    </body>
</html>
