<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script type="text/javascript" src="script.js" charset="utf-8"></script>
<link rel="stylesheet" href="../css/notice.css" type="text/css" />
<title>Insert title here</title>
</head>
<body>
	<div class="total">
		 <%@ include file="/header.jsp" %>
		<form action="" method="POST">
			<div class = "section">
			<div class="detail">
				<ul>
					<h3>
						제목 &nbsp;&nbsp;&nbsp;<input type="text" name="title">
						<p></p>
						<br>
						카테고리 &nbsp;&nbsp;&nbsp;<select>
							<option value="job">이벤트</option>
							<option value="job">필독 공지</option>
							<option value="job">이용자 제제</option>
						</select>
						<p></p>
						<br>
					</h3>
					
				</ul>
					<ul>
					<h3>상세 내용</h3>
					<textarea cols="60" rows="10"></textarea>
					</ul>
			<div class="btn">
				<button type="submit" onclick="">작성하기</button>
				<span><button type="reset">다시쓰기</button></span>
			</div>
			</div>
			</div>
		</form>
		<div class="clear"></div>
		 <%@ include file="/footer.jsp" %>
	</div>
</body>
</html>

<script type="text/javascript" src="resources/js/notice-write.js"></script>














