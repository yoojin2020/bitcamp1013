<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	String tel = request.getParameter("tel");

	System.out.println("name="+ name);
	System.out.println("addr="+ addr);
	System.out.println("tel="+ tel);
%>
