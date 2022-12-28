package com.yjh.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class test07Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String adress = request.getParameter("adress");
		String payment = request.getParameter("payment");
		String price = request.getParameter("price");
				
		out.println("<html><head><title>결제</title></head> <body>");
		
		
		if(!adress.contains("서울시")) {
			out.println("<h1>배달 불가 지역입니다</h1>");
		} else if (payment.equals("신한카드")) {
			out.println("<h1>결제 불가 카드 입니다.</h1>");
		} else {
			out.println("<h2>" + adress + "로 배달중 </h2>");
			out.println("<hr> 결제금액 : " + price + "원");
		}
		
		out.println("</body></html>");
	}
}
