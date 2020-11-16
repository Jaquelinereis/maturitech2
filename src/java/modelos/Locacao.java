/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

import java.sql.Date;
import utils.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;


        
        

 
public class Locacao {
  private int id;
  private Date datadevolucao;
  private String placacarro;
  private String cfpcliente;
  private Date dataentrega;
  private Date data;  
  
  
  public List<Locacao> consultar(String cliente){
     List<Locacao> lista = new ArrayList<>();
     Connection con = Conexao.conectar();     
     String sql = "select id, placacarro, cpfcliente, data, dataentrega";
            sql += " from locacao where cpfcliente = ?";
      try {
          PreparedStatement stm = con.prepareStatement(sql);
          stm.setString(1, cliente);
          ResultSet rs = stm.executeQuery();
         
          while(rs.next()){
             Locacao locacao = new Locacao();
             locacao.setId(rs.getInt("id"));
             locacao.setCfpcliente(rs.getString("cpfcliente"));
             locacao.setPlacacarro(rs.getString("placacarro"));
             locacao.setData(rs.getDate("data"));
             locacao.setDataentrega(rs.getDate("dataentrega"));
             
             lista.add(locacao);
          }
      } catch (SQLException ex) {
          System.out.println("Erro: " + ex.getMessage());
      }     
     return lista;
  }

    public boolean salvar(){
        Connection con = Conexao.conectar();
        String sql = "insert into locacao(placacarro,cpfcliente,dataentrega,data)";
               sql += "values(?,?,?,?)";
      try {
          PreparedStatement stm = con.prepareStatement(sql);
          stm.setString(1, this.placacarro);
          stm.setString(2, this.cfpcliente);
          stm.setDate(3, this.dataentrega);
          stm.setDate(4, this.data);
          
          stm.execute();
      } catch (SQLException ex) {
          System.out.println("Erro: " + ex.getMessage());
      }
        return true;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDatadevolucao() {
        return datadevolucao;
    }

    public void setDatadevolucao(Date datadevolucao) {
        this.datadevolucao = datadevolucao;
    }

    public String getPlacacarro() {
        return placacarro;
    }

    public void setPlacacarro(String placacarro) {
        this.placacarro = placacarro;
    }

    public String getCfpcliente() {
        return cfpcliente;
    }

    public void setCfpcliente(String cfpcliente) {
        this.cfpcliente = cfpcliente;
    }

    public Date getDataentrega() {
        return dataentrega;
    }

    public void setDataentrega(Date dataentrega) {
        this.dataentrega = dataentrega;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }
}


        

