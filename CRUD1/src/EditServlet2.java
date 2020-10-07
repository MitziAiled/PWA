

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
 * Servlet implementation class EditServlet2
 */
@WebServlet("/EditServlet2")
public class EditServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
        
        request.getRequestDispatcher("link.html").include(request, response); 
        
        /*INICIO DEL USO DE COOKIES*/
        /*Cookie ck[]=request.getCookies();  
        if(ck!=null){  
        	String name=ck[0].getValue();  
        	if(!name.equals("")||name!=null){  
	        	String sid=request.getParameter("id");  
	            int id=Integer.parseInt(sid);  
	            String numcontrol=request.getParameter("numcontrol");  
	            String nombre=request.getParameter("nombre");  
	            String curso=request.getParameter("curso");  
	            String semestre=request.getParameter("semestre");  
	              
	            alumno a=new alumno();  
	            a.setId(id);  
	            a.setNumcontrol(numcontrol);  
	            a.setNombre(nombre);  
	            a.setCurso(curso);  
	            a.setSemestre(semestre);  
	              
	            int status=alumnoDao.update(a);  
	            if(status>0){  
	                response.sendRedirect("ViewServlet");  
	            }else{  
	                out.println("No se pudo editar el registro");  
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
        	String sid=request.getParameter("id");  
            int id=Integer.parseInt(sid);  
            String numcontrol=request.getParameter("numcontrol");  
            String nombre=request.getParameter("nombre");  
            String curso=request.getParameter("curso");  
            String semestre=request.getParameter("semestre");  
              
            alumno a=new alumno();  
            a.setId(id);  
            a.setNumcontrol(numcontrol);  
            a.setNombre(nombre);  
            a.setCurso(curso);  
            a.setSemestre(semestre);  
              
            int status=alumnoDao.update(a);  
            if(status>0){  
                response.sendRedirect("ViewServlet");  
            }else{  
                out.println("No se pudo editar el registro");  
            }
        }  
        else{  
        	out.print("Porfavor, inicia sesión primero");  
            request.getRequestDispatcher("login.html").include(request, response);  
        }  
        out.close();
        /*FIN DEL USO DE HTTP SESSION*/
	}

}
