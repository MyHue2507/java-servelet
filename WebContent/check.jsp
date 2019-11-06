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
		String username = request.getParameter("txtun");
		String password = request.getParameter("txtpw");
		String vaitro = request.getParameter("txtvaitro");
		if(username != null && password !=null && vaitro !=null){
			if(vaitro.equals("1") && username.equals("gv") && password.equals("456"))
				response.sendRedirect("login.jsp?kt=dung");
			else
				response.sendRedirect("login.jsp?kt=sai");
		}
	%>
</body>
</html>