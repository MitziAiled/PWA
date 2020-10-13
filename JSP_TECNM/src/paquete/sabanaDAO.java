package paquete;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class sabanaDAO {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectojsp_tecnm","root","");  
	    }catch(Exception e){
	    	System.out.println(e);
	    }  
	    return con;  
	}
	
	public static List<sabana> getAllSabana(){  
	    List<sabana> list=new ArrayList<sabana>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from sabana");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            sabana s = new sabana();
	            s.setId_sabana(rs.getInt("id_sabana"));
	            s.setClavehorario(rs.getString("clavehorario"));
	            s.setClavemateria(rs.getString("clavemateria"));
	            s.setClavecarrera(rs.getString("clavecarrera"));
	            s.setMateria(rs.getString("materia"));
	            s.setCarrera(rs.getString("carrera"));
	            s.setMaestro(rs.getString("maestro"));
	            s.setPeriodo(rs.getString("periodo"));
	            s.setTurno(rs.getString("turno"));
	            s.setGrupo(rs.getString("grupo"));
	            s.setAlumnos(rs.getInt("alumnos"));
	            s.setSemestre(rs.getInt("semestre"));
	            s.setCreditos(rs.getInt("creditos"));
	            s.setLunes(rs.getString("lunes"));
	            s.setMartes(rs.getString("martes"));
	            s.setMiercoles(rs.getString("miercoles"));
	            s.setJueves(rs.getString("jueves"));
	            s.setViernes(rs.getString("viernes"));
	            s.setSalon(rs.getString("salon"));
	            
	            list.add(s);  
	        }  
	    }catch(Exception e){
	    	System.out.println(e);
	    }  
	    
	    return list;  
	}
}
