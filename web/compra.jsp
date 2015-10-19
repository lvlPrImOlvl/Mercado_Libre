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
        String usuario;
        String RFC;
        Articulo prueba = new Articulo();
        ArrayList<Articulo> articulo= new ArrayList<Articulo>();
        
        usuario= request.getParameter("usuario");
        RFC= request.getParameter("RFC");
        dinero= Integer.parseInt(request.getParameter("dinero"));
        
        if(dinero > 0 && usuario != null){
            prueba.crearLista(articulo);
        %>
        HOLA
        <div>
            Añadir compra a 
           <form action="añadir.jsp" method="POST">
               <%
                //out.println(Articulo.imprimirOpciones(lista,"agregar"));
        }else{
            out.println("Porfavor ingrese al menos un usuario y dinero disponible!");
        }
               %>
               <input type="submit" value="comprar">
           </form> 
        </div>
        %>
        
    </body>
</html>
