<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="twoline.OnelineDAO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	
	OnelineDAO dao = new OnelineDAO();
	dao.delete(no);  
	response.sendRedirect("memo_list.jsp");
%>
</body>
</html>