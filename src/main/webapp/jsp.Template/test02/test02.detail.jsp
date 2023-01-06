<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노래</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="/jsp.Template/test02/style.css" type="text/css">
</head>
<body>

<%@ include file="data.jsp" %>

<%

    String idString = request.getParameter("id");
    
    Integer id = null;
    if(idString != null) {
    	id = Integer.parseInt(idString);
    }
    
	String title = request.getParameter("title");
   
%>
	
	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<section class="contents">
			<div class="music-info mt-4">
				<h3>곡 정보</h3>
				
				<% for(Map<String, Object> music:musicList) { 
					Integer musicId = (Integer)music.get("id");
					// 아이디가 널이 아니면, 아이디가 일치하는 결과
					// 타이틀이 널이 아니면, 타이틀이 일치하는 결과
					// if(musicId.equals(id)) {
					// if(title.equals(music.get("title"))) {
					if( (id != null && id.equals(musicId)) 
							|| (title != null && title.equals(music.get("title"))) ) {
						int second = (Integer)music.get("time");
						int minute = second / 60;
						second = second % 60;
						
				%>
				<div class="info d-flex border border-success p-3 mt-3">
			
					<div class="photo col-3">
						<img width="200" src="<%= music.get("thumbnail") %>">
					</div>
					<div class="info col-9">
						<div class="display-4"><%= music.get("title") %></div>
						<div class="small font-weight-bold text-success"><%= music.get("singer") %></div>
						<div class="small mt-3">
							<div>앨범 - <%= music.get("album") %></div>
							<div>재생시간 - <%= minute %>:<%= second %></div>
							<div>작곡가 - <%= music.get("composer") %></div>
							<div>작사가 - <%= music.get("lyricist") %></div>
						</div>
					</div>
				</div>
				<% }
				
				} %>
			</div>
			<div class="Lyrics mt-4">
				<h3>가사</h3>
				<hr>
				<div>가사 정보 없음</div>
			</div>
			
		</section>
		<jsp:include page="footer.jsp" />
		
	</div>
	
	
</body>
</html>