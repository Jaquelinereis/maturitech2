<%-- 
    Document   : recebedadoscliente
    Created on : 4 de nov de 2020, 10:07:41
    Author     : entra21
--%>

<%@page import="modelos.Cliente"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>

<%
  Cliente cli = new Cliente();
  if(cli.userExiste(request.getParameter("usuario"))){
    String msg = "Usuário já existe!";
    response.sendRedirect("informacao.jsp?msg="+ msg);
  }
  else{
     cli.setCpf(request.getParameter("cpf"));
     cli.setNome(request.getParameter("nome"));
     cli.setEmail(request.getParameter("email"));
     cli.setFone(request.getParameter("fone"));
     cli.setNumerocartao(request.getParameter("numerocartao"));
     cli.setUsuario(request.getParameter("usuario"));
     cli.setSenha(request.getParameter("senha"));
     if (cli.salvar()){
         //direciona para a página de informações
         String msg = "Cliente salvo com sucesso";
         response.sendRedirect("consultacliente.jsp?msg=" + msg);
     }
  }

%>

</html>