

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ViewServlet
 */
@WebServlet("/ViewServlet")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		request.getRequestDispatcher("link.html").include(request, response); 
		
		/*INICIO DEL USO DE COOKIES*/
		/*Cookie ck[]=request.getCookies();  
        if(ck!=null){  
         String name=ck[0].getValue();  
        if(!name.equals("")||name!=null){  
        	out.println("<a href='index.html'>Agregar Nuevo Alumno</a>");
    		out.println("<h1>Lista de Alumnos </h1>");
    		
    		List<alumno> list = alumnoDao.getAllAlumnos();
    		
    		out.print("<form action='IDServlet' method='post'>");  
    		out.println("<h5>Consultar ID: </h5>");
    		out.println("<input type= 'text' name='consultaid' placeholder='ID del alumno'>");
    		out.println("<input type='submit' value='Buscar'>");
    		out.println("</form>");
    		out.println("<br><br>");
    		
    		out.print("<table border='1' wicth='100%'>");
    		out.println("<tr><th>ID</th><th>NumeroDeControl</th><th>Nombre</th><th>Curso</th><th>Semestre</th><th>Editar</th><th>Eliminar</th></tr>");
    		for(alumno a:list){  
    	         out.print("<tr><td>"+a.getId()+"</td><td>"+a.getNumcontrol()+"</td><td>"+a.getNombre()
    	         +"</td><td>"+a.getCurso()+"</td><td>"+a.getSemestre()+"</td><td><a href='EditServlet?id="+a.getId()+"'>edit</a></td><td><a href='DeleteServlet?id="+a.getId()+"'>delete</a></td></tr>");  
    	    }  
    	    out.print("</table>"); 
        }  
        }else{  
            out.print("Porfavor, inicia sesión primero");  
            request.getRequestDispatcher("login.html").include(request, response);  
        }  
        out.close();*/
        /*FIN DEL USO DE COOKIES*/
        
        /*INICIO DEL USO DE HTTP SESSION*/
        HttpSession session=request.getSession(false);  
        if(session!=null){  
        	out.println("<a href='index.html'>Agregar Nuevo Alumno</a>");
    		out.println("<h1>Lista de Alumnos </h1>");
    		
    		List<alumno> list = alumnoDao.getAllAlumnos();
    		
    		out.print("<form action='IDServlet' method='post'>");  
    		out.println("<h5>Consultar ID: </h5>");
    		out.println("<input type= 'text' name='consultaid' placeholder='ID del alumno'>");
    		out.println("<input type='submit' value='Buscar'>");
    		out.println("</form>");
    		out.println("<br><br>");
    		
    		out.print("<table border='1' wicth='100%'>");
    		out.println("<tr><th>ID</th><th>NumeroDeControl</th><th>Nombre</th><th>Curso</th><th>Semestre</th><th>Editar</th><th>Eliminar</th></tr>");
    		for(alumno a:list){  
    	         out.print("<tr><td>"+a.getId()+"</td><td>"+a.getNumcontrol()+"</td><td>"+a.getNombre()
    	         +"</td><td>"+a.getCurso()+"</td><td>"+a.getSemestre()+"</td><td><a href='EditServlet?id="+a.getId()+"'>edit</a></td><td><a href='DeleteServlet?id="+a.getId()+"'>delete</a></td></tr>");  
    	    }  
    	    out.print("</table>");  
        }  
        else{  
        	out.print("Porfavor, inicia sesión primero");  
            request.getRequestDispatcher("login.html").include(request, response);  
        }  
        out.close();
        /*FIN DEL USO DE HTTP SESSION*/
	    }  

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
