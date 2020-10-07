

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
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileServlet() {
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
        PrintWriter out=response.getWriter();  
          
        request.getRequestDispatcher("link.html").include(request, response);  
          
        /*INICIO DEL USO DE COOKIES*/
        /*Cookie ck[]=request.getCookies();  
        if(ck!=null){  
         String name=ck[0].getValue();  
        if(!name.equals("")||name!=null){  
            out.print("<b>Bienvenido al perfil</b>");  
            out.print("<br>Bienvenido, usuario "+name);  
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
        	String usuario=(String)session.getAttribute("usuario"); 
        	out.print("<b>Bienvenido al perfil</b>");  
            out.print("<br>Bienvenido, usuario "+usuario);
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
		//doGet(request, response);
	}

}
