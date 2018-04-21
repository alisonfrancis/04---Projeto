package br.com.fatecpg.projeto04;

public class Fornecedores {
    private String nome; /* Nome do fornecedore */
    private String razsoc; /* Razão social */
    private String cnpj; /* cnpj do fornecedor */
    private String telefone; /* Telefone do fornecedor: */
    private String email;  /* E-mail do fornecedor: */
    private String endereco; /* Endereço do fornecedor: */

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
