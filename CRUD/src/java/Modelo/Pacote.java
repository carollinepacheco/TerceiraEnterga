
package Modelo;


public class Pacote {
    private int id;
    private String destino;
    private String hospedagem;
    private String diarias;
    private double preco;
    private int idFuncionario;

    public Pacote() {
    }

    public Pacote(String destino, String hospedagem, String diarias, double preco, int idFuncionario) {
        this.destino = destino;
        this.hospedagem = hospedagem;
        this.diarias = diarias;
        this.preco = preco;
        this.idFuncionario= idFuncionario;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public String getHospedagem() {
        return hospedagem;
    }

    public void setHospedagem(String hospedagem) {
        this.hospedagem = hospedagem;
    }

    public String getDiarias() {
        return diarias;
    }

    public void setDiarias(String diarias) {
        this.diarias = diarias;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }
    
    public int getidFuncionario() {
        return idFuncionario;
    }

    public void setidFuncionario(int idFuncionario) {
        this.idFuncionario = idFuncionario;
    }
}
