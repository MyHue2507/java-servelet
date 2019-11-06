<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	long tong = 0 ;
	long n = 0 ;
	String txtn = request.getParameter("txtn");
	if(txtn!= null && txtn!= ""){
		n = Long.parseLong(txtn) ;
		//Kiem tra xem da tao 1 session cho tong chua
		if(session.getAttribute("ss") == null)//chua tao
			session.setAttribute("ss", (long)0);//tao ra 1 bieen session
		//Thao tac
		//b1: gan session vao bien
		tong = (long)session.getAttribute("ss") ;
		// b2 thay doi bien
		tong = tong + n ;
		session.setAttribute("ss", tong);
		out.print(session.getAttribute("ss"));
	}
	else
		out.print("Dữ liệu vào sai");
	%>
	<%
		String aa  = request.getParameter("txta");
		String bb = request.getParameter("txtb");
		String nut = request.getParameter("but1");
		long a,b,kq = 0 ;
		if(aa!= "" && bb!= "" && aa!=null && bb!= null){
			a = Long.parseLong(aa);
			b = Long.parseLong(bb);
			if(nut != null && !(nut.equals("/") && b==0)){
				kq = (nut.equals("+")) ? a+b : (nut.equals("-")) ? a-b : (nut.equals("*")) ? a*b :a/b ;
				out.print(a + nut + b + "=" + kq);
			}
			else
				out.print("Dữ liệu vào sai");
		}
	%>
</body>
</html>