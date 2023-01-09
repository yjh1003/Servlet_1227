package com.yjh.servlet_database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yjh.servlet.common.MysqlService;

@WebServlet("/db/test02_insert")
public class Test02InsertController extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
		// 이름과 주소를 전달 받곡 insert 한다.

		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `favorites`\r\n"
				+ "(`name`, `url`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUES\r\n"
				+ "('" + name + "', '" + url + "', now(), now());";
		
		int count = mysqlService.update(query);
		
		mysqlService.disconnect();
		
		// 리스트 페이지로 리다이렉트
		response.sendRedirect("/db/test02.jsp");
		
	}
}
