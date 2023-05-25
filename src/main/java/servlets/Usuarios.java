package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import logica.User;

/**
 * Servlet implementation class Usuarios
 */
@WebServlet("/Usuarios")
public class Usuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
	  List<User> listaUsuarios = new ArrayList<>();
	  listaUsuarios.add(new User("1111111-1","Miguel", "Ramos", "945451144"));
	  listaUsuarios.add(new User("2222222-2","Richard", "Stallman", "98474726"));
	  listaUsuarios.add(new User("3333333-3","James", "Gosling", "9884747272"));
	  
	  HttpSession session = request.getSession();
	  session.setAttribute("listaUsuarios", listaUsuarios);
	  // respodemos a peticion
	  response.sendRedirect("mostrar-usuario.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  	     PrintWriter out = response.getWriter();
         response.setContentType("text/html");
	      String nombre = request.getParameter("nombre");
	      String apellido = request.getParameter("apellido");
	      String lenguaje = request.getParameter("lenguaje");
	      String [] intereses = request.getParameterValues("intereses");
	      String perfil = request.getParameter("perfil");
	      
	       out.println("<html>"
	           + "<head><link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css\"  rel=\"stylesheet\"></head>"
	           + "<body>");
	        out.println("<div class='container mt-5'> ");
	        out.println("<h1>Bienvenido: " + nombre + " "+ apellido + "</h1>");
	        out.println("<h2> Tu perfil es: "+ perfil +"</h2>");
	        out.println("Tu Lenguaje favorito es: " + lenguaje);
	        out.println("<ul>");
	        if(intereses != null) {
	          for(String interes: intereses) {
	            out.println("<li class='list-group-item'>"+ interes +"</li>");
	          }
	        }
	        out.println("</ul>");
	        out.println("</div>"
	            + "</body>"
	            + "</html>");
	     
	        
	}

}
