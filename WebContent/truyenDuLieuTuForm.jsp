<%@ page language="java"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <%
		String aa  = request.getParameter("txta");
		String bb = request.getParameter("txtb");
		String nut = request.getParameter("but1");
		long a,b,kq = 0 ;
		if(aa!= "" && bb!= "" && aa!=null && bb!= null){
			a = Long.parseLong(aa);
			b = Long.parseLong(bb);
			if(nut != null && !(nut.equals("/") && b==0)){
				kq = (nut.equals("+")) ? a+b : (nut.equals("-")) ? a-b : (nut.equals("*")) ? a*b : (long)a/b ;
			//	out.print(a + nut + b + "=" + kq);
			}
			else
				out.print("Dữ liệu vào sai");
		}
	%> --%>
	<form action="tinhController" method="post">
		a=
		<input type="number" name="txta" value="<%= session.getAttribute("txta") != null ? session.getAttribute("txta") : 0 %>"><br>
		b=
		<input type="number" name="txtb" value="<%=session.getAttribute("txtb") != null ? session.getAttribute("txtb") : 0 %>"><br>
		kq=
		<input type="number" name="txtkq" value="<%=session.getAttribute("kq") != null ? session.getAttribute("kq") : 0 %>"><br>
		<input type="submit" name="but1" value="+">
		<input type="submit" name="but1" value="-">
		<input type="submit" name="but1" value="*">
		<input type="submit" name="but1" value="/">
	</form>
	<%if( session.getAttribute("kq") != null)
		out.print(session.getAttribute("kq"));%>
</body>
</html>