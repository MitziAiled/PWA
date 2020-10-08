<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="paquete.materiaDAO"%>  
<jsp:useBean id="u" class="paquete.materia"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Agregar una Materia</title>
	</head>
	<body>
		<%  
			int i=materiaDAO.guardarmateria(u);  
			if(i>0){  
			response.sendRedirect("exitomateria.jsp");  
			}else{  
			response.sendRedirect("errormateria.jsp");  
			}  
		%>  
	</body>
</html>