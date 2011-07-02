package modelo;

public class Contato
{

   private int cod_contato;
   private String nome;
   private int idade;
   private String tel;
   private String mensagem;

    public Contato() {
    }

    public int getCod_contato() {
        return cod_contato;
    }

    public void setCod_contato(int cod_mensagem) {
        this.cod_contato = cod_mensagem;
    }


    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }


 
    public String getMensagem() {
        return mensagem;
    }

    public void setMensagem(String mensagem) {
        this.mensagem = mensagem;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }



}