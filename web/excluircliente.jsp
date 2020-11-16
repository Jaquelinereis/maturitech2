<%-- 
    Document   : excluircliente
    Created on : 9 de nov de 2020, 10:15:20
    Author     : entra21
--%>

<%@page import="modelos.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bye bye cliente mala</h1>
        <hr/>
         <%
             String cpfcliente = request.getParameter("cpfcliente");

             Cliente c = new Cliente();
             if (cpfcliente != null) {
                 c = c.consultar(cpfcliente);

                 if(c.excluir()) {
                     out.write("Cliente excluído com sucesso");
                 } else {
                     out.write("Erro ao excluir cliente");
                 }

             }

         %>
        
    </body>
</html>
