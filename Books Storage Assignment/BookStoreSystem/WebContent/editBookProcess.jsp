<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<%
	String bookId =request.getParameter("bookId");
	String bookName = request.getParameter("bookName");
	String author = request.getParameter("author");
	int totalPages = Integer.parseInt(request.getParameter("totalPages"));
	double price = Double.parseDouble(request.getParameter("price"));
	int updateBook = DatabaseConnection.insertUpdateFromSqlQuery("update books set book_title='" + bookName + "',book_author='"
			+ author + "',book_total_pages='" + totalPages + "',book_cost='" + price
			+ "' where book_number='" + bookId + "' ");
	if (updateBook > 0) {
		response.sendRedirect("index.jsp");
	} else {
		response.sendRedirect("editBook.jsp");
	}
%>