
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar</title>
    </head>
    <body>
        <a href="mostrartodo.jsp">mostrar</a>
        <%=request.getParameter("mag")%>
        <h1>Eliminar</h1>

        <form action="Eliminar" method="post">
            DUI:<input type="text" name="txtDui" value="" /> 
            <br>
           
            <input type="Submit" value="Registrar Nueva Persona" name="delete" />
        </form>
    </body>
</html>
