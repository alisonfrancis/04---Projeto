<%-- 
    Document   : Fornecedor - projeto 04
    Created on : 18/04/2018, 09:31:21
    Author     : user
--%>

<%@page import="br.com.fatecpg.projeto04.Bd"%>
<%@page import="br.com.fatecpg.projeto04.Fornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("add")!= null){
    Fornecedores c = new Fornecedores();
    c.setNome(request.getParameter("nome"));
    c.setRazsoc(request.getParameter("razao_social"));
    c.setCnpj(request.getParameter("cnpj"));
    c.setTelefone(request.getParameter("telefone"));
    c.setEmail(request.getParameter("email"));
    c.setEndereco(request.getParameter("endereco"));
    Bd.getFornecedor().add(c);
    response.sendRedirect(request.getRequestURI());
    }
    
    if(request.getParameter("del")!= null){
        int i = Integer.parseInt(request.getParameter("i"));
        Bd.getFornecedor().remove(i);
        response.sendRedirect(request.getRequestURI());
    }
%>
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
        <fieldset><center>
            <legend>Adicionar Fornecedores</legend>
            <form>
                Nome: <br/><input type="text" name="nome" placeholder="Ex. Maria"/><br/>
                Razão Social:<br/><input type="text" name="razao_social" placeholder="Ex. Trick or Treat & Cia Ltda"/><br/>
                CNPJ:<br/><input type="text" name="cnpj" placeholder="Ex. 12.345.678/1234-56"/><br/>
                Telefone:<br/><input type="text" name="telefone" placeholder="Ex. 01399999-9999"/><br/>
                E-Mail:<br/><input type="text" name="email"  placeholder="Ex. email@examplo.com"/><br/>
                Endereço:<br/><input type="text" name="endereco" placeholder="Ex. Rua 134666"/><br/>
                <br/><input type="submit" name="add" value="Adicionar"/><br/>
            </form></center>            
        </fieldset><hr/>
        
            <table class="table table-hover">
            <thead class="thead-light"> <tr>
                <th scope="row">Indice</th>
                <th>Nome</th>
                <th>Razão Social</th>
                <th>CNPJ</th>
                <th>telefone</th>
                <th>Email</th>
                <th>Endereço</th>
                <th>Exclusão/Alteração</th>
                </tr></thead>
 
            <% for(int i = 0; i<Bd.getFornecedor().size();i++){%>
            <tr>
                <td><%= i%></td>
                <td><%= Bd.getFornecedor().get(i).getNome()%></td>
                <td><%= Bd.getFornecedor().get(i).getRazsoc()%></td>
                <td><%= Bd.getFornecedor().get(i).getCnpj()%></td>
                <td><%= Bd.getFornecedor().get(i).getTelefone()%></td>
                <td><%= Bd.getFornecedor().get(i).getEmail()%></td>
                <td><%= Bd.getFornecedor().get(i).getEndereco()%></td>
                <td>
                    <form>
                        <input type="hidden" name="i" value="<%= i%>">
                        <input type="submit" name="del" value="Excluir"  class="btn btn-danger">
                        <input type="submit" name="alt" value="Altera" class="btn btn-success">
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
        <%-- Carregando foorte--%>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
