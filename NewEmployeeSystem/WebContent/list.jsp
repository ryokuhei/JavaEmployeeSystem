<%@page import="model.entity.EmployeeBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=Windows-31J"
	pageEncoding="Windows-31J"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Windows-31J">
<title>�ꗗ���</title>
<link href="css/styleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<p class="title">�]�ƈ��Ǘ��V�X�e��</p>

	<table>
		<tr>
			<th class="vertical">ID</th>
			<th class="vertical">���O</th>
		</tr>
		<%
				List<EmployeeBean> list = (List<EmployeeBean>) request
						.getAttribute("EMPLOYEE_LIST");
				if (list.size() != 0) {
					for (EmployeeBean bean : list) {
						//for(int i = 0; i < list.size(); i++) {
			%>
		<tr>
			<form action="ListServlet" method="post">
			<td><%=bean.getEmployeeNumber()%></td>
			<td><%=bean.getLastName()%></td>
			<td><%=bean.getFirstName()%></td>
			<td><input type="submit" value="�ڍ�" name="ACTION"> <input
				type="hidden" value="<%= bean.getEmployeeNumber()%>"
				name="EMPLOYEE_CODE"></td>
			</form>
		</tr>
		<%
				}
				}
			%>
	</table>
	<form action="ListServlet" method="post">
		<input type="submit" value="�]�ƈ��o�^" name="ACTION">
	</form>
</body>
</html>