<%-- 
    Document   : Fornecedor - projeto 04
    Created on : 18/04/2018, 09:31:21
    Author     : user
--%>
<%@page import="br.com.fatecpg.projeto04.Fornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <%
        Fornecedores fornecedorEncontrado = null;
        if(request.getParameter("add")!= null || request.getParameter("sav") != null){
            String nome = request.getParameter("nome");
            String razsoc = request.getParameter("razao_social");
            String cnpj = request.getParameter("cnpj");
            String telefone = request.getParameter("telefone");
            String email = request.getParameter("email");
            String endereco = request.getParameter("endereco");
            Fornecedores c = new Fornecedores(nome, razsoc, cnpj, telefone, email, endereco);
            if(request.getParameter("add")!= null){ /* Se clicar em Adicionar: cria um novo registro no ArrayList do Fornecedor */
               /*Fornecedores.getFornecedor().add(c);*/
               Fornecedores.adicionar(c);
               response.sendRedirect(request.getRequestURI()); 
            } else { /* Se clicar em Salvar: Salva no mesmo registro do ArrayList do Fornecedor */
               int pk = Integer.parseInt(request.getParameter("pk")); 
               Fornecedores.alterar(c, pk);
               response.sendRedirect(request.getRequestURI());
            }
 
        } else if(request.getParameter("del")!= null){
            int pk = Integer.parseInt(request.getParameter("pk"));
            Fornecedores.excluir(pk);
            response.sendRedirect(request.getRequestURI());
                
        }else if(request.getParameter("alt")!= null){
            int pk = Integer.parseInt(request.getParameter("pk"));
            fornecedorEncontrado = Fornecedores.fornecedorPk(pk);
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
            <form>
                Nome: <br/><input type="text" id="nome" name="nome" placeholder="Ex. Maria" <% if (fornecedorEncontrado != null) {%> value="<%=fornecedorEncontrado.getNome()%>" <%}%>><br/>
                Razão Social:<br/><input type="text" id="razao_social" name="razao_social" placeholder="Ex. Trick or Treat & Cia Ltda" <% if (fornecedorEncontrado != null) {%> value="<%=fornecedorEncontrado.getRazsoc()%>" <%}%>><br/>
                CNPJ:<br/><input type="text" name="cnpj" id="cnpj" placeholder="Ex. 12.345.678/1234-56" <% if (fornecedorEncontrado != null) {%> value="<%=fornecedorEncontrado.getCnpj()%>" <%}%>><br/>
                Telefone:<br/><input type="text" name="telefone" id="telefone" placeholder="Ex. 01399999-9999" <% if (fornecedorEncontrado != null) {%> value="<%=fornecedorEncontrado.getTelefone()%>" <%}%>><br/>
                E-Mail:<br/><input type="text" name="email" id="email"  placeholder="Ex. email@examplo.com" <% if (fornecedorEncontrado != null) {%> value="<%=fornecedorEncontrado.getEmail()%>" <%}%>><br/>
                Endereço:<br/><input type="text" name="endereco" id="endereco" placeholder="Ex. Rua 134666" <% if (fornecedorEncontrado != null) {%> value="<%=fornecedorEncontrado.getEndereco()%>" <%}%>><br/>
                <% if (fornecedorEncontrado == null) {%>
                    <br/><input type="submit" name="add" value="Adicionar"/><br/>
                <%} else {%>
                    <input type="number" name="pk" value="<%=fornecedorEncontrado.getPk()%>" hidden>
                    <input type="submit" name="sav" value="Salvar">
                <%}%>
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
 
        <% for (Fornecedores fornecedor : Fornecedores.getLista()) {%>
        <tr>
            <td>Nº <%= fornecedor.getPk()%></td>
            <td><%= fornecedor.getNome()%></td>
            <td><%= fornecedor.getRazsoc()%></td>
            <td><%= fornecedor.getCnpj()%></td>
            <td><%= fornecedor.getTelefone()%></td>
            <td><%= fornecedor.getEmail()%></td>
            <td><%= fornecedor.getEndereco()%></td>
            <td>
                <form>
                    <input type="hidden" name="pk" value="<%= fornecedor.getPk()%>">
                    <input type="submit" name="del" value="Excluir"  class="btn btn-danger">
                    <input type="submit" name="alt" value="Alterar" class="btn btn-success">
                </form>
            </td>
        </tr>
        <%}%>
        </table>
        <%-- Carregando foorte--%>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
