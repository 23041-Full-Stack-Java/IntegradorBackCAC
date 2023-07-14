
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
	//Conexión con la base de datos y envío de datos del formulario

	Class.forName("com.mysql.cj.jdbc.Driver");
	try {
		Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/conferencia", "root", "");
		Statement stm = cn.createStatement();

		int valor = 0;

		// Verificar si existen registros en la tabla "tickets"
		ResultSet rsId = stm.executeQuery("SELECT MAX(id) FROM tickets");
		if (rsId.next()) {
			int eid = rsId.getInt(1);

			// Realizar la actualización solo si hay registros en la tabla
			String consulta = "UPDATE tickets SET confirmado = " + valor + " WHERE id = " + eid;
			stm.executeUpdate(consulta);
		} else {
			out.print("No se encontraron registros en la tabla tickets");
		}

		// Cerrar la conexión
		stm.close();
		cn.close();
	} catch (Exception e) {
		out.print("Error al actualizar el registro: " + e.getMessage());
	}
	%>

	<jsp:include page="comprar.html"></jsp:include>

	<%
	response.sendRedirect("final.jsp");
	%>

</body>
</html>