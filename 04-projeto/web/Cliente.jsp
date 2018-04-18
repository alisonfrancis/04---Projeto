<%-- 
    Document   : Cliente - projeto 04
    Created on : 18/04/2018, 09:31:03
    Author     : user
--%>

<%@page import="br.com.fatecpg.projeto04.Bd"%>
<%@page import="br.com.fatecpg.projeto04.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
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
    
    if(request.getParameter("del")!= null){
        int i = Integer.parseInt(request.getParameter("i"));
        Bd.getCliente().remove(i);
        response.sendRedirect(request.getRequestURI());
    }

%>
<html>
     <!-- include do cabeçalho -->
    <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
    <!-- Fim do include do cabeçalho-->
    <body>
        <a href="Home.jsp">Home</a>
        <h4>Adicionar Clientes</h4>
        <fieldset><center>
           
            <form>
                Nome: <br/><input type="text" name="nome"/><br/>
                Rg:<br/><input type="text" name="rg"/><br/>
                Cpf:<br/><input type="text" name="cpf"/><br/>
                Telefone:<br/><input type="text" name="telefone"/><br/>
                E-Mail:<br/><input type="text" name="email"/><br/>
                Endereço:<br/><input type="text" name="endereco"/><br/>
                <br/><input type="submit" name="add" value="Adicionar"/><br/>
            </form> </center>           
        </fieldset><hr/>
        
        <table class="table table-hover">
            <thead class="thead-light"> <tr>
                <th scope="row">Indice</th>
                <th>Nome</th>
                <th>RG</th>
                <th>CPF</th>
                <th>telefone</th>
                <th>Email</th>
                <th>Endereço</th>
                <th>Exclusão</th>
                </tr></thead>
 
            <% for(int i = 0; i<Bd.getCliente().size();i++){%>
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
                        <input type="submit" name="del" value="Excluir">
                    </form>
                </td>
            </tr>
            <%}%>
            
        </table>

    </body>
</html>
