<%-- 
    Document   : editarcliente
    Created on : 9 de nov de 2020, 10:26:49
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
        <h1>Editar cliente</h1>
        <hr/>
        <%
            String cpfcliente = request.getParameter("cpfcliente");
           
            Cliente c = new Cliente();
            if (cpfcliente != null){
              c = c.consultar(cpfcliente);
          } 
            
        %>
        <form action="recebeeditacliente.jsp" method="POST">
            
            <label> CPF do cliente</label>
            <input type="text" name="cpf"
               
                   value="<%out.write(c.getCpf());%>"/>
            <br />
            <label>Nome</label>
            <input type="text" name="nome" 
                   value="<%out.write(c.getNome());%>"/>
            <br/>
            <label> Número do cartão</label>
            <input type="text" name="numerocartao"
                   
                   value="<%out.write(c.getNumerocartao());%>"/>
            <br/>
            <label> E-mail</label>
            <input type="text" name="email"
                   
                   value="<%out.write(""+c.getEmail());%>"/>
            <br/>
            <label> Fone</label>
            <input type="text" name="fone"
                   
                   value="<%out.write(c.getFone());%>"/>
            
           
            <hr/>
         <input type="submit" value="Editar" />   
        </form>
        
    </body>
</html>
