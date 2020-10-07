import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class usuarioDao {
	//CONEXION A LA BD
    public static Connection getConnection(){  
        Connection con=null;  
        try{  
            Class.forName("com.mysql.jdbc.Driver");  
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crudweb","root","");
        }catch(Exception e){
        	System.out.println(e);
        }  
        return con;  
    }  
    
    //GUARDAR UN USUARIO
    public static int save(usuario u){  
        int status=0;  
        try{  
            Connection con=usuarioDao.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "insert into usuario(usuario, contrasena) values (?,?)");  
            ps.setString(1,u.getUsuario());  
            ps.setString(2,u.getContrasena());  
              
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return status;  
    }
    
  //VALIDAR EXISTENCIA DEL USUARIO
    public static boolean validar(usuario u){  
        boolean status=false;  
        try{  
            Connection con=usuarioDao.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "select * from usuario where usuario=? and contrasena=?");  
            ps.setString(1,u.getUsuario());  
            ps.setString(2,u.getContrasena());  
              
            ResultSet resultSet = ps.executeQuery();
            status = resultSet.next();
              
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return status;  
    }
}
