

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SaveUsuarioServlet
 */
@WebServlet("/SaveUsuarioServlet")
public class SaveUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveUsuarioServlet() {
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
		PrintWriter out = response.getWriter();
		
		request.getRequestDispatcher("link.html").include(request, response); 
		 
        		String usuario = request.getParameter("usuario");
        		String contrasena = request.getParameter("contrasena");
        		
        		usuario u = new usuario();
        		u.setUsuario(usuario);
        		u.setContrasena(contrasena);
        		
        		int status = usuarioDao.save(u);
        		if(status>0) {
        			out.print("<p>Usuario salvado correctamente</p>");
        			request.getRequestDispatcher("index.html").include(request, response);
        		}else {
        			out.print("No se registro correctamente el nuevo usuario");
        		}
        
		out.close();
	}

}
