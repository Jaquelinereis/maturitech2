<%-- 
    Document   : editarcarro
    Created on : 6 de nov de 2020, 08:36:28
    Author     : entra21
--%>

<%@page import="modelos.Carro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar carros</title>
    </head>
    <body>
        <h1>Edição de carros</h1>
        <hr/>
        <%
            String placacarro = request.getParameter("placacarro");
           
            Carro c = new Carro();
            if (placacarro != null){
              c = c.consultar(placacarro);
          } 
            
        %>
        <form action="recebeeditacarro.jsp" method="POST">
            
            <label> Placa Carro</label>
            <input type="text" name="placa"
               
                   value="<%out.write(c.getPlaca());%>"/>
            <br />
            <label>Marca</label>
            <input type="text" name="marca" 
                   value="<%out.write(c.getMarca());%>"/>
            <br/>
            <label> Modelo</label>
            <input type="text" name="modelo"
                   
                   value="<%out.write(c.getModelo());%>"/>
            <br/>
            <label> Km</label>
            <input type="text" name="km"
                   
                   value="<%out.write(""+c.getKm());%>"/>
            
            <br />
            <input type="checkbox"
                   name="arcondicionado"
                   <% if (c.isArcondicionado()){
                           out.write("checked");}%>
                           >Ar condicionado? </input>
            <br />
            <input type="checkbox"
                   name="direcaohidraulica" 
                   <%if (c.isDirecaohidraulica()){
                           out.write("checked");}%>"
                   >Direção hidraulica? </input>
            <hr/>
         <input type="submit" value="Editar" />   
        </form>
        
    </body>
</html>
