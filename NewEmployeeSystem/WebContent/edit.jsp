<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="model.entity.SectionBean"%>
<%@page import="java.util.List"%>
<%@page import="model.dao.SectionDAO"%>
<%@page import="model.entity.EmployeeBean"%>
<%@ page language="java" contentType="text/html; charset=Windows-31J"
	pageEncoding="Windows-31J"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Windows-31J">
<!-- jQuery -->
<!-- script src="js/jquery-3.0.0.min.js" type="text/javascript"></script-->
<script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"
	type="text/javascript"></script>
<!-- jQuery UI -->
<link type="text/css"
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/themes/start/jquery-ui.css"
	rel="stylesheet">

<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>

<!-- validation -->
<link rel="stylesheet" href="css/validationEngine.jquery.css"
	type="text/css" />
<script src="js/jquery.validationEngine.js" type="text/javascript"></script>
<script src="js/languages/jquery.validationEngine-ja.js"
	type="text/javascript" charset="UTF-8"></script>

<title>�ҏW���</title>
<link href="css/styleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<p class="title">�]�ƈ���ҏW�����ʂł�</p>
	<form action="DetailServlet" method="post" id="formID">
		<%
			EmployeeBean bean = (EmployeeBean) session.getAttribute("EMPLOYEE");
			List<SectionBean> sectionList = (List<SectionBean>) request
					.getAttribute("SECTION_LIST");
		%>
		<table>
			<tr>
				<th>�]�ƈ��R�[�h�F</th>
				<td><input type="text" name="EMPLOYEE_NUMBER"
					value="<%=bean.getEmployeeNumber()%>" class="validate[required]"></td>
			</tr>
			<tr>
				<th>�c���F</th>
				<td><input type="text" name="LAST_NAME"
					value="<%=bean.getLastName()%>" class="validate[required]"></td>
			</tr>
			<tr>
				<th>���O�F</th>
				<td><input type="text" name="FIRST_NAME"
					value="<%=bean.getFirstName()%>" class="validate[required]"></td>
			</tr>
			<tr>
				<th>�c���i�J�i�j�F</th>
				<%
						String phoneticLastName = bean.getPhoneticLastName();
						if (phoneticLastName == null) {
							phoneticLastName = "";
						}%>
				<td><input type="text" name="PHONETIC_LAST_NAME"
					value="<%= phoneticLastName%>" class="validate[custom[katakana]]">
			</tr>
			<tr>
				<th>���O�i�J�i�j�F</th>
				<td>
					<%
						String phoneticFirstName = bean.getPhoneticFirstName();
						if (phoneticFirstName == null) {
							phoneticFirstName = "";
						}%> <input type="text" name="PHONETIC_FIRST_NAME"
					value="<%=phoneticFirstName%>" class="validate[custom[katakana]]">
				</td>
			</tr>
			<tr>
				<th>���ʁF</th>
				<td>
					<%
						int sex = bean.getSex();
									if (sex == 0) {
					%> <input type="radio" name="SEX" value="0" checked="checked">�j��<input
					type="radio" name="SEX" value="1">����<%
 	} else if (sex == 1) {
 %> <input type="radio" name="SEX" value="0">�j��<input
					type="radio" name="SEX" value="1" checked="checked">����<%
 	} else {
 %> <input type="radio" name="SEX" value="0">�j��<input
					type="radio" name="SEX" value="1">����<%
 	}
 %>
				</td>
			</tr>
			<tr>
				<th>���N�����F</th>
				<td>
					<%Date birthDay = bean.getBirthDay();
				if(birthDay != null) {
				%> <input type="date" name="BIRTH_DAY" value="<%=birthDay%>"
					placeholder="yyyy-mm-dd"> <% } else {%> <input type="date"
					name="BIRTH_DAY" value="" placeholder="yyyy-mm-dd"> <%} %>
				</td>
			</tr>
			<tr>
				<th>�����F</th>
				<td><select name="SECTION_CODE">
						<option value="<%=bean.getSectionCode()%>"><%=bean.getSectionName()%></option>
						<%
							SectionDAO dao = new SectionDAO();
											for (SectionBean sctionBean : sectionList) {
						%>
						<option value="<%=sctionBean.getSectionCode()%>"><%=sctionBean.getSectionName()%></option>
						<%
							}
						%>
				</select></td>
			</tr>
			<tr>
				<th>���Г��F</th>
				<td><input type="date" name="HIRE_DATE"
					value="<%=bean.getHireDate()%>" placeholder="yyyy-mm-dd"
					class="validate[required]"></td>
			</tr>
		</table>
		<input type="submit" name="ACTION" value="�ҏW����"> <input
			type="reset" value="�N���A"
			onclick="return confirm('���Z�b�g�{�^�����N���b�N����܂����B�{���ɓ��͓��e���폜���Ă���낵���ł����H')">
		<br> <input type="submit" value="�ڍ׉�ʂ֖߂�" name="ACTION">
	</form>
	<script src="js/javascript.js" type="text/javascript"></script>
</body>
</html>