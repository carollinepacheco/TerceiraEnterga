
package ModeloDAO;

import Config.Conexao;
import Interfaces.FunciCRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Modelo.Funcionario;

public class FuncionarioDao implements FunciCRUD{
    Conexao cn=new Conexao();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Funcionario fun=new Funcionario();
    
    @Override
     public Funcionario validar(String email, String senha) {
        Funcionario user =new Funcionario();
        String sql="select * from funcionario where email=? and senha=?";
        try {
            con = cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, senha);
            rs=ps.executeQuery();
            while (rs.next()) {  
                user.setId(rs.getInt("id"));
                user.setNome(rs.getString("nome"));
                user.setEmail(rs.getString("email"));
                user.setSenha(rs.getString("senha"));
            }
            
        } catch (Exception e) {
        }
        return user;
    }
    
    
    @Override
    public List listar() {
        ArrayList<Funcionario>list=new ArrayList<>();
        String sql="select * from funcionario";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Funcionario f=new Funcionario();
                f.setId(rs.getInt("Id"));
                f.setNome(rs.getString("Nome"));
                f.setEmail(rs.getString("Email"));
                f.setSenha(rs.getString("Senha"));
                list.add(f);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Funcionario list(int id) { 
        String sql="select * from funcionario where Id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                fun.setId(rs.getInt("Id"));
                fun.setNome(rs.getString("Nome"));
                fun.setEmail(rs.getString("Email"));
                fun.setSenha(rs.getString("Senha")); 
            }
        } catch (Exception e) {
        }
        return fun; 
    }

    @Override
    public boolean add(Funcionario fun) {
       String sql="insert into funcionario (id,nome,email,senha )values('"+fun.getId()+"','"+fun.getNome()+"','"+fun.getEmail()+"','"+fun.getSenha()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public boolean edit(Funcionario fun) {
        String sql="update set Nome='"+fun.getNome()+"',Email='"+fun.getEmail()+"',Senha='"+fun.getSenha()+ "'where Id="+fun.getId();
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
        String sql="delete from funcionario where Id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
