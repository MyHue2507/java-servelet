<%@page import="bo.loaiBo"%>
<%@page import="bean.loaiBean"%>
<%@ page language="java"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<style>
	.margin{
		margin-right: 50px;
		margin-left: 50px;
	}
	.colorText{
		color: #f34657;
	}
</style>
<head>
<meta charset="utf-8">
<title>Loại Sách</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<div class="mx-auto" style="width:70%;">
		<table class="table table-bordered mt-5">
		<thead class="table-success">
			<tr>
      			<th class="text-center">Tên Loại Sách</th>
      			<th class="text-center">Danh sách các loại sách</th>
    		</tr>
		</thead>
		<tbody>
			<tr>
    			<td>
			    	<%
					loaiBo loaibo = new loaiBo();
					for(loaiBean l : loaibo.getLoai()){%>
						<a href = "hienThi.jsp?maLoai=<%=l.getMaLoai()%>&tenLoai=<%=l.getTenLoai()%>&dsSach=<%=l.getDsSach()%>" class="colorText"><%=l.getTenLoai() %></a> <br>
					<%}%>
    			</td>
    			<td>
    				<%
    				String maLoai = request.getParameter("maLoai");
    				if(maLoai != null){
    						String [] dsSach = request.getParameter("dsSach").split(":");%>
    						<cite title="Source Title" class="text-success"><%=request.getParameter("tenLoai")%></cite> gồm:<hr>
    						<%
    						for(String st : dsSach){%>
    							<pre class="text-info">    <%=st %></pre>
    						<%}
    				}
    				else
    					out.print("Chọn loại sách để xem danh sách");
    				%>
    			</td>
  			</tr>
			</tbody>
		</table>
	</div>
</body>
</html>