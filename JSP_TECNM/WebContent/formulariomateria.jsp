<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Agregar una Materia</title>
	</head>
	<body>
		<a href="vermateria.jsp">Lista de Materias</a><br/>  
		<h1>Registrar una Materia</h1>  
		<form action="agregarmateria.jsp" method="post">  
			<table>  
				<tr>
					<td>Clave de la Materia:</td>
					<td><input type="text" name="clavemateria"/></td>
				</tr>  
				<tr>
					<td>Nombre de la Materia:</td><td>  
					<input type="text" name="nombremateria"/></td>
				</tr>  
				<tr>
					<td>Semestre:</td>
					<td><input type="text" name="semestremateria"/></td>
				</tr>  
				<tr>
					<td>Carrera:</td>
					<td>	
						<select>
							<Option>Ingenieria en Sistemas Computacionales</Option>
						</select>
					</td>
				</tr>  
				<tr>
					<td>Creditos:</td>
					<td><input type="text" name="creditosmateria"/></td>
				</tr>
				<tr>
					<td>Horas Teóricas:</td>
					<td><input type="text" name="horas_tmateria"/></td>
				</tr>
				<tr>
					<td>Horas Prácticas:</td>
					<td><input type="text" name="horas_pmateria"/></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Registrar"/></td>
				</tr>  
			</table>  
		</form> 
	</body>
</html>