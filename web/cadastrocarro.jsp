

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Locacar - cadastro carro</title>
       <link rel="stylesheet" href="style/estilos.css">
       <style>
            
                
            
             input[type=checkbox]{
                display: block;
                position: absolute;
                margin-left: 130px;                
            }
            
            input[type=button],[type=reset]{
                display: block;
                width: 100px;
                margin-left: auto;
                margin-right: auto; 
                margin-top: 10px;
            }
            
            
            input[type=text]:focus{
                background-color: white;                                              
            }
             input[type=number]:focus{
                background-color: white;                                              
            }
            
            input[type=text], [type=number]{
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
             <script src="scripts/menu.js" > </script>  
            </nav>
            
            <article>
                <div>
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
                        <input type="button" value="Salvar" onclick="enviaForm()" />
                        <input type="reset" value="Limpar" />
                    </form>
                </div>
                 </article>
        </section>
        <footer>
            <script src="scripts/rodape.js"></script>
        </footer>             
        
        
            <script>
                function enviaForm(){
                    var placa = document.getElementsByName("placa");
                    if(placa[0].value === ""){
                    placa[0].focus();
                    alert("Informe a placa");
                    exit();
                    }
                    var marca = document.getElementsByName("marca");
                    if(marca[0].value === ""){
                    marca[0].focus();
                    alert("Informe a marca");
                    exit();
                    }
                    var modelo = document.getElementsByName("modelo");
                    if(modelo[0].value === "") {
                        modelo[0].focus();
                        alert("Informe o modelo");
                        exit();
                    }
                    var km = document.getElementsByName("km");
                    if(km[0].value === ""){
                        km[0].focus();
                        alert("Infome o km");
                        exit();
                        
                    }
                    
                    
                    
                    document.forms[0].submit();
                }
            </script>
        
    </body>

</html>
