package com.yjh.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 이름, 자기소개
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
	
		out.print("<html><head><title></title></head><body>");
		out.print("<h1>" + name + "님 지원이 완료 되었습니다.</h1>");
		out.print("<hr> 지원 내용 <br>");
		out.print(introduce);
		out.print("</body></html>");
		
	}
	
}
