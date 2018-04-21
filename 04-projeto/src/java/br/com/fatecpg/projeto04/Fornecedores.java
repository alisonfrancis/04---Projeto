package br.com.fatecpg.projeto04;

import java.util.ArrayList;

public class Fornecedores {
    private static ArrayList<Fornecedores> Fornecedor = new ArrayList <>();
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
    
    public static Fornecedores fornecedorPk(int i) {
        try {
            for (Fornecedores fornecedor : Fornecedor) {
                if (fornecedor.pk == i) {
                    return fornecedor;
                }
            }
        } catch (Exception ex) {
            System.out.println("Errou!");
            return null;
        }
        return null;
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
}
