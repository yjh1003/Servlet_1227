<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 수치</title>
</head>
<body>

	<%
	//	BMI =  몸무게 / ((키 / 100.0) * (키 / 100.0));
		String heightString = request.getParameter("height");
		int height = Integer.parseInt(heightString);
		
		String weightString = request.getParameter("weight");
		int weight = Integer.parseInt(weightString);
		
		double BMI =  weight / ((height / 100.0) * (height / 100.0));
		
		if(BMI <= 20) {
			String BMI1 = "저체중";
		} else if(BMI <= 25) {
			out.print("정상");
		} else if(BMI <= 30) {
			out.print("과체중");
		} else if(BMI > 31) {
			out.print("비만");
		}
	%>
	
	<h2><b>BMI 측정 결과</b></h2>
	<h1>당신은 <%= %></h1>
</body>
</html>