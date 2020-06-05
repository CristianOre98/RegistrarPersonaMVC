

<%@page import="modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <a href="mostrar.do">mostrar</a>
      
            
     <h1>Actualizar </h1>
     <%=request.getParameter("mag")%>
     <form action="Modificar" method="post">
		<table>
			<tr>
				<td><label>DUI</label></td>
				<td><input type="text" name="txtDui" value="<%=request.getParameter("dui")%>" required readonly></td>
			</tr>
			
			<tr>
				<td><label>Nombre</label></td>
				<td><input type="text" name="txtNombres" ></td>
			</tr>
			<tr>
				<td><label>Apellido</label></td>
				<td><input type="text" name="txtApellidos"  ></td>
			</tr>
                        
			
	
                        <input type="Submit" value="Guardar" name="actualizar"> 
	</form>
    </body>
</html>

