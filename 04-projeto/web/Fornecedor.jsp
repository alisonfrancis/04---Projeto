<%-- 
    Document   : Fornecedor - projeto 04
    Created on : 18/04/2018, 09:31:21
    Author     : user
--%>
<%@page import="br.com.fatecpg.projeto04.Fornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <%//variaveis auxiliar
        Fornecedores fornecedorEncontrado = null;
        // verifica ação dos botões
        if(request.getParameter("add")!= null || request.getParameter("sav") != null){
            String nome = request.getParameter("nome");
            String razsoc = request.getParameter("razao_social");
            String cnpj = request.getParameter("cnpj");
            String telefone = request.getParameter("telefone");
            String email = request.getParameter("email");
            String endereco = request.getParameter("endereco");
            Fornecedores c = new Fornecedores(nome, razsoc, cnpj, telefone, email, endereco);
            if(request.getParameter("add")!= null){ // Se clicar em Adicionar: cria um novo registro no ArrayList do Fornecedor
               Fornecedores.adicionar(c);
               response.sendRedirect(request.getRequestURI()); 
            } else { // Se clicar em Salvar: Salva no mesmo registro do ArrayList do Fornecedor 
               int pk = Integer.parseInt(request.getParameter("pk")); 
               Fornecedores.alterar(c, pk);
               response.sendRedirect(request.getRequestURI());
            }
 
        } else if(request.getParameter("del")!= null){// Se clicar em excluir: remove todos os dados do Fornecedor com a mesma pk
            int pk = Integer.parseInt(request.getParameter("pk"));
            Fornecedores.excluir(pk);
            response.sendRedirect(request.getRequestURI());
                
        }else if(request.getParameter("alt")!= null){// Se clicar em Alterar: busca todos os dados do Fornecedor com a mesma pk e coloca no forms
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
                <center>
            <form>
            <table>
                <tr>
                    <td> Nome:</td>
                    <td><input class="form-control" type="text" id="nome" name="nome" placeholder="Ex. Maria" <% if (fornecedorEncontrado != null) {%> value="<%=fornecedorEncontrado.getNome()%>" <%}%>></td>
                </tr>
                <tr>
                    <td>Razão Social:</td>
                    <td><input class="form-control" type="text" id="razao_social" name="razao_social" placeholder="Ex. Trick or Treat & Cia Ltda" <% if (fornecedorEncontrado != null) {%> value="<%=fornecedorEncontrado.getRazsoc()%>" <%}%>></td>
                </tr>
                <tr>
                    <td>CNPJ:</td>
                    <td><input class="form-control" type="text" id="cnpj" name="cnpj" placeholder="Ex. 12.345.678/1234-56" <% if (fornecedorEncontrado != null) {%> value="<%=fornecedorEncontrado.getCnpj()%>" <%}%>></td>
                </tr>
                <tr>
                    <td>Telefone:</td>
                    <td><input class="form-control" type="text" id="telefone" name="telefone" placeholder="Ex. 01399999-9999" <% if (fornecedorEncontrado != null) {%> value="<%=fornecedorEncontrado.getTelefone()%>" <%}%>></td>
                </tr>
                <tr>
                    <td>E-Mail:</td>
                    <td><input class="form-control" type="text" id="email" name="email" placeholder="Ex. email@examplo.com" <% if (fornecedorEncontrado != null) {%> value="<%=fornecedorEncontrado.getEmail()%>" <%}%>></td>
                </tr>
                <tr>
                    <td>Endereço:</td>
                    <td><input class="form-control" type="text" id="endereco" name="endereco" placeholder="Ex. Rua 134666" <% if (fornecedorEncontrado != null) {%> value="<%=fornecedorEncontrado.getEndereco()%>" <%}%>></td>
                </tr>
            </table> 
                <% if (fornecedorEncontrado == null) {%>
            <br/>
                <input type="submit" name="add" value="Adicionar" class="btn btn-info  btn-lg"/>
                <%} else {%>
                    <input type="number" name="pk" value="<%=fornecedorEncontrado.getPk()%>" hidden>
                    <input type="submit" name="sav" value="Salvar" class="btn btn-info  btn-lg"/>
                <%}%>
            </form>
        </center><hr/>
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
