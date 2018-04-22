<%-- 
    Document   : Cliente - projeto 04
    Created on : 18/04/2018, 09:31:03
    Author     : user
--%>

<%@page import="br.com.fatecpg.projeto04.Bd"%>
<%@page import="br.com.fatecpg.projeto04.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%try{//variaveis auxiliar
    String n="";
    String r="";
    String cp="";
    String t="";
    String e="";
    String en="";
        // verifica ação dos botões
    if(request.getParameter("add")!= null){
    Clientes c = new Clientes();
    c.setNome(request.getParameter("nome"));
    c.setRg(request.getParameter("rg"));
    c.setCpf(request.getParameter("cpf"));
    c.setTelefone(request.getParameter("telefone"));
    c.setEmail(request.getParameter("email"));
    c.setEndereco(request.getParameter("endereco"));
    Bd.getCliente().add(c);
    response.sendRedirect(request.getRequestURI());
    }
            // removendo dados 
    else if(request.getParameter("del")!= null){
        int i = Integer.parseInt(request.getParameter("i"));
        Bd.getCliente().remove(i);
        response.sendRedirect(request.getRequestURI());
    }       // altera usando variaveis auxiliar
    else if(request.getParameter("alt")!= null){
    int i = Integer.parseInt(request.getParameter("i"));
      n = Bd.getCliente().get(i).getNome();
                r = Bd.getCliente().get(i).getRg();
                cp = Bd.getCliente().get(i).getCpf();
                t = Bd.getCliente().get(i).getTelefone();
                e = Bd.getCliente().get(i).getEmail();              
                en = Bd.getCliente().get(i).getEndereco();
                Bd.getCliente().remove(i);
    
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
                    <td><input class="form-control" type="text" name="nome" placeholder="Ex. João"/></td>
                </tr>
                <tr>
                    <td>RG:</td>
                    <td><input class="form-control" type="text" name="rg" placeholder="12.345.678-9"/></td>
                </tr>
                <tr>
                    <td>CPF:</td>
                    <td><input class="form-control" type="text" name="cpf" placeholder="123.456.789-00"/></td>
                </tr>
                <tr>
                    <td>Telefone:</td>
                    <td><input class="form-control" type="text" name="telefone" placeholder="01399999-9999"/></td>
                </tr>
                <tr>
                    <td>E-Mail:</td>
                    <td><input class="form-control" type="text" name="email" placeholder="email@example.com"/></td>
                </tr>
                <tr>
                    <td>Endereço:</td>
                    <td><input class="form-control" type="text" name="endereco" placeholder="Ex. Rua 123"/></td>
                </tr>
            </table> 
            <br/>
                    <input type="submit" name="add" value="Adicionar" class="btn btn-info  btn-lg"/>
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
            <% for(int i = 0; i<Bd.getCliente().size();i++){%>
            <% Clientes c = Bd.getCliente().get(i);%>
            <tr>
                <td><%= i%></td>
                <td><%= Bd.getCliente().get(i).getNome()%></td>
                <td><%= Bd.getCliente().get(i).getRg()%></td>
                <td><%= Bd.getCliente().get(i).getCpf()%></td>
                <td><%= Bd.getCliente().get(i).getTelefone()%></td>
                <td><%= Bd.getCliente().get(i).getEmail()%></td>
                <td><%= Bd.getCliente().get(i).getEndereco()%></td>
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
            <%}catch(Exception ex){%>
            
             <%}%>
             <!-- Carregando foorte-->
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>

