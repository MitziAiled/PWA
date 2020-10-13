package paquete;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class reporteDAO {
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
	
	public static List<reporte> getAllTeacher(){  
	    List<reporte> list=new ArrayList<reporte>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("SELECT DISTINCT usuario.clavemaestro, sabana.maestro FROM usuario\r\n" + 
	        		"INNER JOIN sabana ON usuario.clavemaestro = sabana.clavemaestro\r\n" + 
	        		"ORDER BY usuario.clavemaestro;");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            reporte r = new reporte();
	            r.setClavemaestro(rs.getString("clavemaestro"));
	            r.setMaestro(rs.getString("maestro"));
	            
	            list.add(r);  
	        }  
	    }catch(Exception e){
	    	System.out.println(e);
	    }  
	    
	    return list;  
	}
	
	public static reporte getRecordByClavemaestro(String clavemaestro){  
	    reporte r = null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from sabana where clavemaestro=?");  
	        ps.setString(1,clavemaestro);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            r=new reporte();  
	            r.setClavemateria(rs.getString("clavemateria"));
	            r.setMaestro(rs.getString("maestro"));  
	        }  
	    }catch(Exception e){
	    	System.out.println(e);
	    }
	    return r;
	}
}
