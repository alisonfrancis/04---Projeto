<%-- 
    Document   : Fornecedor - projeto 04
    Created on : 18/04/2018, 09:31:21
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <!-- include do cabeçalho -->
    <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
    <!-- Fim do include do cabeçalho-->
    <body>
        <a href="Home.jsp">Home</a>
     <h1>Registro</h1>
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
    </body>
</html>
