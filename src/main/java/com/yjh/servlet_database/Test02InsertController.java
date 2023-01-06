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
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `favorites`\r\n"
				+ "(`name`, `url`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUES\r\n"
				+ "('" + name + "', '" + url + "', now(), now()),\r\n"
				+ "('" + name + "', '" + url + "', now(), now()),\r\n"
				+ "('" + name + "', '" + url + "', now(), now()),\r\n"
				+ "('" + name + "', '" + url + "', now(), now());";
		
		int count = mysqlService.update(query);
//		out.println("수행 결과 : " + count);
		
		mysqlService.disconnect();
		
		// redirect
		response.sendRedirect("/db/test02.jsp");
	}
}
