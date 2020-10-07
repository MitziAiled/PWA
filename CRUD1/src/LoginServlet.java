

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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
        
        usuario us = new usuario();
        String usuario=request.getParameter("usuario");
        String contrasena = request.getParameter("contrasena");
        
        us.setUsuario(usuario);
		us.setContrasena(contrasena);
		
        /*INICIO DEL USO DE COOKIES*/  
        /*if(usuarioDao.validar(us)) { 
            out.print("Fuiste logeado exitosamente!");  
            out.print("<br>Bienvenido, "+usuario);  
              
            Cookie ck=new Cookie("usuario",usuario);  
            response.addCookie(ck);  
            request.getRequestDispatcher("index.html").include(request, response);
        }else{  
            out.print("Lo siento, nombre de usuario o contraseña incorrectos!");  
            request.getRequestDispatcher("login.html").include(request, response);  
        }  
          
        out.close();*/ 
		/*FIN DEL USO DE COOKIES*/
		 
        /*INICIO DEL USO DE HTTP SESSION*/
        if(usuarioDao.validar(us)){  
        	out.print("Fuiste logeado exitosamente!");  
            out.print("<br>Bienvenido, "+usuario);  
            HttpSession session=request.getSession();  
	        session.setAttribute("usuario",usuario);
	        request.getRequestDispatcher("index.html").include(request, response);
        }  
        else{  
        	out.print("Lo siento, nombre de usuario o contraseña incorrectos!");  
            request.getRequestDispatcher("login.html").include(request, response);  
        }  
        out.close();
        /*FIN DEL USO DE HTTP SESSION*/
	}

}
