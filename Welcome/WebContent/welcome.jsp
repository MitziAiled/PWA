<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
		<style type="text/css">
			body{
				background-image: url("https://i.pinimg.com/736x/15/4c/35/154c354c66e8eaf685260d26cb20df73.jpg");
			}
			*{ 
				text-align: center;
				font-weight: bold;
				font-family: "Century Gothic";
				font-size: xx-large;
			}
			img{
				width: 250px;
				height: 250px; 
			}
		</style>
	</head>
	<body>
		<%  
			String name=request.getParameter("nombre");  
			out.print("Bienvenido "+name);  
		%>
		<br><br>
		<img src="https://www.andiar.com/4884-thickbox_default/pegatina-saludo-motero.jpg">
	</body>
</html>