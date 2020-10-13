<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="paquete.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Editar una Materia</title>
		<style>
			#menu{
				text-align:center;
			}
		</style>
	</head>
	<body>
		<div id="menu">
			<a href="vermateria.jsp">MATERIAS</a>        |     
			<a href="versabana.jsp">SABANA</a>        |     
			<a href="verreporte.jsp">REPORTES</a>
		</div>  
		<img src="http://capacitacion.itleon.edu.mx/imagen/BANNER.jpeg">
		<br>
		<%  
			String id=request.getParameter("id");  
			materia u=materiaDAO.getRecordById(Integer.parseInt(id));  
		%>  
		<h1>Editar una Materia</h1>  
		<form action="editarmateria.jsp" method="post">
			<input type="hidden" name="id" value="<%=u.getId() %>"/>  
			<table>  
				<tr>
					<td>Clave de la Materia:</td>
					<td><input type="text" name="clave" value="<%= u.getClave()%>"/></td>
				</tr>  
				<tr>
					<td>Nombre de la Materia:</td><td>  
					<input type="text" name="nombre" value="<%=u.getNombre() %>"/></td>
				</tr>  
				<tr>
					<td>Semestre:</td>
					<td><input type="text" name="semestre" value="<%=u.getSemestre() %>"/></td>
				</tr>  
				<tr>
					<td>Carrera:</td>
					<td>	
						<input type="text" name="carrera" value="Ingenieria en sistemas computacionales" readonly/>
					</td>
				</tr>  
				<tr>
					<td>Creditos:</td>
					<td><input type="text" name="creditos" value="<%=u.getCreditos() %>"/></td>
				</tr>
				<tr>
					<td>Horas Teóricas:</td>
					<td><input type="text" name="horast" value="<%=u.getHorast() %>"/></td>
				</tr>
				<tr>
					<td>Horas Prácticas:</td>
					<td><input type="text" name="horasp" value="<%=u.getHorasp() %>"/></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Editar"/></td>
				</tr>  
			</table>  
		</form> 
	</body>
</html>