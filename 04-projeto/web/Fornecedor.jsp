<%-- 
    Document   : Fornecedor - projeto 04
    Created on : 18/04/2018, 09:31:21
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <!-- include do cabeçalho -->
    <head>
        <title>Cadastro - Fornecedor</title>
        <%-- Carregando os jsp's da página --%>
        <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
    </head>
   
    <!-- Fim do include do cabeçalho-->
    <body>
     <%-- Carregando a navbar --%>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        
       <div class="container">
      <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="Imagens/group.png"  alt="" width="72" height="72">
        <h2>Cadastro - Fornecedores</h2>
        <p class="lead">Insira os dados do cliente de acordo com a solicitação dos campos abaixo.</p>
      </div>
        </div>
        <fieldset>
            <legend>Adicionar Fornecedores</legend>
            <form>
                Nome: <br/><input type="text" name="nome"/><br/>
                Razão Social:<br/><input type="text" name="razao_social"/><br/>
                Cnpj:<br/><input type="text" name="cnpj"/><br/>
                Telefone:<br/><input type="text" name="telefone"/><br/>
                E-Mail:<br/><input type="text" name="email"/><br/>
                Endereço:<br/><input type="text" name="endereco"/><br/>
                <br/><input type="submit" name="add" value="Adicionar"/><br/>
            </form>            
        </fieldset><hr/>
        
               <%-- Carregando foorte--%>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
