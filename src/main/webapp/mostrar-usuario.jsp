<%@page import="logica.User"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" />
		<title>Insert title here</title>
	</head>
	
	<body>
		<% 
			List<User> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
		    // System.out.println("la lista" + listaUsuarios);
		%>
		
		<div class="users-page">
		    <h2 class="text-center mt-5">Lista Usuarios</h2>

		    <div class="container mt-5">
		      <!-- Tabla -->
		      <table class="table table-striped table-hover">
		        <thead class="table-dark">
		        <tr>
		          <th scope="col">Rut</th>
		          <th scope="col">Nombre</th>
		          <th scope="col">Apellido</th>
		          <th scope="col">Telefono</th>
		        </tr>
		        </thead>
		        
		        <tbody id="listado-clientes">
		        <!-- row = fila -->
		 		<% for(User itemUser: listaUsuarios) { %>
		        <tr>
		          <td><%=itemUser.getRut() %> </td>
		          <td><%=itemUser.getNombre()%> </td>
		          <td><%=itemUser.getApellido()%> </td>
		          <td><%=itemUser.getTelefono()%> </td>
		        </tr>
		        
		   		<%}%>
		        </tbody>
		        
		      </table>
		      
		    </div>
		  </div>
	</body>
	
</html>