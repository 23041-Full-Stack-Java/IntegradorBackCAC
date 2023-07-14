
<%@ page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Conferencia Buenos Aires</title>
</head>
<body>

<%
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String email = request.getParameter("email");
	String categoria = request.getParameter("categoria");
	String cantidad = request.getParameter("cantidad");
	
	// Imprimir los valores de los parámetros en la consola del servidor
		System.out.println("Nombre: " + nombre);
		System.out.println("Apellido: " + apellido);
		System.out.println("Email: " + email);
		System.out.println("Categoria: " + categoria);
		System.out.println("Cantidad: " + cantidad);

	// ...

	//El TOTAL se vuelve a calcular aquí en Java para poder enviarlo a la base de datos.

	double total = 0;
	double descuento = 0;
	if (categoria.equals("Estudiante")) {
		descuento = 0.2;
	} else if (categoria.equals("Trainee")) {
		descuento = 0.5;
	} else if (categoria.equals("Junior")) {
		descuento = 0.85;
	}

	double cantidadNum = Double.parseDouble(cantidad);

	total = cantidadNum * 200 * descuento;

	//Conexión con la base de datos y envío de datos del formulario

	Class.forName("com.mysql.cj.jdbc.Driver");
	
	try {
		Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/conferencia", "root", "");
		Statement stm = cn.createStatement();

		stm.executeUpdate("INSERT INTO tickets(nombre,apellido,email,cantidad,categoria,total) VALUES ('" + nombre + "','"
		+ apellido + "','" + email + "','" + cantidad + "','" + categoria + "','" + total + "')");

	} catch (Exception e) {
		out.print("Error al cargar los datos: " + e.getMessage());
	}
	
%>

<%
  // Con esto se incluyen los valores del formulario en la redireccion.

  request.setAttribute("nombre", nombre);
  request.setAttribute("apellido", apellido);
  request.setAttribute("email", email);
  request.setAttribute("cantidad", cantidad);
  request.setAttribute("categoria", categoria);

  // ...

 // Redireccionar a confirmacion.jsp
  String redirectURL = "confirmacion.jsp";
  RequestDispatcher dispatcher = request.getRequestDispatcher(redirectURL);
  dispatcher.forward(request, response);
%>


</body>
</html>