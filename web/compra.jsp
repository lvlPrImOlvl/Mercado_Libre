<%-- 
    Document   : compra
    Created on : 18/10/2015, 10:41:39 PM
    Author     : primo
--%>

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
        float dinero;
        Articulo prueba = new Articulo();
        ArrayList<Articulo> articulo= new ArrayList<Articulo>();
        
        String user= request.getParameter("User");
        String rfc= request.getParameter("RFC");
        
        try{
        dinero= Float.parseFloat(request.getParameter("Dinero"));
        }catch(Exception e){
        dinero = (float)0;
        }
        if(dinero>0 && user!=null){
            prueba.setArtToLista(articulo);
           //out.println( articulo.imprimirLista(lista)+"Hola prueba");     
        %>
        <div>
            Añadir compra a 
           <form action="añadir.jsp" method="POST">
               <%
                out.println(Producto.imprimirOpciones(lista,"agregar"));
        }else{
            out.println("Error de Datos");
        }
               %>
               <input type="submit" value="agregar">
           </form> 
        </div>
        %>
        
    </body>
</html>
