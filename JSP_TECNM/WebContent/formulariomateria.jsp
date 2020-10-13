<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Agregar una Materia</title>
		<style>
			#menu{
				text-align:center;
			}
		</style>
	</head>
	<body>
		<div id="menu">
			<a href="vermateria.jsp">MATERIAS</a>        |     
			<a href="sabana.jsp">SABANA</a>        |     
			<a href="horario.jsp">REPORTES</a>
		</div>  
		<img src="http://capacitacion.itleon.edu.mx/imagen/BANNER.jpeg">
		<br>
		<a href="vermateria.jsp">Lista de Materias</a><br/>  
		<h1>Registrar una Materia</h1>  
		<form action="agregarmateria.jsp" method="post">  
			<table>  
				<tr>
					<td>Clave de la Materia:</td>
					<td><input type="text" name="clave"/></td>
				</tr>  
				<tr>
					<td>Nombre de la Materia:</td><td>  
					<input type="text" name="nombre"/></td>
				</tr>  
				<tr>
					<td>Semestre:</td>
					<td><input type="text" name="semestre"/></td>
				</tr>  
				<tr>
					<td>Carrera:</td>
					<td>	
						<input type="text" name="carrera" value="Ingenieria en sistemas computacionales" readonly/>
					</td>
				</tr>  
				<tr>
					<td>Creditos:</td>
					<td><input type="text" name="creditos"/></td>
				</tr>
				<tr>
					<td>Horas Teóricas:</td>
					<td><input type="text" name="horast"/></td>
				</tr>
				<tr>
					<td>Horas Prácticas:</td>
					<td><input type="text" name="horasp"/></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Registrar"/></td>
				</tr>  
			</table>  
		</form> 
	</body>
</html>