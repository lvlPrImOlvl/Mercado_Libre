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
        <h1>Bienvenido a la tienda de compras</h1>
        <%
            
        int dinero;
        String usuario= request.getParameter("usuario");
        String RFC= request.getParameter("RFC");
        
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
                if (!usuario.equals(""))
                {    
                    ArrayList<Articulo> lista= new ArrayList<Articulo>();
                    art.crearLista(lista);
                   /*out.println( Producto.imprimirLista(lista)+"Hola prueba");     */

                    %>
                    <div>
                    Añadir compra a 
                    <form action="añadir.jsp" method="POST">
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
               <input type="submit" value="agregar">
           </form> 
        </div>
    </body>
</html>
