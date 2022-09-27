
package ModeloDAO;

import Config.Conexao;
import Interfaces.PacoteCRUD;
import Modelo.Pacote;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PacoteDao implements PacoteCRUD{
    Conexao cn=new Conexao();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Pacote p=new Pacote();
    
    @Override
    public List listar() {
        ArrayList<Pacote>list=new ArrayList<>();
        String sql="select * from pacotes";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Pacote pac=new Pacote();
                pac.setId(rs.getInt("Id"));
                pac.setDestino(rs.getString("Destino"));
                pac.setHospedagem(rs.getString("Hospedagem"));
                pac.setDiarias(rs.getString("Diarias"));
                pac.setPreco(rs.getDouble("Preco"));
                pac.setidFuncionario(rs.getInt("idFuncionario"));
                list.add(pac);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Pacote list(int id) {
        String sql="select * from pacotes where Id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                p.setId(rs.getInt("Id"));
                p.setDestino(rs.getString("Destino"));
                p.setHospedagem(rs.getString("Hospedagem"));
                p.setDiarias(rs.getString("Diarias"));
                p.setPreco(rs.getDouble("Preco"));
                p.setidFuncionario(rs.getInt("idFuncionario"));
            }
        } catch (Exception e) {
        }
        return p;
    }

    @Override
    public boolean add(Pacote pac) {
       String sql="insert into pacotes (id,destino,hospedagem,diarias,preco,idFuncionario)values('"+pac.getId()+"','"+pac.getDestino()+"','"+pac.getHospedagem()+"','"+pac.getDiarias()+"','"+pac.getPreco()+"','"+pac.getidFuncionario()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public boolean edit(Pacote pac) {
        String sql="update pacotes set destino='"+pac.getDestino()+"',hospedagem='"+pac.getHospedagem()+"',diarias='"+pac.getDiarias()+ "',preco='"+pac.getPreco()+ "',idFuncionario='"+pac.getidFuncionario()+ "'where Id="+pac.getId();
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
        String sql="delete from pacotes where Id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
