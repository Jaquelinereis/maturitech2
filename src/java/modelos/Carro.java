
package modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.Conexao;
import java.sql.ResultSet;


public class Carro {
    private String placa;
    private String marca;
    private String modelo;
    private int km;
    private boolean arcondicionado;
    private boolean direcaohidraulica;

    @Override
    public String toString() {
        return "Carro{" + "placa=" + placa + ", marca=" + marca + ", modelo=" + modelo + ", km=" + km + ", arcondicionado=" + arcondicionado + ", direcaohidraulica=" + direcaohidraulica + '}';
    }
    
    public boolean salvar(){
        String sql="insert into carro(placa, marca, modelo,";
               sql+= "km, arcondicionado, direcaohidraulica) ";
               sql+="values(?,?,?,?,?,?)";
               
        Connection  con = Conexao.conectar();
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, this.placa);
            stm.setString(2, this.marca);
            stm.setString(3, this.modelo);
            stm.setInt(4, this.km);
            stm.setBoolean(5, this.arcondicionado);
            stm.setBoolean(6, this.direcaohidraulica);
            stm.execute();
            
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
          return false;
        }
        return true;
    }
    public boolean alterar(){
         Connection  con = Conexao.conectar();
         String sql = "update carro set ";
                sql +="marca = ?,";
                sql +="modelo = ?,";
                sql +="km = ?,";
                sql +="arcondicionado = ?,";
                sql +="direcaohidraulica = ? ";
                sql +="where placa = ?";
                  
                
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            
            stm.setString(1, this.marca);
            stm.setString(2, this.modelo);
            stm.setInt(3, this.km);
            stm.setBoolean(4, this.arcondicionado);
            stm.setBoolean(5, this.direcaohidraulica);
            stm.setString(6, this.placa);
            
            stm.execute();
            
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
          return false;
        }
        return true;
        
        
    }
    public boolean excluir(){
        Connection  con = Conexao.conectar();
         String sql = " delete from carro" ;
                sql +=" where placa = ?";
                
                
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            
            
            stm.setString(1, this.placa);
            
            stm.execute();
            
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
          return false;
        }
        
        
        return true;
    }
    public Carro consultar(String placa){
        Connection con = Conexao.conectar();
        String sql = "select placa, marca, modelo, km,"
                + "arcondicionado, direcaohidraulica"
                + " from carro where placa = ?";
        Carro carro = null;
        try {
            PreparedStatement stm = con.prepareStatement(sql);
           stm.setString(1, placa);
           ResultSet rs = stm.executeQuery();
           if(rs.next()){
               carro = new Carro();
               carro.setPlaca(rs.getString("placa"));
               carro.setMarca(rs.getString("marca"));
               carro.setModelo(rs.getString("modelo"));
               carro.setKm(rs.getInt("km"));
               carro.setArcondicionado(rs.getBoolean("arcondicionado"));
               carro.setDirecaohidraulica(rs.getBoolean("direcaoHidraulica"));
               
             
           }
           
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
        }
        return  carro;
    }
    public List<Carro> consultar(){
        List<Carro>lista = new ArrayList<>();
        
        
        Connection con = Conexao.conectar();
        String sql = "select placa, marca, modelo, km,"
                + "arcondicionado, direcaohidraulica"
             
                + " from carro ";
        
        try {
            PreparedStatement stm = con.prepareStatement(sql);
           
           ResultSet rs = stm.executeQuery();
           
           while(rs.next()){
              Carro  carro = new Carro();
               carro.setPlaca(rs.getString("placa"));
               carro.setMarca(rs.getString("marca"));
               carro.setModelo(rs.getString("modelo"));
               carro.setKm(rs.getInt("km"));
               carro.setArcondicionado(rs.getBoolean("arcondicionado"));
               carro.setDirecaohidraulica(rs.getBoolean("direcaoHidraulica"));
               
             lista.add(carro);
           }
           
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
        }
       
        return lista;
    }
    

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public int getKm() {
        return km;
    }

    public void setKm(int km) {
        this.km = km;
    }

    public boolean isArcondicionado() {
        return arcondicionado;
    }

    public void setArcondicionado(boolean arcondicionado) {
        this.arcondicionado = arcondicionado;
    }

    public boolean isDirecaohidraulica() {
        return direcaohidraulica;
    }

    public void setDirecaohidraulica(boolean direcaohidraulica) {
        this.direcaohidraulica = direcaohidraulica;
    }
 
    
}

    

