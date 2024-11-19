<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Boletim</title>
    </head>
    <body>
        <h1>Boletim</h1>
        <form action="#">
            <label>
                Nome:
                <input type="text" name="n_nome" placeholder="Escreva seu nome" >
            </label>

            <label>
                Nota 1:
                <input type="text" name="n_nota1" placeholder="0,0" >
            </label>

            <label>
                Nota 2:
                <input type="text" name="n_nota2" placeholder="0,0">
            </label>

            <input type="submit" value="Calcular média" name="calcular">

            <h2>
                <%
                    String nome = request.getParameter("n_nome");
                    String nota1 = request.getParameter("n_nota1");
                    String nota2 = request.getParameter("n_nota2");
                    
                    if(nome == null || nota1 == null || nota2 == null){
                        out.print("Preencha todos os campos");
                    } else{
                        double media = (Double.parseDouble(nota1) + Double.parseDouble(nota2)) /2;
                        out.print("Olá "+nome+", sua média é "+media);
                    }
                %>
            </h2>
        </form>
    </body>
</html>
