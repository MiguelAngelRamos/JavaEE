<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
	<meta http-equiv="Content-Type" charset="text/html; charset=UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"  rel="stylesheet">
	<title>Bienvenido con JSP</title>
	</head>
	
	<body>
		<div class="mt-5 container">
			<div class="row">
				<div class="col-6 offset-3">
				
				  <h2 class="text-center mb-5"> Formulario de Datos </h2>
				  <!-- Formulario para crear un Usuario -->
				  <form action="Usuarios" method="post">
				  
				  	<div class="mb-3">
						<label for="nombre" class="form-label">Nombre</label> 
						<input type="text" class="form-control" id="nombre" name="nombre" required>
					</div>
					
					<div class="mb-3">
						<label for="apellido" class="form-label">Apellido</label> 
						<input type="text" class="form-control" id="apellido" name="apellido" required>
					</div>
					
					<div class="mb-3">
					
						<label for="lenguaje" class="form-label"> Lenguaje Favorito</label>
						
						<select class="form-select" name="lenguaje">
							<option selected>Abrir menu  de selección</option>
							<option value="Java">Java</option>
							<option value="Python">Python</option>
							<option value="JavaScript">JavaScript</option>
						</select>
					</div>
					
					<!-- CheckBox -->
					<div class="form-check">
					 <input class="form-check-input" type="checkbox" name="intereses" value="Inteligencia Artificial" id="flexCheckDefault" checked>
					 <label class="form-check-label" for="flexCheckDefault"> Inteligencia Artificial</label>
					</div>
					
					<div class="form-check">
					 <input class="form-check-input" type="checkbox" name="intereses" value="Desarrollo Software" id="flexCheckDefault" >
					 <label class="form-check-label" for="flexCheckDefault"> Desarrollo Software</label>
					</div>
					
					<div class="form-check">
					 <input class="form-check-input" type="checkbox" name="intereses" value="Clean Code" id="flexCheckDefault" >
					 <label class="form-check-label" for="flexCheckDefault"> Clean Code</label>
					</div>
					<!-- Find CheckBox -->
					
					<!-- Radio -->
					<div class="mt-4 form-check">
						<input class="form-check-input" type="radio" name="perfil" value="FrontEnd" id="flexRadioDefault1"> 
						<label class="form-check-label" for="flexRadioDefault1">FrontEnd</label>
					</div>
					
					<div class="mt-4 form-check">
						<input class="form-check-input" type="radio" name="perfil" value="BackEnd" id="flexRadioDefault1"> 
						<label class="form-check-label" for="flexRadioDefault1">BackEnd</label>
					</div>
					
					<div class="mt-4 form-check">
						<input class="form-check-input" type="radio" name="perfil" value="FullStack" id="flexRadioDefault1"> 
						<label class="form-check-label" for="flexRadioDefault1">FullStack</label>
					</div>
					<!-- End Radio -->
					
					<div class="d-grid gap-2">
						<button type="submit" class="btn btn-primary">Enviar</button>
					</div>
				  </form>
				   <!-- END Formulario para crear un Usuario -->
				   
		
				</div>
			</div>
			
			<div class="row mt-2">
				<div class="col-6 offset-3">
				<!-- Obtener datos de BD -->
				   <form action="Usuarios" method="GET">
				   	<div class="d-grid gap-2">
				   		<button class="btn btn-success">Obtener Usuarios</button>
				   	</div>
				   </form>
				   <!-- END Obtener datos de BD -->
				</div>
			</div>
		</div>
	</body>
	
</html>