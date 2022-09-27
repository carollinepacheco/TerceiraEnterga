
package Interfaces;

import Modelo.Promocao;
import java.util.List;


public interface PromoCRUD {
    public List listar();
    public Promocao list(int id);
    public boolean add(Promocao promo);
    public boolean edit(Promocao promo);
    public boolean deletar(int id);
}
