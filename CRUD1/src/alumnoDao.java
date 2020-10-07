import java.util.*;  
import java.sql.*;  
  
public class alumnoDao {  
  
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
    
    //GUARDAR UN ALUMNO
    public static int save(alumno a){  
        int status=0;  
        try{  
            Connection con=alumnoDao.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "insert into alumno(numcontrol,nombre,curso,semestre) values (?,?,?,?)");  
            ps.setString(1,a.getNumcontrol());  
            ps.setString(2,a.getNombre());  
            ps.setString(3,a.getCurso());  
            ps.setString(4,a.getSemestre());  
              
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return status;  
    }  
    
    //ACTUALIZAR LA INFORMACION DE UN ALUMNO
    public static int update(alumno a){  
        int status=0;  
        try{  
            Connection con=alumnoDao.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "update alumno set numcontrol=?,nombre=?,curso=?,semestre=? where id=?");  
            ps.setString(1,a.getNumcontrol());  
            ps.setString(2,a.getNombre());  
            ps.setString(3,a.getCurso());  
            ps.setString(4,a.getSemestre());    
            ps.setInt(5,a.getId());  
              
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return status;  
    }
    
    //ELIMINAR UN ALUMNO
    public static int delete(int id){  
        int status=0;  
        try{  
            Connection con=alumnoDao.getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from alumno where id=?");  
            ps.setInt(1,id);  
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return status;  
    }  
    
    //OBTENER ALUMNO POR ID
    public static alumno getAlumnoById(int id){  
        alumno a = new alumno();  
          
        try{  
            Connection con=alumnoDao.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from alumno where id=?");  
            ps.setInt(1,id);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
                a.setId(rs.getInt(1));  
                a.setNumcontrol(rs.getString(2));  
                a.setNombre(rs.getString(3));  
                a.setCurso(rs.getString(4));  
                a.setSemestre(rs.getString(5));  
            }  
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return a;  
    } 
    
    //ENLISTAR ALUMNOS
    public static List<alumno> getAllAlumnos(){  
        List<alumno> list=new ArrayList<alumno>();  
          
        try{  
            Connection con=alumnoDao.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from alumno");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                alumno a = new alumno();  
                a.setId(rs.getInt(1));  
                a.setNumcontrol(rs.getString(2));  
                a.setNombre(rs.getString(3));  
                a.setCurso(rs.getString(4));  
                a.setSemestre(rs.getString(5));  
                list.add(a);  
            }  
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return list;  
    }  
}