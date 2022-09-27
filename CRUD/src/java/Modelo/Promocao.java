
package Modelo;


public class Promocao {
    private int id;
    private String nome;
    private String tipo;
    private double desconto;
    private int idPacote;

    public Promocao() {
    }

    public Promocao(String nome, String tipo, double desconto, int idPacote) {
        this.nome = nome;
        this.tipo = tipo;
        this.desconto = desconto;
        this.idPacote = idPacote;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public double getDesconto() {
        return desconto;
    }

    public void setDesconto(double desconto) {
        this.desconto = desconto;
    }

    public int getIdPacote() {
        return idPacote;
    }

    public void setIdPacote(int idPacote) {
        this.idPacote = idPacote;
    }

    
    
}
