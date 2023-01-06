<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.yjh.servlet.common.MysqlService" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트 주소 목록</title>
</head>
<body>
<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	
	String query = "SELECT * FROM `favorites` ORDER BY `id` DESC;";
	
	ResultSet resultSet = mysqlService.select(query);
%>
	<div class="container">
		<table class="table text-center">
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
				</tr>
			</thead>
			<tbody>
			<% while(resultSet.next()) { %>
				<tr>
					<td><%= resultSet.getString("name") %></td>
					<td><a href="<%= resultSet.getString("url") %>"><%= resultSet.getString("url") %></a></td>
				</tr>
			<% } %>
			</tbody>
		</table>
	</div>
</body>
</html>