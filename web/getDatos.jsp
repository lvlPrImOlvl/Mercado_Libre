<%-- 
    Document   : getDatos
    Created on : 18/10/2015, 10:38:15 PM
    Author     : primo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Bienvenido a la mejor tienda del mundo!!</h1>
        <h2>Porfavor ingrese sus datos!</h2>
        <form action="compra.jsp" method="POST">
            Usuario: <br>
            <input type="text" name="usuario"><br>
            RFC: <br>
            <input type="text" name="RFC"><br>
            Dinero: <br>
            <input type="text" name="dinero"><br>
            <input type="submit" name="goStore">            
        </form>
    </body>
</html>
