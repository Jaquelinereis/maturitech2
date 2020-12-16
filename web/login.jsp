<%-- 
    Document   : login
    Created on : 10 de dez de 2020, 08:15:15
    Author     : entra21
--%>

<%@page import="modelos.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style/estilos.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <style>
            div{
                display: block;
                width: 300px;
                margin-left: auto;
                margin-right: auto;
            }
        </style>
    </head>
    <body>
         <header>
            <script src="scripts/cabecalho.js" ></script>
        </header>
        <div>
            <h1>Tela de Login</h1>
            <form action="login.jsp" method="POST">
                <label>Usuário</label><br/>
                <input type="text" name="usuario" /> <br/>
                <label>Senha</label><br/>
                <input type="password" name="senha" /> <hr/>
                <input type="submit" value="Logar" /> 
                <a href="cadastrocliente.jsp"><input type="button" value="Cadastre-se" /></a>
            </form>        
        </div>   
        <%
          String usuario = request.getParameter("usuario");
          String senha = request.getParameter("senha");
          
          if((usuario != null) && (senha != null) && !(usuario.isEmpty())
                  && !(senha.isEmpty()) ){
            //crie a seção  
            
            if(Cliente.podeLogar(usuario, senha)){
            session.setAttribute("usuario", usuario);
            response.sendRedirect("cadastrolocacao.jsp");  
          }      
          }
        %>
        
        
        
    </body>
</html>
