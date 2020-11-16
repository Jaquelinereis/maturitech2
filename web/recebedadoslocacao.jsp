<%-- 
    Document   : recebedadoslocacao
    Created on : 11 de nov de 2020, 08:46:55
    Author     : entra21
--%>

<%@page import="java.sql.Date"%>
<%@page import="modelos.Locacao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Locação</h1>
        <%
            String placacarro = request.getParameter("placacarro");
            String cpfcliente = request.getParameter("cpfcliente");
            String dataentrega = request.getParameter("dataentrega");
            
            Locacao locacao = new Locacao();
            locacao.setPlacacarro(placacarro);
            locacao.setCfpcliente(cpfcliente);
            locacao.setData(Date.valueOf(dataentrega));
            locacao.setDataentrega(Date.valueOf(dataentrega));
            
            if (locacao.salvar()) {
                out.write("Locação registrada com sucesso");
            }
            
        %>
    </body>
</html>
