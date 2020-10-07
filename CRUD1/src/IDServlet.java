

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class IDServlet
 */
@WebServlet("/IDServlet")
public class IDServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IDServlet() {
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
        	out.println("<h1>Ver Alumno</h1>");  
            String sid=request.getParameter("consultaid");  
            int id=Integer.parseInt(sid);  
              
            alumno a=alumnoDao.getAlumnoById(id);  
            
        	out.print("<form action='ViewServlet' method='post'>");  
            out.print("<table>");  
            out.print("<tr><td></td><td><input type='hidden' name='id' value='"+a.getId()+"'/></td></tr>");
            if(a.getNombre() != null) {
	            out.print("<tr><td>Numero De Control:</td><td><input type='text' name='numcontrol' value='"+a.getNumcontrol()+"' readonly/></td></tr>");  
	            out.print("<tr><td>Nombre:</td><td><input type='text' name='nombre' value='"+a.getNombre()+"' readonly/></td></tr>");   
	            out.print("<tr><td>Curso:</td><td><input type='text' name='curso' value='"+a.getCurso()+"' readonly/></td></tr>");  
	            out.print("<tr><td>Semestre:</td><td><input type='text' name='semestre' value='"+a.getSemestre()+"' readonly/></td></tr>"); 
	            out.print("<tr><td colspan='2'><input type='submit' value='Listo'/></td></tr>");
	            out.print("<tr><td><a href='EditServlet?id="+a.getId()+"'>edit</a></td><td><a href='DeleteServlet?id="+a.getId()+"'>delete</a></td></tr>");
	            out.print("</table>");  
	            out.print("</form>");
            } else {
            	out.print("<form action='ViewServlet' method='post'>");
            	out.print("NO HAY REGISTROS CON ESE NUMERO DE ID");
            	out.print("<tr><td colspan='2'><input type='submit' value='Entendido'/></td></tr>");
            }
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
        	out.println("<h1>Ver Alumno</h1>");  
            String sid=request.getParameter("consultaid");  
            int id=Integer.parseInt(sid);  
              
            alumno a=alumnoDao.getAlumnoById(id);  
            
        	out.print("<form action='ViewServlet' method='post'>");  
            out.print("<table>");  
            out.print("<tr><td></td><td><input type='hidden' name='id' value='"+a.getId()+"'/></td></tr>");
            if(a.getNombre() != null) {
	            out.print("<tr><td>Numero De Control:</td><td><input type='text' name='numcontrol' value='"+a.getNumcontrol()+"' readonly/></td></tr>");  
	            out.print("<tr><td>Nombre:</td><td><input type='text' name='nombre' value='"+a.getNombre()+"' readonly/></td></tr>");   
	            out.print("<tr><td>Curso:</td><td><input type='text' name='curso' value='"+a.getCurso()+"' readonly/></td></tr>");  
	            out.print("<tr><td>Semestre:</td><td><input type='text' name='semestre' value='"+a.getSemestre()+"' readonly/></td></tr>"); 
	            out.print("<tr><td colspan='2'><input type='submit' value='Listo'/></td></tr>");
	            out.print("<tr><td><a href='EditServlet?id="+a.getId()+"'>edit</a></td><td><a href='DeleteServlet?id="+a.getId()+"'>delete</a></td></tr>");
	            out.print("</table>");  
	            out.print("</form>");
            } else {
            	out.print("<form action='ViewServlet' method='post'>");
            	out.print("NO HAY REGISTROS CON ESE NUMERO DE ID");
            	out.print("<tr><td colspan='2'><input type='submit' value='Entendido'/></td></tr>");
            }
        }else{  
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
