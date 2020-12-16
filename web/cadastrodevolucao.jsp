<%-- 
    Document   : editarlocacao
    Created on : 18 de nov de 2020, 10:03:39
    Author     : entra21
--%>

<%@page import="modelos.Locacao"%>
<%@page import="modelos.Carro"%>
<%@page import="modelos.Cliente"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           String idlocacao = request.getParameter("idlocacao");
           Locacao locacao = new Locacao();
           ResultSet rs = locacao.consultarInner(Integer.parseInt(idlocacao));
           String placa = "";
           String cliente = "";
           if (rs.next()){
               locacao.setId(rs.getInt("id"));
               locacao.setCfpcliente(rs.getString("cpfcliente"));
               locacao.setPlacacarro(rs.getString("placacarro"));
               locacao.setData(rs.getDate("data"));
               locacao.setDataentrega(rs.getDate("dataentrega"));
               placa = rs.getString("placa") + " - " + rs.getString("modelo");
               cliente = rs.getString("cpfcliente") + " - " + rs.getString("nome");
           }
           
           String km = request.getParameter("km");
           if (km != null){   
               String datadevolucao = request.getParameter("datadevolucao");
              
               locacao.setDatadevolucao(Date.valueOf(datadevolucao));
               locacao.alterar();
               Carro carro = new Carro();
               carro = carro.consultar(rs.getString("placa"));
               carro.setKm(Integer.parseInt(km));
               carro.alterar();
           }   
        %>
        <h1>Registrar devolução</h1>
        <hr />
        <form action="cadastrodevolucao.jsp" method="POST">
            <label>Id Locação</label> 
            <input type="text" name="idlocacao" readonly="true" 
                   value="<%out.write(""+locacao.getId());%>" /><br />
            
            <label>Carro</label>
            <input type="text"  readonly="true" 
                   value="<%out.write(placa);%>" /> <br />
            
            <label>Cliente</label> 
            <input type="text" readonly="true" 
                   value="<%out.write(cliente);%>" /><br />
            
            <label>Data devolução</label>
            <input type="date" name="datadevolucao" /> <br />
           
            <label>Informe km do veículo</label>
            <input type="number" name="km" />
            <hr />
            <input type="submit" value="Registrar" />
        </form>     
    </body>
</html>
