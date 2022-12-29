<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜 시간</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</head>
<body>

		<%
			// 날짜가 보고싶으면 what=date
			// 시간이 보고싶으면 what=time
			String what = request.getParameter("what");
		
			Date now = new Date();
			SimpleDateFormat timeFormatter = new SimpleDateFormat("현재 시간 HH시 mm분 ss초");
			SimpleDateFormat dateFormatter = new SimpleDateFormat("오늘 날짜 yyyy년 M월 dd일");
			
			String formatString = null;
			if(what.equals("date")) { // 날짜
				formatString = dateFormatter.format(now);				
			} else { // 시간
				formatString = timeFormatter.format(now);								
			}
			
		
		%>
		<div class="container"> 
			<div class="display-2"><%= formatString %></div>
		</div>
		

	
</body>
</html>