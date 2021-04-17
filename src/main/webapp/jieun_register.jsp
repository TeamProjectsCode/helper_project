<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://kit.fontawesome.com/64d58efce2.js"
	crossorigin="anonymous">
	
</script>
<link rel="stylesheet" href="register.css" />
<title>회원가입</title>
</head>
<body>
<center>
	 <div class="nav">
	        <div class="nav-right-items">
	         <div class="nav-item">홈</div>
	         <div class="nav-item">구인게시판</div>
	         <div class="nav-item">공지사항</div>
	         <div class="nav-item">마이페이지</div>
	         <div class="nav-item">로그인</div>
	        </div>
	     </div>
	     <div class="main">
	         <div class="title">
	             회원가입
	         </div>
	         <div class="subtitle">
	             혼자서는 하기 힘들거나 일상생활에 필요한 소 일거리를 THE HELPER로 해결하세요!
	         </div>
	         <BR>
	         <BR>
	         <div class="subtitle">
	         <hr style="border: solid 2px #AACFD0;">
	         </div>
	     </div>
	<form action="#" class="sign-up-form">
		<div class="input-field">
			<table class="table ">
				<tr>
					<th>아이디</th>
					<td><input type="text" placeholder="아이디" name="id"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text"  placeholder="이름" name="name"></td>
				</tr>
				<tr>
					<th>패스워드</th>
					<td><input type="password"  placeholder="패스워드" name="pass"></td>
				</tr>

				<tr>
					<th>패스워드확인</th>
					<td><input type="password"  placeholder="패스워드 확인" name="pass2"></td>
				</tr>

				<tr>
					<th>성별</th>
					<td><input type="radio" name="gender" value="남">남
					 <input type="radio" name="gender" value="여" >여</td>
				</tr>

				<tr>
					<th>생일</th>
					<td><input type="text" name="birth_yy" maxlength="4"
						placeholder="년(4자)" size="6"> <select name="birth_mm">
							<option value="">월</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
					</select> <input type="text" name="birth_dd" maxlength="2" placeholder="일"
						size="4"></td>
				</tr>

				<tr>
					<th>이메일</th>
					<td><input type="email"  placeholder="이메일" name="email1"></td>
				</tr>

				<tr >
					<th><input type="submit" class="btn" value="신청하기" ></th>
					<td><input type="submit" class="btn" value="뒤로가기" ></td>
				</tr>
				</table>
			</div>
		</form>
	</center>
	</body>
</html>