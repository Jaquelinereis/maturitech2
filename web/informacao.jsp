<%-- 
    Document   : informacao
    Created on : 10 de dez de 2020, 11:17:54
    Author     : entra21
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Locacar</title>
        <style>
           div{
               display: block;
               width: 300px;
               margin:auto;
               margin-top: 100px;
           }
           p{
               color: blue;
               font-size: 30px;
           }
        </style>
    </head>
    <body>
        <div>
            <a href="index.html"> <img src="imagens/home.png" width="100px" height="100px"/>
                <hr/>
                <img src="imagens/informacao.png" width="100px" height="100px"/> 
                <p>
                    <%
                        out.write(request.getParameter("msg"));
                    %>
                </p> 
        </div>  

    </body>
</html>

</body>
</html>
