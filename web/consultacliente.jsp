<%-- 
    Document   : consultacliente
    Created on : 4 de nov de 2020, 10:08:04
    Author     : entra21
--%>

<%@page import="java.util.List"%>
<%@page import="modelos.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style/estilos.css">
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
        <header>
            <script src="scripts/cabecalho.js" ></script>
        </header>
         <section>
            <nav>
        <script src="scripts/menu.js" > </script>
         </nav>
             <article>
        <h1>Consulta cliente</h1>
         <hr />
       <%
           Cliente cliente = new Cliente();
           List<Cliente> clientes = cliente.consultar();
           
       %>
        <table>
        <head>
        <th>Cpf</th>
        <th>Nome</th>
        <th>Número do cartão</th>
        <th>E-mail</th>
        <th>Telefone</th>
        
        <th>Excluir</th>
        <th>Editar</th>
        
         </head> 
         <tbody>
             
       
             <% for(Cliente c: clientes) {%>
             <tr>
                 <td><% out.write(c.getCpf());%></td>
                 <td><% out.write(c.getNome());%></td>
                 <td><% out.write(c.getNumerocartao());%></td>
                 <td><% out.write(c.getEmail());%></td>
                 <td><% out.write(c.getFone());%></td>
                 
                 
              <td><%out.write("<a href=excluircliente.jsp?cpfcliente="+c.getCpf()+">Excluir</a>");%></td>   
              <td><%out.write("<a href=editarcliente.jsp?cpfcliente="+c.getCpf()+">Editar</a>");%></td>   
             </tr>
             <%}%>
             
         </tbody>
    </table>
             <footer>
            <script src="scripts/rodape.js"></script>
        </footer>   
    </body>
</html>
