<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=Windows-31J"
    pageEncoding="Windows-31J"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Windows-31J">
<title>�ҏW���s</title>
<link href="css/styleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form action="DetailServlet" method="get">
<p class ="title">�]�ƈ��̕ҏW�Ɏ��s���܂����B</p>
<%List<String> error = (List<String>)request.getAttribute("ERROR");
if(!(error.size() == 0 )) {
	for(String errorMessage : error) {
		%><%=errorMessage %><br>
		<%
	}
}
%>
<input type="submit" value="�ڍ׉�ʂ֖߂�">
</form>
</body>
</html>