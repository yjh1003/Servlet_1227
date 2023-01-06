package com.yjh.servlet_database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yjh.servlet.common.MysqlService;

@WebServlet("/db/test01")
public class Test01Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		// insert
		
		String selectQuery = "SELECT `address`, `area`, `type`\r\n"
				+ "FROM `real_estate` ORDER BY `id` DESC LIMIT 10;";
		
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		try {
			while(resultSet.next()) {
				
				out.print("매물 주소 : " + resultSet.getString("address"));
				out.print(", 면적 : " + resultSet.getInt("area"));
				out.println(", 타입 : " + resultSet.getString("type"));
				
				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}
	
	
	
}
