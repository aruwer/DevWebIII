<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ColaKip</title>
    </head>
    <body>
        <div>
            <%
                int latas = Integer.parseInt(request.getParameter("n_latas"));
                int refri600 = Integer.parseInt(request.getParameter("n_refri600"));
                int refri2 = Integer.parseInt(request.getParameter("n_refri2"));
                
                double litros = latas*0.35 + refri600*0.6 + refri2*2;
                double faturamento = latas*1.2 + refri600*1.8 + refri2*2.8;
            %>
            
            <%=
               "<h1>Relatório de vendas</h1>"
                       + "<br> Quantidades vendidas"
                       + "<br> Latas: "+latas
                       + "<br> Refri 600ml: "+refri600
                       + "<br> Refri 2 litros: "+refri2
                       + "<br> Total de litros vendido: " +litros+" litros"
                       + "<br> Faturamento total: R$" +faturamento 
            %>
        </div>
    </body>
</html>
