
package modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.Conexao;


public class Cliente {
  private String cpf;
  private String nome;
  private String numerocartao;
  private String email;
  private String fone;
  private String usuario;
  private String senha;
  
  
  public static boolean  podeLogar(String pUser, String pSenha){
      Connection con = Conexao.conectar();
      String sql = "select * from cliente where usuario = ? and senha = ?";
      try {
           PreparedStatement stm = con.prepareStatement(sql);
           stm.setString(1, pUser);
           stm.setString(2, pSenha);
           ResultSet rs = stm.executeQuery();
           return rs.next();            
           
       } catch (SQLException ex) {
           System.out.println("Erro: " + ex.getMessage());
       }
      return true;
   }  
  

    @Override
    public String toString() {
        return "Cliente{" + "cpf=" + cpf +
                ", nome=" + nome + 
                ", numerocartao=" + numerocartao + 
                ", email=" + email 
                + ", fone=" + fone + '}';
    }
    
    
    public boolean userExiste(String pUser){
      Connection con = Conexao.conectar();
      String sql = "select * from cliente where usuario = ?";
      try {
           PreparedStatement stm = con.prepareStatement(sql);
           stm.setString(1, pUser);
           ResultSet rs = stm.executeQuery();
           return rs.next();            
           
       } catch (SQLException ex) {
           System.out.println("Erro: " + ex.getMessage());
       }
      return true;
   }  
  
  
   public boolean salvar(){
       String sql="insert into cliente(cpf, nome, numerocartao, ";
               sql+= "email, fone, usuario, senha) ";
               sql+="values(?,?,?,?,?, ?, ?)";
               
        Connection  con = Conexao.conectar();
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, this.cpf);
            stm.setString(2, this.nome);
            stm.setString(3, this.numerocartao);
            stm.setString(4, this.email);
            stm.setString(5, this.fone);
            stm.setString(6, this.usuario);
            stm.setString(7, this.senha);
            stm.execute();
            
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
         return false; 
        }
        return true;
    }
       
       
     
       
   
   public boolean alterar(){
       Connection  con = Conexao.conectar();
         String sql = "update cliente set ";
                sql +="nome = ?,";
                sql +="numerocartao = ?,";
                sql +="email= ?,";
                sql +="fone = ?";
               
                sql +="where cpf = ?";
                  
                
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            
            stm.setString(1, this.nome);
            stm.setString(2, this.numerocartao);
            stm.setString(3, this.email);
            stm.setString(4, this.fone);
            stm.setString(5, this.cpf);
            
            stm.execute();
            
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
          return false;
        }
       
    
      return true;
       
   }
   
   public boolean excluir(){
       Connection  con = Conexao.conectar();
         String sql = " delete from cliente" ;
                sql +=" where cpf = ?";
                
                
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            
            
            stm.setString(1, this.cpf);
            
            stm.execute();
            
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
          return false;
        }
       
       
      return true;
       
   }
   
   public Cliente consultar(String cpf){
       Connection con = Conexao.conectar();
        var sql = "select cpf, nome, numerocartao, email, fone"
                + " from cliente where cpf = ? ";
        Cliente cliente = null;
        try {
            PreparedStatement stm = con.prepareStatement(sql);
           stm.setString(1, cpf);
           ResultSet rs = stm.executeQuery();
           if(rs.next()){
               cliente = new Cliente();
               cliente.setCpf(rs.getString("cpf"));
               cliente.setNome(rs.getString("nome"));
               cliente.setNumerocartao(rs.getString("numerocartao"));
               cliente.setEmail(rs.getString("email"));
               cliente.setFone(rs.getString("fone"));
              
               
             
           }
           
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
        }
      return cliente;
       
   }
   
   public List<Cliente> consultar(){
        List<Cliente>lista = new ArrayList<>();
        Connection con = Conexao.conectar();
        String sql = "select * from cliente";
             
        
        try {
            PreparedStatement stm = con.prepareStatement(sql);
           
           ResultSet rs = stm.executeQuery();
           
           while(rs.next()){
              Cliente  cliente = new Cliente();
               cliente.setCpf(rs.getString("cpf"));
               cliente.setNome(rs.getString("nome"));
               cliente.setNumerocartao(rs.getString("numerocartao"));
               cliente.setEmail(rs.getString("email"));
               cliente.setFone(rs.getString("fone"));
              
               
             lista.add(cliente);
           }
           
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
        }
        return lista;
    }
   
   
     
   
  

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getNumerocartao() {
        return numerocartao;
    }

    public void setNumerocartao(String numerocartao) {
        this.numerocartao = numerocartao;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFone() {
        return fone;
    }

    public void setFone(String fone) {
        this.fone = fone;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
  
}
