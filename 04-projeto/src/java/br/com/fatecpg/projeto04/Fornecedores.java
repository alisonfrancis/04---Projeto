package br.com.fatecpg.projeto04;

import java.util.ArrayList;

public class Fornecedores {
    private static ArrayList<Fornecedores> Fornecedor = new ArrayList <>(); //Abaixo: Os atributos do Fornecedor
    private int pk; /* Valor/Chave único(a) de indetificação do fornecedor*/
    private String nome; /* Nome do fornecedore */
    private String razsoc; /* Razão social */
    private String cnpj; /* cnpj do fornecedor */
    private String telefone; /* Telefone do fornecedor: */
    private String email;  /* E-mail do fornecedor: */
    private String endereco; /* Endereço do fornecedor: */
    
    public static ArrayList<Fornecedores> getFornecedor(){
        return Fornecedor;
    }
    // Ações de adicionar, edita(salvar edições) e excluir Fornecedores
    public static int adicionar(Fornecedores fornecedor) {
        try {
            Fornecedor.add(fornecedor);
            return fornecedor.pk;
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            return 0;
        }
    }
    
    public static Fornecedores fornecedorPk(int pk) {
        try {
            for (Fornecedores fornecedor : Fornecedor) {
                if (fornecedor.pk == pk) {
                    return fornecedor;
                }
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            return null;
        }
        return null;
    }
    
    public static boolean alterar(Fornecedores dados, int id) {
        try {
            for (Fornecedores fornecedor : Fornecedor) {
                if (fornecedor.pk == id) {
                    int index = Fornecedor.indexOf(fornecedor);
                    dados.setPk(id);
                    Fornecedor.set(index, dados);
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
            for (Fornecedores fornecedor : Fornecedor) {
                if (fornecedor.pk == id) {
                    Fornecedor.remove(fornecedor);
                    return true;
                }
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            return false;
        }
        return false;
    }
    
        public Fornecedores(String nome, String razsoc, String cnpj, String email, String telefone, String endereco) {
        try {
            this.pk = (int)(Math.random() * 1000); //Cria um valor random pra Primary Key do Fornecedor
            this.nome = nome;
            this.razsoc = razsoc;
            this.cnpj = cnpj;
            this.email = email;
            this.telefone = telefone;
            this.endereco = endereco;
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    
    public int getPk() {
        return pk;
    }

    public void setPk(int pk) {
        this.pk = pk;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRazsoc() {
        return razsoc;
    }

    public void setRazsoc(String razsoc) {
        this.razsoc = razsoc;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
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
    
    public static ArrayList<Fornecedores> getLista() {
        return Fornecedor;
    }

    public static void setLista(ArrayList<Fornecedores> Fornecedor) {
        Fornecedores.Fornecedor = Fornecedor;
    }
}
