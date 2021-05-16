<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dto" class="db.notifyBoardBeans.NotifyDTO"/>
<jsp:useBean id="notifyDAO" class="db.notifyBoardBeans.NotifyDAO"/>

<c:set var="content" value = "${notifyDAO.getData(param.no)}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
//입력 자료 검사
function check() {
	if (modify_form.notify_title.value == "") {
		alert("제목을 입력하세요");
		modify_form.title.focus();
	} else if (modify_form.notify_detail.value == "") {
		alert("내용을 입력하세요");
		modify_form.cont.focus();
	} else
		modify_form.submit();
}
</script>
<body>
	<h2 style="text-align:center;"> *** 수정하기 *** </h2>
	<form name="modify_form" method="post" action = "notice_modify_action.jsp">
		<input type="hidden" name = "no" value = "${content.no}"/>
		<table border="1">
			<tr>
				<td align="center">제 목</td>
				<td><input name="title" size="50" value="${content.notify_title}"></td>
			</tr>
			<tr>
				<td align="center">내 용</td>
				<td><textarea name="cont" cols="50" rows="10">${content.notify_detail }</textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center" height="30">
					<input type="button" value="작  성" onClick="check()">&nbsp;
					<input type="button" value="목  록" onClick="location.href='notice_list.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>