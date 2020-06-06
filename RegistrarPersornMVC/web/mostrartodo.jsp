<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Crud java</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

 <!-- font-awesome-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">

  

</head>

<body>
    
    
      <div class="container-fluid ">
           <div class="row">
          <div class="col-10 mx-auto">
               <nav class="navbar navbar-expand-lg navbar-dark bg-dark border-bottom">
        
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0 mx-auto">
            <li class="nav-item active">
                <a class="nav-link " href="index.jsp"><b>Agregar un nuevo registro</b></a>
            </li>
          </ul>
        </div>
      </nav>
          <br>
          <a href="mostrar.do" class="btn btn-success m-2">Mostrar todos los registros</a>
        <table class="table">
          <thead class="thead-dark">
            <tr>
              <th scope="col">DUI</th>
              <th scope="col">NOMBRES</th>
              <th scope="col">APELLIDOS</th>
              <th colspan=2 scope="col">ACCIONES</th>
            </tr>
          </thead>
          <tbody>
           <c:forEach var="listaTotal" items="${sessionScope.personas}">
			<tr>
				<td><c:out value="${listaTotal.dui}"/></td>
				<td><c:out value="${listaTotal.nombres}"/></td>
				<td><c:out value="${listaTotal.apellidos}"/></td>
                                <td><a class="btn btn-primary" href="modificar_DJ_CV.jsp?dui=<c:out value="${listaTotal.dui}"/>"><i class="fa fa-pencil-square-o fa-lg" aria-hidden="true"></i></a></td>
                                <td><a class="btn btn-danger" href="eliminar_DJ_CV.jsp?dui=<c:out value="${listaTotal.dui}"/>"><i class="fa fa-trash fa-lg" aria-hidden="true"></i></a> </td>				
			</tr>
		</c:forEach>
          </tbody>
        </table>
          </div>
      </div>     
    </div>
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
