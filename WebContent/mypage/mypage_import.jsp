<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../css/mypage_import.css" />
<title>경력사항</title>
</head>
<body>
	<div class="total">
		 <%@ include file="/header.jsp" %>
		<form>
			<div class="section">
				<div class="leftbox">
					<h3>My page</h3>
					<button type="button" onclick="location.href='mypage_import.jsp'">회원정보
						수정</button>
					<br>
					<button type="button" onclick="location.href='mp_write.jsp'">내가
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
							<td><input type="text" style="width: auto" value = "홍길동" readonly></td>
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
						<button type="submit" onclick="update()">수정 완료</button>
						 <script>
						 function update(){
							 
      						var age = prompt("비밀번호를 입력해주세요.", "");

     						 if (age == <%="1234"%>) {
        					alert("수정완료 되었습니다.");
        					history.reload();
     						} else {
     						alert("비밀 번호가 다릅니다.");
     						}
						 }
   						</script>
						<button type="button" onclick="member_delete()">회원 탈퇴</button>
						<script>
							function member_delete() {
								if (confirm("정말로 탈퇴 하시겠습니까??\n작성하셨던 모든 글들이 삭제되며, 되돌릴 수 없습니다.\n😭😭😭😭😭") == true) {
									document.location.href="<%=p_helper_path%>/mypage/member_delete_ok.jsp"
								} else {
									alert("취소 되었습니다.");
								}
							}
						</script>
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