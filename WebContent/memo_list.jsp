<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="twoline.OnelineDTO" %> 
<%@ page import="twoline.OnelineDAO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap');
	* {
		margin: 0;
		padding: 0;
		font-family: 'Noto Sans KR', sans-serif;
	}
	body {
		width: 700px;
		background-color: #FCD83E;
		margin: auto;
	}
	form { 
		width: 504px;
		margin: auto;
		padding-bottom: 20px;
	}
	input:focus {
		outline: none;
	}
	input[type="text"] {
		width: 417px;
		height: 50px;
		padding-left: 8px;
		font-size: 20px;
		border: 2px solid #FDE891;
	}
	input[type="button"] { 
		border: none;
		float: right;
		font-family: 'Gothic A1', sans-serif;
		font-size: 15px;
		background-color: #FDE891;
	}
	input[type="submit"] { 
		width: 65px;
		height: 54px;
		float: right;
		border: 2px solid #ffffff;
		font-size: 15px;
		border-radius: 5px;
		background-color: #FDE891;
	}
	h1 {
		margin-bottom: 20px;
		text-align: center;
		font-size: 65px;
		font-weight: bolder;
		letter-spacing: 8px;
		color: #ffffff;
	}
	p {
		margin: 3px;
		padding-left: 5px;
		font-size: 20px;
	}
	#date {
		margin-top: 15px;
		padding-left: 5px;
		padding-right: 5px;
		font-size: 16px;
	}
	#box {
		width: 500px;
		height: 75px;
		margin: auto;
		margin-bottom: 10px;
		border: 2px solid #ffffff;
		background-color: rgba(255, 255, 255, 0.4);
	}
</style>
</head>
<%
	OnelineDAO dao = new OnelineDAO();
	ArrayList<OnelineDTO> dtos = dao.getList();
%>
<body>
<h1>memo</h1>
<form method="post" action="memo_write.jsp"> 
	<input type="text" name="memo" autofocus></input>
	<input type="submit" value="등록"></input>
</form>
<%
	for(int i = 0; i < dtos.size(); i++) {
		OnelineDTO dto = dtos.get(i);
		out.println("<div id=\"box\"><p>" + dto.getMemo() + "</p><p id=\"date\">" + dto.getWdate() + 
				"<input type=\"button\" value=\"삭제하기\" onClick=\"location.href='memo_delete.jsp?no="+dto.getNo()+"'\">");
		out.println("</input></p></div>");
	}
%>
</body>
</html>
