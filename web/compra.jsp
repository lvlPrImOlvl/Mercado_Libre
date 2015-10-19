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
        Float dinero;
        String user= request.getParameter("User");
        String rfc= request.getParameter("RFC");
        try{
        dinero= Float.parseFloat(request.getParameter("Dinero"));
        }catch(Exception e){
        dinero = (float)0;
        }
        if(dinero>0 && user!=null){
            ArrayList<Articulos> lista= new ArrayList<Articulos>();
 
        
        %>
        
    </body>
</html>
