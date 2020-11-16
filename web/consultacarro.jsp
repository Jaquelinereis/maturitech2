<%-- 
    Document   : consultacarro
    Created on : 30 de out de 2020, 08:36:08
    Author     : entra21
--%>

<%@page import="java.util.List"%>
<%@page import="modelos.Carro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 70%;
            }

            td, th {
                border: 1px solid #B0E0E6;
                text-align: center;
                padding: 7px;
            }

            tr:nth-child(even) {
                background-color: #B0E0E6;
            }
        </style>
    </head>
    <body>
        <h1>Consulta carro</h1>
        <hr />
        <%
            Carro carro = new Carro();
            List<Carro> carros = carro.consultar();

        %>
        <table>
            <thead>
            <th>Placa</th>
            <th>Marca</th>
            <th>Modelo</th>
            <th>Km</th>
            <th>Tem Ar condicionado?</th>
            <th>Tem direção hidráulica?</th>
            <th>Editar</th>
            <th>Excluir</th>
        </thead> 
        <tbody>
            <% for (Carro c : carros) {%>
            <tr>
                <td><% out.write( c.getPlaca());%></td>
                <td><% out.write(c.getMarca());%></td>
                <td><% out.write(c.getModelo());%></td>
                <td><% out.write("" + c.getKm());%></td>
                <% if (c.isArcondicionado()) {%>
                <td>Sim</td>
                <%} else {%>
                <td>Não</td>
                <%}%>
                <%
                    if (c.isDirecaohidraulica()) {
                        out.write("<td>Sim</td>");
                    } else {
                        out.write("<td>Não</td>");
                    }
                %>
               <td><%out.write("<a href=editarcarro.jsp?placacarro="+c.getPlaca()+">Editar</a>");%></td>    
                <td><%out.write("<a href=excluircarro.jsp?placacarro="+c.getPlaca()+">Excluir</a>");%></td>   
            </tr>
            <%}%>

        </tbody>
</table>
</body>
</html>


