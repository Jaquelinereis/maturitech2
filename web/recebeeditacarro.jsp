<%-- 
    Document   : recebeeditacarro
    Created on : 6 de nov de 2020, 09:36:44
    Author     : entra21
--%>

<%@page import="modelos.Carro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Carro editado</h1>
        <hr />
        <%
        String placa = request.getParameter("placa");
        String marca = request.getParameter("marca");
        String modelo = request.getParameter("modelo");
        String km = request.getParameter("km");
        String arcondicionado = request.getParameter("arcondicionado");
        String direcaohidraulica =request.getParameter("direcaohidraulica");
        
        Carro carro = new Carro();
        carro.setPlaca(placa);
        carro.setMarca(marca);
        carro.setModelo(modelo);
        
        if(!km.equals(""))
        carro.setKm(Integer.parseInt(km));
        
        if(arcondicionado != null)
        carro.setArcondicionado(true);
        else carro.setArcondicionado(false);
        
        if(direcaohidraulica != null)
        carro.setDirecaohidraulica(true);
        else carro.setDirecaohidraulica(false);
        
        if(carro.alterar()){
            out.write("Carro alterado com sucesso");
        }
        else
        {
            out.write("Erro ao alterar carro");
        }
        
        


        %>
    </body>
</html>
