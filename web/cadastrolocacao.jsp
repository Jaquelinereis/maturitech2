<%-- 
    Document   : cadastrolocacao
    Created on : 11 de nov de 2020, 08:11:49
    Author     : entra21
--%>

<%@page import="modelos.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="modelos.Carro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style/estilos.css">
        <style>
             div{
                display: block;
                margin-left: auto;
                margin-right: auto;
                width: 500px;
                border: blue solid 2px;
                margin-bottom: 10px;
                padding: 20px;
            }
            input[type=button]{
                color: blue;
                
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
                <div>    
        <h1>Cadastro locação</h1>
        <hr/>
        <%
            //verifica sessão
            String usuario = (String) session.getAttribute("usuario");
            if(usuario == null){
                response.sendRedirect("login.jsp");
            }
        %>
        <%
            Carro carro = new Carro();
            List<Carro> carros = carro.consultar();

            Cliente cliente = new Cliente();
            List<Cliente> clientes = cliente.consultar();

        %>  

        <form action="recebedadoslocacao.jsp" method="POST">
            <label>Selecione o carro para locação </label>
            <select name="placacarro">
                <% for (Carro c : carros) { %>
                <option value="<%out.write(c.getPlaca());%>">
                    <% out.write(c.getPlaca() + " - " + c.getModelo()); %>
                </option>
                <%}%>
            </select> 
            <br />
            <label>Selecione o cliente para locação </label>
            <select name="cpfcliente">
                <% for (Cliente c : clientes) {%>
                <option value="<%out.write(c.getCpf());%>">
                    <% out.write(c.getNome() + "-" + c.getCpf()); %>
                </option>
                <%}%>
            </select>
            <br />
            <label>Informe a data</label>
            <input type="date" name="dataentrega" />
            <hr />
            <input type="submit" value="Salvar"  />
            
                </div>
</article>
        </section>
        </form>
               
            <footer>
            <script src="scripts/rodape.js"></script>
        </footer>  
            </article>
        </section>

        

    </body>
</html>
