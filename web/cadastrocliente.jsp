

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Locacar cadastro cliente</title>
        <link rel="stylesheet" href="style/estilos.css">
        <style>
            
                
            
             input[type=checkbox]{
                display: block;
                position: absolute;
                margin-left: 130px;                
            }
            
            input[type=button],[type=reset]{
                display: block;
                width: 60px;
                margin-left: auto;
                margin-right: auto; 
                margin-top: 10px;
            }
            
            
            input[type=text]:focus{
                background-color: white;                                              
            }
            input[type=number],[type=password]:focus{
                background-color: white;                                              
            }
             
            
            input[type=text], [type=number], [type = password]{
                position: relative;
                background-color: silver;
                margin-left: 130px; 
                width: 250px;                                
            }
            label{
                display: block;
                position: absolute;
                margin-left: 10px;                 
            }
            
            div{
                display: block;
                margin-left: auto;
                margin-right: auto;
                width: 400px;
                border: blue solid 2px;
                margin-bottom: 10px;
                padding: 20px;
            }
        </style>
    </head>
    <body>
        <header>
            <script src="scripts/cabecalho.js" ></script>
        </header>
        <section>
            <nav>
                <script src="scripts/menu.js"></script>  
            </nav>
            <article>
                <div>


                <h1>Cadastro cliente</h1>

                <hr />
                <p id="erros"></p>
                <form action="recebedadoscliente.jsp" method="POST">
                    <label> Informe o cpf</label>
                    <input type="text" name="cpf" />
                    <label id="erroCpf" class="error"></label>
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
                    
                    <label>Informe usuário</label><br />
                <input type="text" name="usuario" /> 
                
                <label>Informe senha</label><br />
                <input type="password" name="senha" /> 

                    <hr />
                    <input type="button" value="Salvar" onclick="enviaDados()" />
                    <input type="reset" value="Limpar" />
                </form>
                </div>
            </article>
        </section>
        <footer>
            <script src="scripts/rodape.js"></script>
        </footer>  
        <script>
            function enviaDados(){
               var semErros = true; 
               var erros = document.getElementById("erros"); 
               var cpf =document.getElementsByName("cpf");
               if(cpf[0].value === ""){
                 erros.innerHTML = "Informe cpf";
                 document.getElementById("erroCpf").innerHTML = "Informe cpf";
                // cpf[0].focus();
                 semErros = false;

                }

                 var nome =document.getElementsByName("nome");
               if(nome[0].value === ""){
                 erros.innerHTML += "<br>Informe nome";
                 nome[0].style="border: red solid 5px";
                 //nome[0].focus();
                 semErros = false;
               }
               if(semErros)
                  document.forms[0].submit();
            }
            
            





        </script>

    </body>
</html>
