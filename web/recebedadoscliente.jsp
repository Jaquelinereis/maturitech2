<%-- 
    Document   : recebedadoscliente
    Created on : 4 de nov de 2020, 10:07:41
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
        <h1>Locacar</h1>
        <%
        String cpf = request.getParameter("cpf");
        String nome = request.getParameter("nome");
        String numerocartao = request.getParameter("numerocartao");
        String email = request.getParameter("email");
        String fone = request.getParameter("fone");
        
        
        Cliente cliente = new Cliente();
        cliente.setCpf(cpf);
        cliente.setNome(nome);
        cliente.setNumerocartao(numerocartao);
        cliente.setEmail(email);
        cliente.setFone(fone);
        
        if(cliente.salvar()){
            out.write("Cliente salvo com sucesso");
        }else
        {
            out.write("Erro ao salver cliente");
        }
        
        

        %>
        
    </body>
</html>
