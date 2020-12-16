<%-- 
    Document   : recebedadoscarro
    Created on : 30 de out de 2020, 09:08:12
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
        <script src="scripts/menu.js" > </script>
        <h1>Locacar</h1>
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
        
        if(carro.salvar()){
            out.write("Carro salvo com sucesso");
        }else
        {
            out.write("Erro ao salver carro");
        }
        
        


        %>
    </body>
</html>
