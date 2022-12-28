<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>
	<%
		int[] scores = {80, 90, 100, 95, 80};
	
		int sum = 0;
		for(int i = 0; i < scores.length; i++) {
			sum +=scores[i];
		}
		
		double average = sum / (double)scores.length;
	%>
	
	<h2>점수 평균은 <%= average %> 입니다.</h2>




	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
		int score = 0;
		for(String check:scoreList) {
			
			if(check.equals("O")) {
				score += 100 / scoreList.size();
			}
		}
	%>
	
	<h2>채점 결과는 <%= score %>점 입니다.</h2>
	
	
	
	
	<%!
		// 1부터 N까지의 합을 구하는 메소드
		public int sumAll(int n) {
			int result = 0;
			for(int i = 1; i <= n; i++) {
				result +=i;
			}
			return result;
		}
	%>	
	
	<h2>1에서 50까지의 합은 <%= sumAll(50) %></h2>	
	
	
	
	<%
	// 주어진 생년월일을 가진 사람의 나이를 구하세요.
		String birthDay = "20010820";
		String yearString = birthDay.substring(0, 4);
		int year = Integer.parseInt(yearString);
		int age = 2022 - year + 1;
		
	%>
	
	<h2><%= birthDay %> 의 나이는 <%= age %>살 입니다.</h2>
	
	
</body>
</html>