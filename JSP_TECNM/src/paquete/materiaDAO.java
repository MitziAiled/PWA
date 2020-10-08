package paquete;

import java.sql.*;
import java.util.*;
import paquete.materia;

public class materiaDAO {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectojsp_tecnm","root","");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	} 
	
	public static int guardarmateria(materia u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	        		"insert into materia(clave,nombre,semestre,carrera,creditos,horas_t,horas_p) values(?,?,?,?,?,?,?)");  
	        ps.setString(1,u.getClave());  
	        ps.setString(2,u.getNombre());  
	        ps.setString(3,u.getSemestre());  
	        ps.setString(4,u.getCarrera());  
	        ps.setInt(5,u.getCreditos());
	        ps.setInt(6,u.getHorast());
	        ps.setInt(7,u.getHorasp());
	        status=ps.executeUpdate();  
	    }catch(Exception e){
	    	System.out.println(e);
	    }  
	    return status;  
	}  
	
	public static List<materia> getAllRecords(){  
	    List<materia> list=new ArrayList<materia>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from materia");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            materia u=new materia();  
	            u.setId(rs.getInt("id_materia"));  
	            u.setClave(rs.getString("clave"));  
	            u.setNombre(rs.getString("nombre"));  
	            u.setSemestre(rs.getString("semestre"));  
	            u.setCarrera(rs.getString("carrera"));  
	            u.setCreditos(rs.getInt("creditos"));  
	            u.setHorast(rs.getInt("horas_t")); 
	            u.setHorasp(rs.getInt("horas_p")); 
	            list.add(u);  
	        }  
	    }catch(Exception e){
	    	System.out.println(e);
	    }  
	    
	    return list;  
	}
}
