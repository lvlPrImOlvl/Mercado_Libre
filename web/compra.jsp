<%-- 
    Document   : compra
    Created on : 18/10/2015, 10:41:39 PM
    Author     : primo
--%>

<%@page import="MercadoLibre.Articulo"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mercado Libre Compras</title>
    </head>
    <body>
        <%
            
        int dinero;
        String usuario= request.getParameter("usuario");
        String RFC= request.getParameter("RFC");
        String artElegido;
        
        Articulo art = new Articulo();
        
        try
        {
        dinero= Integer.parseInt(request.getParameter("dinero"));
        }
        catch(Exception e)
        {
        dinero = 0;
        }
        
        if(dinero >= 1)
        {
                if (!usuario.equals(""))        /*Si ya todo esta bien*/
                {    
                    %>
                    <h1>Bienvenido a la tienda de compras</h1>
                    <h2>Estos son los productos que estan a la venta</h2> 
                    <%
                    
                    art.crearLista();
                    out.println( art.imprimirLista());
                    out.print(art.imprimirOpciones());
                    %>
                    <div align="left">
                        <input type="submit" value="Agregar a Carrito">
                    </div>
                    <h2>Carrito de compra</h2>
                    <%
                    out.println(art.imprimirCarritoCompras());
                    %>
        <%  
                 /*  out.println(Articulo.imprimirOpciones(lista,"agregar"));*/
                }else
                {
                    out.println("Ingresa un usuario valido!");
                }
        }else{
            out.println("Ingrese el dinero con el que cuenta");
        }
        %>

    </body>
</html>
