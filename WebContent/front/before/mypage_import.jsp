<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="css/mypage_import.css" />
<title>경력사항</title>
</head>
<body>
	<div class="total">
		<header class="header">
			<div class="header_logo">
				<h1>
					<a href="main.jsp"> <img src="images/logo11.png" alt="home"
						width="200" height="100" /></a>
				</h1>
			</div>
			<div class="header_gnb">
				<ul>
					<li><a href="main.jsp">HOME</a></li>
					<li><a href="board_list.jsp">구인게시판</a></li>
					<li><a href="shop.jsp">포인트상점</a></li>
					<li><a href="mypage_import.jsp">마이페이지</a></li>
					<%
					if(session.getAttribute("id")!=null){
						%>
						<li><a href="login.jsp" onclick = "logout()">LOGOUT</a></li>
						<script>
						function logout() {
							alert("로그 아웃 되었습니다.");
						}
						<%
						session.invalidate(); //세션 삭제
						%>
						</script>
						<%
						}else{
						%>
						<li><a href="login.jsp">LOGIN</a></li>
						<%
						}
						%>
					
				</ul>
			</div>
		</header>
		<form>
			<div class="section">
				<div class="leftbox">
					<h3>My page</h3>
					<button type="button" onclick="location.href='mypage_import.jsp'">회원정보
						수정</button>
					<br>
					<button type="button" onclick="location.href='mypage_write.jsp'">내가
						쓴글</button>
					<br>
					<button type="button" onclick="location.href='mypage_apply.jsp'">지원현황</button>
					<br>
					<button type="button" onclick="location.href='mypage_point.jsp'">마이포인트조회</button>
					<br>
					<button type="button" onclick="location.href='mypageLike.jsp'">스크랩</button>
				</div>
				<div class="mainbox">
					<h1>회원 정보 변경</h1>
					<br> <br> <br>
					<table>
						<tr>
							<td class="title">아이디</td>
							<td><input type="text" style="width: auto"  value="test" readonly></td>
							<td class="title">이름</td>
							<td><input type="text" style="width: auto" value = "홍길동"></td>
						</tr>
						<tr>
							<td class="title">비밀번호</td>
							<td><input type="text" style="width: auto" ></td>
							<td class="title">비밀번호 확인</td>
							<td><input type="text" style="width: auto" ></td>
						</tr>
						<tr>
							<td class="title">생년월일</td>
							<td><input type="text" style="width: auto" value = "1994년 2월 16일" readonly></td>
						</tr>
						<tr>
							<td class="title">메일주소</td>
							<td colspan="3" text-aling="end"><input type="email" value = "email123@naver.com" readonly></td>
						</tr>
						<tr>
							<td class="title">주소</td>
							<td><input type="text" style="width: auto"></td>
						</tr>
					</table>
					<br>
					<br>
					<div class="button">
						<button type="submit" onclick="">완 료</button>
						<button onclick="member_delete()">회원 탈퇴</button>
						<script>
							function member_delete() {
								if (!confirm("정말로 탈퇴 하시겠습니까?? 한번 탈퇴 하면 되돌릴 수 없습니다")) {
									alert("취소 되었습니다.");
								} else {
									alert("탈퇴가 완료 되었습니다.");
								}
							}
						</script>
						<span><button type="reset">다시쓰기</button></span>
					</div>
				</div>
			</div>
		</form>
		<div class="clear"></div>
		<div class="footer">
			<div class="f_img">
				<img src="images/footer.png" id="f_img">
			</div>
			<div>
				Green.co <br> Addr. 부산시 가나다동 가나다라구 2로 1234 <br> 010 - 123
				-1234 <br> COPYRIGHT 2019. TAMO. ALL RIGHT RESERVED.
			</div>
		</div>
	</div>
</body>
</html>