<%-- 
    Document   : Cliente - projeto 04
    Created on : 18/04/2018, 09:31:03
    Author     : user
--%>


<%@page import="br.com.fatecpg.projeto04.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%//variaveis auxiliar
   Clientes clienteEncontrado = null;
        // verifica ação dos botões
        if(request.getParameter("add")!= null || request.getParameter("sav") != null){
            String nome = request.getParameter("nome");
            String rg = request.getParameter("rg");
            String cpf = request.getParameter("cpf");
            String telefone = request.getParameter("telefone");
            String email = request.getParameter("email");
            String endereco = request.getParameter("endereco");
            Clientes c = new Clientes(nome, rg, cpf, telefone, email, endereco);
            if(request.getParameter("add")!= null){ // Se clicar em Adicionar: cria um novo registro no ArrayList do Cliente 
               Clientes.adicionar(c);
               response.sendRedirect(request.getRequestURI()); 
            } else { // Se clicar em Salvar: Salva no mesmo registro do ArrayList do Cliente
               int pk = Integer.parseInt(request.getParameter("pk")); 
               Clientes.alterar(c, pk);
               response.sendRedirect(request.getRequestURI());
            }
 
        }else if(request.getParameter("del")!= null){ // Se clicar em excluir: remove todos os dados do Cliente com a mesma pk
            int pk = Integer.parseInt(request.getParameter("pk"));
            Clientes.excluir(pk);
            response.sendRedirect(request.getRequestURI());
            
        }else if(request.getParameter("alt")!= null){ // Se clicar em Alterar: busca todos os dados do Cliente com a mesma pk e coloca no forms    
            int pk = Integer.parseInt(request.getParameter("pk"));
            clienteEncontrado = Clientes.clientePk(pk);
        }
%>
<html>
   <!-- include do cabeçalho -->
    <head>
        <title>Cadastro - Cliente</title>
        <%-- Carregando os jsp's da página --%>
        <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
    </head>
   
    <!-- Fim do include do cabeçalho-->
    <body>
         <!-- Carregando a navbar -->
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        
        <!--cabeçalho da pagina -->
            <div class="container">
                <div class="py-5 text-center">
                  <img class="d-block mx-auto mb-4" src="Imagens/user.png"  alt="" width="72" height="72">
                  <h2>Adicionar Clientes</h2>
                  <p class="lead">Insira os dados do cliente de acordo com a solicitação dos campos abaixo.</p>
                </div>
            </div>
        <!-- iniciando o form -->
        <center>
            <form>
            <table>
                <tr>
                    <td> Nome:</td>
                    <td><input class="form-control" type="text" id="nome" name="nome" placeholder="Ex. João" <% if (clienteEncontrado != null) {%> value="<%=clienteEncontrado.getNome()%>" <%}%>></td>
                </tr>
                <tr>
                    <td>RG:</td>
                    <td><input class="form-control" type="text" id="rg" name="rg" placeholder="12.345.678-9"<% if (clienteEncontrado != null) {%> value="<%=clienteEncontrado.getRg()%>" <%}%>></td>
                </tr>
                <tr>
                    <td>CPF:</td>
                    <td><input class="form-control" type="text" id="cpf" name="cpf" placeholder="123.456.789-00"<% if (clienteEncontrado != null) {%> value="<%=clienteEncontrado.getCpf()%>" <%}%>></td>
                </tr>
                <tr>
                    <td>Telefone:</td>
                    <td><input class="form-control" type="text" id="telefone" name="telefone" placeholder="01399999-9999"<% if (clienteEncontrado != null) {%> value="<%=clienteEncontrado.getTelefone()%>" <%}%>></td>
                </tr>
                <tr>
                    <td>E-Mail:</td>
                    <td><input class="form-control" type="text" id="email" name="email" placeholder="email@example.com"<% if (clienteEncontrado != null) {%> value="<%=clienteEncontrado.getEmail()%>" <%}%>></td>
                </tr>
                <tr>
                    <td>Endereço:</td>
                    <td><input class="form-control" type="text" id="endereco" name="endereco" placeholder="Ex. Rua 123"<% if (clienteEncontrado != null) {%> value="<%=clienteEncontrado.getEndereco()%>" <%}%>></td>
                </tr>
            </table> 
                <% if (clienteEncontrado == null) {%>
            <br/>
                <input type="submit" name="add" value="Adicionar" class="btn btn-info  btn-lg"/>
                <%} else {%>
                    <input type="number" name="pk" value="<%=clienteEncontrado.getPk()%>" hidden>
                    <input type="submit" name="sav" value="Salvar" class="btn btn-info  btn-lg"/>
                <%}%>
            </form>
        </center><hr/>
        <!-- tabela do form -->
        <table class="table table-hover">
            <thead class="thead-light"> <tr>
                <th scope="row">Indice</th>
                <th>Nome</th>
                <th>RG</th>
                <th>CPF</th>
                <th>telefone</th>
                <th>Email</th>
                <th>Endereço</th>
                <th>Exclusão/Alteração</th>
                </tr></thead>
                    <!-- for para arrayList-->
             <% for (Clientes cliente : Clientes.getLista()) {%>
            <tr>
                <td>Nº <%= cliente.getPk()%></td>
                <td><%= cliente.getNome()%></td>
                <td><%= cliente.getRg()%></td>
                <td><%= cliente.getCpf()%></td>
                <td><%= cliente.getTelefone()%></td>
                <td><%= cliente.getEmail()%></td>
                <td><%= cliente.getEndereco()%></td>
                <td>
                    <form>
                        <input type="hidden" name="pk" value="<%= cliente.getPk()%>">
                        <input type="submit" name="del" value="Excluir"  class="btn btn-danger">
                        <input type="submit" name="alt" value="Altera" class="btn btn-success">
                    </form>
                </td>
            </tr>
            <%}%>            
        </table>
            
             <!-- Carregando foorte-->
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>

