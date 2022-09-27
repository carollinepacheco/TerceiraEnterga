
package Interfaces;


import java.util.List;
import Modelo.Funcionario;



public interface FunciCRUD {
    public Funcionario validar(String email, String senha);
    public List listar();
    public Funcionario list(int id);
    public boolean add(Funcionario func);
    public boolean edit(Funcionario func);
    public boolean deletar(int id);
}
