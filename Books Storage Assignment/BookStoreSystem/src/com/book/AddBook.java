package com.book;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AddBook
 */
@WebServlet("/AddBook")
public class AddBook extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bookId =request.getParameter("bookId");
		String bookName = request.getParameter("bookName");
		String author = request.getParameter("author");
		int bpages = Integer.parseInt(request.getParameter("bpages"));
		double bprice = Double.parseDouble(request.getParameter("bprice"));
		try {
			int addBook=DatabaseConnection.insertUpdateFromSqlQuery("insert into books(book_number,book_title,book_author,book_total_pages,book_cost)values('"+bookId+"','"+bookName+"','"+author+"','"+bpages+"','"+bprice+"')");
			if(addBook > 0) {
				response.sendRedirect("index.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
