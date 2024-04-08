<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>slist</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<section>
<h2>학생정보현황</h2>

<form>]
<table border="1">
<tr>
<td>학번</td>
<td>이름</td>
<td>주민번호</td>
<td>학과명</td>
<td>성별</td>
<td>전화번호</td>
<td>이메일</td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
try{
	String sql="SELECT stuid, sname, jumin, dept_name, jumin, phone, email" +
		"FROM tbl_student_202210";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()) {
		String jumin = rs.getString(3);
		String
	}
}
%>
</table>
</form>
</section>
</body>
</html>