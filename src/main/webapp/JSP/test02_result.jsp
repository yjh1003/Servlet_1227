<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method="get" action="/JSP/test02.jsp">
		<%
			Date now = new Date();
			String date = request.getParameter("date");
			
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
			String dateString = formatter.format(now);
		%>
		<h1>오늘 날짜 <%= date %></h1>
	</form>

	<form method="get" action="/JSP/test02.jsp">	
		<%
		//	Date now = new Date();
			String time = request.getParameter("time");
			
			SimpleDateFormat formatter2 = new SimpleDateFormat("HH시 mm분 ss초");
			String timeString = formatter.format(now);
		%>
		
		<h1>현재 시간 <%= time %></h1>
	</form>
	
</body>
</html>