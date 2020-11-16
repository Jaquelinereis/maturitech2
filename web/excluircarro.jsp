<%-- 
    Document   : excluircarro
    Created on : 9 de nov de 2020, 08:29:34
    Author     : entra21
--%>

<%@page import="modelos.Carro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir carro</title>
    </head>
    <body>
        <h1>Excluir carro</h1>
         <hr/>
         <%
             String placacarro = request.getParameter("placacarro");

             Carro c = new Carro();
             if (placacarro != null) {
                 c = c.consultar(placacarro);

                 if(c.excluir()) {
                     out.write("Carro excluído com sucesso");
                 } else {
                     out.write("Erro ao excluir carro");
                 }

             }

         %>
        
    </body>
</html>
