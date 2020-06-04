<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Simple Sidebar - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">

</head>
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark border-bottom">
        <button class="btn btn-primary" id="menu-toggle">Toggle Menu</button>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Dropdown
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else here</a>
              </div>
            </li>
          </ul>
        </div>
      </nav>
<body>

 

     

      <div class="container-fluid ">
          <div class="col-12 mx-auto">
          <br>
          <a href="mostrar.do" class="btn btn-success m-2">Mostrar</a>
        <table class="table">
          <thead class="thead-dark">
            <tr>
              <th scope="col">DUI</th>
              <th scope="col">APELLIDO</th>
              <th scope="col">NOMBRE</th>
              <th colspan=2 scope="col">ACCIONES</th>
            </tr>
          </thead>
          <tbody>
           <c:forEach var="listaTotal" items="${sessionScope.personas}">
			<tr>
				<td><c:out value="${listaTotal.dui}"/></td>
				<td><c:out value="${listaTotal.apellidos}"/></td>
				<td><c:out value="${listaTotal.nombres}"/></td>
				
				<td><a href="modificar.jsp?dui=<c:out value="${listaTotal.dui}"/>">Editar</a></td>
				<td><a href="Eliminar?elimina&==<c:out value="${listaTotal.dui}"/>">Eliminar</a> </td>				
			</tr>
		</c:forEach>
          </tbody>
        </table>
        
       
      </div>
      
    </div>
    <!-- /#page-content-wrapper -->
    
    <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>
