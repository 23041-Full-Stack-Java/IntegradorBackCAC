<%@page import="com.mysql.cj.jdbc.Driver"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String email = request.getParameter("email");
	String categoria = request.getParameter("categoria");
	String cantidad = request.getParameter("cantidad");

	//Conexión con la base de datos y envío de datos del formulario

	Class.forName("com.mysql.cj.jdbc.Driver");

	try {
		Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/conferencia", "root", "");

		Statement stm = cn.createStatement();

		int valor = 1;

		ResultSet rsId = stm.executeQuery("SELECT MAX(id) FROM tickets");

		while (rsId.next()) {
			int eid = rsId.getInt(1);

			String consulta = "UPDATE tickets SET nombre='" + nombre + "',apellido='" + apellido + "',email='" + email
			+ "',cantidad='" + cantidad + "',categoria='" + categoria + "' WHERE id=" + eid + "";

			stm.executeUpdate(consulta);
		}

	} catch (Exception e) {
		out.print("Error al MODIFICAR los datos");
	}
	%>

	<jsp:include page="edicion.jsp"></jsp:include>
	<%
	response.sendRedirect("final.jsp");
	%>

</body>
</html>