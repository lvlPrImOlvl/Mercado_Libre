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
       
        Articulo art = new Articulo();
        String usuario = (String)request.getSession().getAttribute("usuario");
        String RFC= (String)request.getSession().getAttribute("RFC");
        String dinero = (String)request.getSession().getAttribute("dinerop");
        ArrayList<Articulo> articulos = articulos= new ArrayList<Articulo>();
        
        
        if ((usuario == null) || (RFC == null) || (dinero == null))
        {
            usuario=request.getParameter("usuario");
            RFC=request.getParameter("RFC");
            dinero=request.getParameter("dinero");
            
        }
 
        if (dinero.length() > 0)
        {   
                if (Integer.parseInt(dinero ) >=1)
                {
                    if ( usuario.length() > 0)
                    {
                    ////
                        
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

                    /////
                    }
                    else
                    {
                    out.println("Por favor ingresa un usuario para poder continuar");
                    }
                }
                else 
                {
                out.println("No ingresaste dinero suficiente para comprar ningun articulo");
                }
        }else
        {
            out.println("Ingresa la cantidad de dinero que tienes para poder continuar");
        }
        
        %>
        SIGUE ACA        HOLA
        
    </body>
</html>
