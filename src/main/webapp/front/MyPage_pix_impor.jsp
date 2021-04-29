<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="myImpo.css"  type="text/css" />
<title>Document</title>
</head>

<body>
    <div class="total">
        <header class="header">
            <div class="header_logo">
                <h1>
                <a href="#"><img src="../images/linkedin_banner_image_1.png" alt="home" width="200" height="100"></a>
                
                </h1>      
            </div>
            <div class="header_gnb">
                <ul>
                    <li><a href="#">홈</a></li>
                    <li><a href="#">구인게시판</a></li>
                    <li><a href="#">포인트상점</a></li>
                    <li><a href="#">마이페이지</a></li>
                    <li><a href="#">로그인</a></li>
                </ul>
            </div>
        </header>
<main>
	<form>
		<div class="box">
			<div class="leftbox">
				<h3>My page</h3>
				<button type="button" onclick="location.href='MyPage_pix_impor.jsp'">회원정보 수정</button>
				<br>
				<button type="button" onclick="location.href='MyPage_MyWrite.jsp'">내가 쓴글</button>
				<br>
				<button type="button" onclick="location.href='#'">지원현황</button>
				<br>
				<button type="button" onclick="location.href='#'">스크랩</button>
				<br>
				<button type="button" onclick="location.href='Mypage_license.jsp'">자격증 및 경력</button>
			</div>
			<div class="mainbox">
				<h1>회원 정보 변경</h1>
				<table>
					<caption>*표시는 필수 입력 사항입니다</caption>
					<tr>
						<td class="title">*아이디</td>
						<td><input type="text"  style="width: auto"></td>
						<td class="title">*이름</td>
						<td><input type="text"  style="width: auto"></td>
					</tr>
					<tr>
						<td class="title">*비밀번호</td>
						<td><input type="text" style="width: auto"></td>
						<td class="title">*비밀번호 확인</td>
						<td><input type="text" style="width: auto"></td>
					</tr>
					<tr>
						<td class="title">*주민번호</td>
						<td><input type="text" style="width: auto"></td>
					</tr>
					<tr>
						<td class="title">*메일주소</td>
						<td colspan="3" text-aling="end"><input type="email">@ <select
							style="width: auto; height: 23px;">
								<option value="naver">naver.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="nate.com">nate.com</option>
						</select></td>
					</tr>
					<tr>
						<td class="title">*주소</td>
						<td><input type="text" style="width: auto"></td>
						<td class="title">*성별</td>
						<td rowspan="2" valign=middle><input type="radio"
							name="gender">남자<br>
							 <input type="radio" name="gender">여자</td>
					</tr>
					<tr>
						<td class="title">*전화번호</td>
						<td><input type="text" style="width: auto"></td>
					</tr>
					<tr>
						<td><input type="submit" value="수정 완료"></td>
						<td><input type="submit" value="회원 탈퇴"></td>
					</tr>
				</table>
			</div>
		</div>
	</form>
</main>
<div class="clear"></div>
<footer>
    <div id="footer_box">
        <div id="footer_logo">
            <img src="../images/facebook_profile_image.png" width="100" height="100">
        </div>
        <div id="address">
            <ul>
                <li>부산시 가나구 다라동 1234 우:123-1234</li>
                <li>TEL:123-123-1234 Email:abcc@domain.com</li>
                <li>© 2021 THEHELPER. All rights reserved.</li>
            </ul>
        </div>
    </div>
</footer>
</div>
</body>
</html>