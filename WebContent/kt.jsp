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
	String un = request.getParameter("txtun");
	if( un != null && !un.isEmpty()){
		session.setAttribute("un", un);
		response.sendRedirect("trang1.jsp");
	}
	else
		out.print("Dan nhap sai");
	%>
</body>
</html>
