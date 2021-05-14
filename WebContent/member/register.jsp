<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <script type="text/javascript" src="checking.js" charset="utf-8"></script>
<link rel="stylesheet" href="../css/register1.css" />
<title>document</title>
</head>
<body>
	<div class="total">
		 <%@ include file="/header.jsp" %>
		<center>
			<form action="register_ok.jsp" class="sign-up-form" id="form" name="form" method="post">
				<div class="main">
					<div class="title">
						<h1>회원가입</h1>
					</div>
					<BR> <BR>
				</div>
				<div class="input-field">
					<table class="table ">
						<tr>
							<th>아이디</th>
							<td><input type="text" placeholder="아이디" name="id"></td>
							<td><input type="button" value="중복확인" onclick ""><td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input type="text" placeholder="이름" name="name"></td>
						</tr>
						<tr>
							<th>패스워드</th>
							<td><input type="password" placeholder="패스워드" name="pass"></td>
						</tr>

						<tr>
							<th>패스워드확인</th>
							<td><input type="password" placeholder="패스워드 확인"
								name="pass2"></td>
						</tr>
						<tr>
							<th>성별</th>
							<td><input type="radio" name="gender" value="남">남 <input
								type="radio" name="gender" value="여">여</td>
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
							<td><input type="email" placeholder="이메일" name="email1"></td>
						</tr>

						<!-- 주소 입력 넣을 부분 -->
						<script type="text/javascript" src="juso.js" ></script> 
						<tr>
							<th>주소</th>
							<tr>
								<th>도로명주소</th>
								<td><input type="text"  style="width:300px;" id="roadAddrPart1"  name="roadAddrPart1" ></td>
							</tr>
							<tr>
								<th>고객입력 상세주소</th>
								<td><input type="text"  style="width:300px;" id="addrDetail"  name="addrDetail" /></td>
							<td colspan="2"><input type="button" onClick="goPopup();" value="팝업_domainChk"/></td>
							</tr>
						</tr>
						<tr>
							<th><input type="submit" class="btn" value="신청하기" onclick ="member_ok()"></th>
							<td><input type="button" class="btn" value="뒤로가기"
								onclick="location.href='../login.jsp'"></td>
						</tr>
					</table>
				</div>
			</form>
			</certer>
	
		<div class="clear"></div>
		 <%@ include file="/footer.jsp" %>
	</div>
</body>
</html>