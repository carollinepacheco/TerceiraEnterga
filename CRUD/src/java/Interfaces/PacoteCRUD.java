
package Interfaces;

import Modelo.Pacote;
import java.util.List;


public interface PacoteCRUD {
    public List listar();
    public Pacote list(int id);
    public boolean add(Pacote pac);
    public boolean edit(Pacote pac);
    public boolean deletar(int id);
}
