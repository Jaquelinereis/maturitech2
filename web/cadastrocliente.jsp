<%-- 
    Document   : cadastrocliente
    Created on : 4 de nov de 2020, 10:07:02
    Author     : entra21
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Locacar cadastro cliente</title>
    </head>
    <body>
        <h1>Cadastro cliente</h1>
        
        <hr />
        <form action="recebedadoscliente.jsp" method="POST">
        <label> Informe o cpf</label>
        <input type="text" name="cpf" />
        
        <br />
        <label> Informe o nome</label>
       <input type="text" name="nome" />
        
        <br />
        <label> Informe a número do cartão</label>
        <input type="text" name="numerocartao" />
        
        <br />
        <label> Informe e-mail</label>
        <input type="text" name="email" />
        
        <br />
        <label> Informe telefone</label>
        <input type="text" name="fone" />
        
        <hr />
        <input type="submit" value="Salvar" />
        </form>
        
    </body>
</html>
