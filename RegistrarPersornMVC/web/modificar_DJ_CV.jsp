
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
 <nav class="navbar navbar-expand-md navbar-dark bg-dark border-bottom">
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
           <ul class="navbar-nav ml-auto mt-2 mt-lg-0 mx-auto">
            <li class="nav-item active">
                <a class="nav-link " href="mostrar.do"><b>Mostrar Registros</b></a>
            </li>
          </ul>
        </div>
      </nav>
<body>
      <div class="container-fluid ">
          <div class="row">
          <div class="col-12">
          <br>
          <h1 class="text-center">Actualizar </h1>
          <h3 class="text-center text-success" ><%=request.getParameter("mag")%></h3> 
     
          <form action="Modificar_DJ_CV" method="post">
            <div class="form-group col-3 mx-auto">
            <label for="">DUI</label>
            <input type="text" name="txtDui"  class="form-control" value="<%=request.getParameter("dui")%>" readonly >
           </div>
            <div class="form-group col-3 mx-auto">
            <label for="">NOMBRES</label>
            <input type="text" name="txtNombres"  class="form-control" placeholder=""  required>
           </div>
            <div class="form-group col-3 mx-auto">
            <label for="">APELLIDOS</label>
            <input type="text" name="txtApellidos"  class="form-control" placeholder="" required>
           </div> 
            <div class="form-group col-3 mx-auto">
                <button type="Submit" name="actualizar" class="btn btn-success "><i class="fa fa-address-card-o fa-lg" aria-hidden="true"> Actualizar Registro</i></button>
           </div>
        </form>
        
       </div>
      </div>
      
    </div>
   
 

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>