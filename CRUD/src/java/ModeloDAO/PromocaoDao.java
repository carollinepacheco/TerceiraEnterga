
package ModeloDAO;

import Config.Conexao;
import Interfaces.PromoCRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Modelo.Promocao;

public class PromocaoDao implements PromoCRUD{
    Conexao cn=new Conexao();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Promocao promo=new Promocao();
    
       
    @Override
    public List listar() {
        ArrayList<Promocao>list=new ArrayList<>();
        String sql="select * from promocao";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Promocao pro=new Promocao();
                pro.setId(rs.getInt("Id"));
                pro.setNome(rs.getString("Nome"));
                pro.setTipo(rs.getString("Tipo"));
                pro.setDesconto(rs.getDouble("Desconto"));
                pro.setIdPacote(rs.getInt("idPacote"));
                list.add(pro);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Promocao list(int id) { 
        String sql="select * from promocao where Id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                promo.setId(rs.getInt("Id"));
                promo.setNome(rs.getString("Nome"));
                promo.setTipo(rs.getString("Tipo"));
                promo.setDesconto(rs.getDouble("Desconto"));
                promo.setIdPacote(rs.getInt("IdPacote")); 
            }
        } catch (Exception e) {
        }
        return promo; 
    }

    @Override
    public boolean add(Promocao promo) {
       String sql="insert into promocao (id,nome,tipo,desconto,idPacote)values('"+promo.getId()+"','"+promo.getNome()+"','"+promo.getTipo()+"','"+promo.getDesconto()+"','"+promo.getIdPacote()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public boolean edit(Promocao promo) {
        String sql="update set Nome='"+ promo.getNome()+"',Tipo='"+promo.getTipo()+"',Desconto='"+promo.getDesconto()+ "',IdPacote='"+promo.getIdPacote()+ "'where Id="+promo.getId();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean deletar(int id) {
        String sql="delete from promocao where Id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
