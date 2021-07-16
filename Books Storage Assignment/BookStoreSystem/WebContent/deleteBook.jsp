<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<%
	int bookId = Integer.parseInt(request.getParameter("bookId"));
	int books = DatabaseConnection.insertUpdateFromSqlQuery("delete from books where book_number='"+bookId+"'");
	if (books > 0) {
		response.sendRedirect("index.jsp");
	} else {
		response.sendRedirect("index.jsp");
	}
%>
