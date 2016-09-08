<%@page import="model.entity.SectionBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=Windows-31J"
	pageEncoding="Windows-31J"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Windows-31J">
<title>�V�K�o�^</title>

<!-- script src="js/jquery-3.0.0.min.js" type="text/javascript"></script-->
<script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
<!-- validation -->
<link href="css/styleSheet.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/validationEngine.jquery.css"
	type="text/css" />
<script src="js/jquery.validationEngine.js" type="text/javascript"></script>
<script src="js/languages/jquery.validationEngine-ja.js"
	type="text/javascript" charset="UTF-8"></script>

</head>
<body>
	<form action="RagstrationServlet" method="post" id="formID">
		<p class="title">�]�ƈ��ꗗ</p>
		<table>
			<tr>
				<th>�]�ƈ��R�[�h�F</th>
				<td><input type="text" name="EMPLOYEE_NUMBER"
					class="validate[required]"></td>
			</tr>
			<tr>
				<th>�c���F</th>
				<td><input type="text" name="LAST_NAME"
					class="validate[required]"></td>
			</tr>
			<tr>
				<th>���O�F</th>
				<td><input type="text" name="FIRST_NAME"
					class="validate[required]"></td>
			</tr>
			<tr>
				<th>�c���i�J�i�j�F</th>
				<td><input type="text" name="PHONETIC_LAST_NAME"
					class="validate[custom[katakana]]"></td>
			</tr>
			<tr>
				<th>���O�i�J�i�j�F</th>
				<td><input type="text" name="PHONETIC_FIRST_NAME"
					class="validate[custom[katakana]]"></td>
			</tr>
			<tr>
				<th>���ʁF</th>
				<td><input type="radio" name="SEX" value="0">�j <input
					type="radio" name="SEX" value="1">��</td>
			</tr>
			<tr>
				<th>���N�����F</th>
				<td><input type="date" name="BIRTH_DAY" placeholder="yyyy-mm-dd"></td>
			</tr>
			<tr>
				<th>�����F</th>
				<td><select name="SECTION_CODE">
						<%
							List<SectionBean> list = (List<SectionBean>) request
									.getAttribute("SECTION_LIST");
							if (list.size() != 0) {
								for (SectionBean bean : list) {
						%>
						<option value="<%=bean.getSectionCode()%>"><%=bean.getSectionName()%></option>
						<%
							}
							}
						%>
				</select></td>
			</tr>
			<tr>
				<th>���Г��F</th>
				<td><input type="date" name="HIRE_DATE" placeholder="yyyy-mm-dd" class="validate[required]"></td>
			</tr>
		</table>
		<input type="submit" name="EMPLOYEE_DATA" value="�o�^"><input
			type="reset" value="�N���A"
			onClick="return confirm('���Z�b�g�{�^�����N���b�N����܂����B�{���ɓ��͓��e���폜���Ă���낵���ł����H')">
		<br>
	</form>
	<form action="ListServlet" method="get">
		<input type="submit" name="ACTION" value="�ꗗ��ʂ֖߂�">
	</form>
	<script src="js/javascript.js" type="text/javascript"></script>
</body>
</html>