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
                    out.println("<FORM ACTION=RealizarCompra.jsp METHOD=post>");
                    out.println("<b>Electronica:</b><br>");
                    out.println("<input type=checkbox name=estereo >Estereo Sony 7.1 Canales<br>");
                    out.println("<input type=checkbox name=F >XBOX ONE Halo edition <br>");
                    out.println("<input type=checkbox name=N >Audifonos Mr Dre Profesional beats<br>");
                    out.println("<br><b>Linea Blanca</b><br>");
                    out.println("<input type=checkbox name=estereo >Refrigerador MABE con WIFI<br>");
                    out.println("<input type=checkbox name=F >Lavadora Samsung con centrifuga 20 Kg<br>");
                    out.println("<input type=checkbox name=N >Microondas Mabe con parrilla<br>");
                    out.println("</FORM>");
                   /*out.println( Producto.imprimirLista(lista)+"Hola prueba");     */

                    %>
                    <div>
                    Añadir compra a 
                    <form action="añadir.jsp" method="POST">
                    <input type="submit" value="agregar">
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
               
           </form> 
        </div>
    </body>
</html>
