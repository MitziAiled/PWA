package paquete;
import java.sql.*;

public class conexion {
	String driver;
	String url;
	String uss;
	String pass;
	
	public conexion() {
		driver = "com.mysql.jdbc.Driver";
		url = "jdbc:mysql://localhost:3306/proyectojsp_tecnm"; 
		uss = "root";
		pass = "";
	}
	
	public int loguear(String us, String contra) {
		Connection conn;
		PreparedStatement pst;
		ResultSet rs;
		int rol = 0;
		String sql = "select rol from usuario where usuario ='" + us + "' and contrasena ='" + contra + "'";
		try {
			Class.forName(this.driver);
			conn = DriverManager.getConnection(this.url,this.uss,this.pass);
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			
			while(rs.next()) {
				rol = rs.getInt(1);
			}
			conn.close();
		}catch(ClassNotFoundException | SQLException e) {
		}
		return rol;
	}  
}
