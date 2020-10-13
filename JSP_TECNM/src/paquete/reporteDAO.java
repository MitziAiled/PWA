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
	        PreparedStatement ps=con.prepareStatement("select * from usuario");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            reporte r = new reporte();
	            
	            
	            list.add(r);  
	        }  
	    }catch(Exception e){
	    	System.out.println(e);
	    }  
	    
	    return list;  
	}
}
