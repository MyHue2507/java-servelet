<%@ page language="java"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<%
	String kiemtra = request.getParameter("kt") ;
	if(kiemtra != null)
		if(kiemtra.equals("Hue"))
			out.print("Xin chao");
%>
	<%if(kiemtra == null){ %>
	<form action="check.jsp" method="post">
		Username
		<input type="text" name="txtun"><br>
		Password
		<input type="text" name="txtpw"><br>
		Vai trò
		<select name="txtvaitro">
			<option value="1">Giáo Viên</option>
			<option value="2">Sinh Viên</option>
		</select><br>
		<button type="submit">Đăng nhập</button><br>
		<%}%>
			
		<%if(kiemtra != null){
			if(kiemtra.equals("sai")){%>
			<form action="check.jsp" method="post">
		Username
		<input type="text" name="txtun"><br>
		Password
		<input type="text" name="txtpw"><br>
		Vai trò
		<select name="txtvaitro">
			<option value="1">Giáo Viên</option>
			<option value="2">Sinh Viên</option>
		</select><br>
		<button type="submit">Đăng nhập</button><br>
			<% out.print("Đăng nhập sai");
			}
		}%>
	</form>
</body>
</html>