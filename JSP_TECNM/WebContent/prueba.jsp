<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="paquete.conexion" %>
<%@page import="paquete.*,java.util.*,java.sql.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	Connection con; 	
	try{ 	
		Class.forName("com.mysql.jdbc.Driver"); 	
		con = DriverManager.getConnection("jdbc:mysql://db:3306/proyectojsp_tecnm", "root", "root"); 	
		out.write("Conexion exitosa"); 	
	}catch(Exception e){
		out.write("/n Problema: " + e.toString());
	}
	%>
</body>
</html>