<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Peso</title>
    </head>
    <body>
        <div>
            <%
                float peso = Float.parseFloat(request.getParameter("n_peso"));
                
                float pesoMais15 = peso * 1.15f;
                float pesoMenos20 = peso * 0.80f;
            %>
            
            <%=
               "<h1>Dados da pessoa</h1>"
                       + "<br> Peso atual: " +peso
                       + "<br> Peso com mais 15%: " + pesoMais15
                       + "<br> Peso com menos 20%: " + pesoMenos20 
            %>
        </div>
    </body>
</html>
