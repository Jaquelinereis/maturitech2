<%-- 
    Document   : recebeeditacliente
    Created on : 9 de nov de 2020, 10:27:13
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
        <h1>Cliente editado</h1>
        <hr />
        <%
        String cpf = request.getParameter("cpf");
        String nome = request.getParameter("nome");
        String numerocartao = request.getParameter("numerocartao");
        String email = request.getParameter("email");
        String fone = request.getParameter("fone"
                + "");
        
        
        Cliente cliente = new Cliente();
        cliente.setCpf(cpf);
        cliente.setNome(nome);
        cliente.setNumerocartao(numerocartao);
        cliente.setEmail(email);
        cliente.setFone(fone);
        
        
        if(cliente.alterar()){
            out.write("Cliente alterado com sucesso");
        }
        else
        {
            out.write("Erro ao alterar cliente");
        }
        
        


        %>
    </body>
</html>
