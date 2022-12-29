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


		<%
		Date now = new Date();
		
		SimpleDateFormat date = new SimpleDateFormat("yyyy년 M월 dd일");
		SimpleDateFormat time = new SimpleDateFormat("HH시 mm분 ss초");
		String dateString = date.format(now);
		String timeString = time.format(now);
		
		String todayDate = request.getParameter("date");
		
		
		%>
		<h1>오늘 날짜 <%= dateString %></h1>
		<h1>현재 시간 <%= timeString %></h1>

	
</body>
</html>