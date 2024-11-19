<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carro</title>
    </head>
    <body>
        <h1>Combustivel</h1>
        <form action="#">
            <label>
                Preço combustivel:
                <input type="text" name="n_valorc">
            </label>
            
            <label>
                Quilometros por litro:
                <input type="text" name="n_quilo">
            </label>
            
            <label>
                Distância desejada:
                <input type="text" name="n_distancia">
            </label>
            
            <input type="submit" value="Calcular">
            
            <h2>
                <%
                    String valorc = request.getParameter("n_valorc");
                    String quilo = request.getParameter("n_quilo");
                    String distancia = request.getParameter("n_distancia");
                    
                    if(valorc == null || quilo == null || distancia == null || valorc.isEmpty() || quilo.isEmpty() || distancia.isEmpty()) {
                            out.print("Preencha todos os campos");
                        }else{
                        double litros = Double.parseDouble(distancia)/Double.parseDouble(quilo);
                        double gasto = litros * Double.parseDouble(valorc);
                        out.print("O valor total será " +gasto+ " <p> </p> e o total de litros será " +litros);
                    }
                %>
            </h2>
        </form>
    </body>
</html>
