<%-- 
    Document   : cadastrocarro
    Created on : 30 de out de 2020, 08:34:35
    Author     : entra21
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Locacar - cadastro carro</title>
       
    </head>
    <body>
        <h1>Cadastro carro</h1>
        <hr />
        <form action="recebedadoscarro.jsp" method="POST">
            <label> Informe a placa</label>
            <input type="text" name="placa" />

            <br />
            <label> Informe a marca</label>
            <input type="text" name="marca" />

            <br />
            <label> Informe a modelo</label>
            <input type="text" name="modelo" />

            <br />
            <label> Informe km</label>
            <input type="number" name="km" />


            <br />
            <input type="checkbox" name="arcondicionado">
            Ar condicionado?</input>

            <br />
            <input type="checkbox" name="direcaohidraulica" checked="true">
            Direção hidrálica?</input>
            <hr />
            <input type="submit" value="Salvar" />
        </form>
    </body>

</html>