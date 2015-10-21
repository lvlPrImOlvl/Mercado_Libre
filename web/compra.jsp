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
            
        int dinero=0;
        String usuario="";
        String RFC="";
        
        request.getSession().setAttribute("usuario",usuario);
        request.getSession().setAttribute("RFC",RFC);
        request.getSession().setAttribute("dinero",dinero);
        out.println(usuario);
        out.println(dinero);
        out.println(RFC);
        %>
        
    </body>
</html>
