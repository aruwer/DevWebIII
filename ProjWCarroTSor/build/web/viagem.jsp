<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%
                double preco = Double.parseDouble(request.getParameter("n_preco"));
                double autonomia = Double.parseDouble(request.getParameter("n_autonomia"));
                double distancia = Double.parseDouble(request.getParameter("n_distancia"));
                
                double litrosGastos = distancia / autonomia;
                double totalEmDinhero = litrosGastos * preco;
            %>
            
            <%=
                "<h1>Dados da Viagem</h1>"
                        + "Quantidade de litros gastos: "+litrosGastos
                        + "<br>Valor gasto com combustível: "+totalEmDinhero
                
            %>
        </div>
    </body>
</html>
