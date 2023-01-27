package com.he20o.homepage;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/join")
public class ServletJoin extends HttpServlet {
      @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
    	  Memberdto dto = new Memberdto(request.getParameter("id"),
    				request.getParameter("pw"),
    				request.getParameter("re_pw"),
    				request.getParameter("name"),
    				request.getParameter("email"));

    		Memberdao dao = new Memberdao();
    		dao.join(dto);
    		
    		response.sendRedirect("/index.jsp");
	}
}
