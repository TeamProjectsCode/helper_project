<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
S

<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>회원가입 페이지</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 text-center">
				<div class="col-sm-3"></div>

				<div class="col-sm-6">
					<h2 >회원가입</h2>
					<form action="RequestJoinProc.jsp" method="post">
						<table class="table table-boardered" >
							<tr>
								<th>아이디</th>
								<td><input type="text" class="form-control" name="id"></td>
							</tr>
							<tr>
								<th>이름</th>
								<td><input type="text" class="form-control" name="name"></td>
							</tr>
							<tr>
								<th>패스워드</th>
								<td><input type="password" class="form-control" name="pass"></td>
							</tr>

							<tr>
								<th>패스워드확인</th>
								<td><input type="password" class="form-control"
									name="pass2"></td>
							</tr>

							<tr>
								<th>성별</th>
								<th><input type="radio" name="gender" value="남">남 <input
									type="radio" name="gender" value="여" checked>여</th>
							</tr>

							<tr>
								<th>생일</th>
								<th><input type="text" name="birth_yy" maxlength="4"
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
								</select> <input type="text" name="birth_dd" maxlength="2"
									placeholder="일" size="4"></th>
							</tr>

							<tr>
								<th>이메일</th>
								<th><input type="email" class="form-control" name="email1"></th>
							</tr>
							
							<tr>
								<th><input type="button" class="form-control" value="뒤로가기"></th>
								<th><input type="submit" class="form-control" value="신청"></th>
								<th><input type="reset" class="form-control" value="다시쓰기"></th>
							</tr>

						</table>
					</form>
				</div>

			</div>
		</div>
	</div>
</body>
</html>