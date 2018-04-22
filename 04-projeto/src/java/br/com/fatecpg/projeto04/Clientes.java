/*
 
 */
package br.com.fatecpg.projeto04;

import java.util.ArrayList;

public class Clientes {
    
    private static ArrayList<Clientes> Cliente1 = new ArrayList <>();   
    private String nome;
    private String rg;
    private String cpf;
    private String telefone;
    private String email;
    private String endereco;
     private int pk;
    // copia da class fornecedor
     public static void setCliente(ArrayList<Clientes> cliente) {
        cliente = Cliente1;
    }
     
     public static ArrayList<Clientes> getCliente1(){
        return Cliente1;
    }
     public static int adicionar(Clientes cliente) {
        try {
            Cliente1.add(cliente);
            return cliente.pk;
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            return 0;
        }
    }
    
    public static Clientes clientePk(int pk) {
        try {
            for (Clientes Cliente : Cliente1) {
                if (Cliente.pk == pk) {
                    return Cliente;
                }
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            return null;
        }
        return null;
    }
    
    public static boolean alterar(Clientes dados, int id) {
        try {
            for (Clientes Cliente : Cliente1) {
                if (Cliente.pk == id) {
                    int index = Cliente1.indexOf(Cliente);
                    dados.setPk(id);
                    Cliente1.set(index, dados);
                    return true;
                }
            }
            return true;
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            return false;
        }
    }

    public static boolean excluir(int id) {
        try {
            for (Clientes cliente : Cliente1) {
                if (cliente.pk == id) {
                    Cliente1.remove(cliente);
                    return true;
                }
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            return false;
        }
        return false;
    }

        public Clientes(String nome, String rg, String cpf, String email, String telefone, String endereco) {
        try {
            this.pk = (int)(Math.random() * 1000);
            this.nome = nome;
            this.rg = rg;
            this.cpf = cpf;
            this.email = email;
            this.telefone = telefone;
            this.endereco = endereco;
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    
        }
  
    // fim do codigo
     public int getPk() {
        return pk;
    }

    public void setPk(int pk) {
        this.pk = pk;
    }


    public String getNome(){
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

   public static ArrayList<Clientes> getLista() {
        return Cliente1;
    }

    public static void setLista(ArrayList<Clientes> Cliente) {
        Clientes.Cliente1 = Cliente;
    }
}
