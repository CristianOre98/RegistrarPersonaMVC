<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Todos los registros</h1>
      

        <a class="btn btn-primary" href="mostrar.do">mostrar</a> <hr>
      
            <table border="1" >
		<tr>
		 <td> DUI</td>
		 <td> APELLIDO</td>
		 <td> NOMBRE</td>
		 
		 <td colspan=2>ACCIONES</td>
		</tr>
		  <c:forEach var="listaTotal" items="${sessionScope.personas}">
			<tr>
				<td><c:out value="${listaTotal.dui}"/></td>
				<td><c:out value="${listaTotal.apellidos}"/></td>
				<td><c:out value="${listaTotal.nombres}"/></td>
				
				<td><a href="adminArticulo?action=showedit&id=<c:out value="${articulo.id}" />">Editar</a></td>
				<td><a href="adminArticulo?action=eliminar&id=<c:out value="${articulo.id}"/>">Eliminar</a> </td>				
			</tr>
		</c:forEach>
	</table>
        
    </body>
</html>
