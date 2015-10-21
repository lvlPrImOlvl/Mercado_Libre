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
       
        String usuario = request.getParameter("usuario");
        String RFC= request.getParameter("RFC");
        String dinero = request.getParameter("dinero");
       
        if (dinero.length() > 0)
        {   
                if (Integer.parseInt(dinero ) >=1)
                {
                    if ( usuario.length() > 0)
                    {
                    ////
                        
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
