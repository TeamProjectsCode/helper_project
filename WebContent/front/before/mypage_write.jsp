<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <link rel="stylesheet" href="css/mypage_write.css"  type="text/css" />
<title>Document</title>

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
					<li><a href="login.jsp">LOGIN</a></li>
				</ul>
			</div>
		</header>
	<section>
		<form>
			<div class="top"></div>
			<div class="mid"></div>
			<div class="box">
				<div class="leftbox">
					<h3>My page</h3>
                    <button type="button" onclick="location.href='mypage_import.jsp'">회원정보 수정</button>
                    <br>
                    <button type="button" onclick="location.href='mypage_write.jsp'">내가 쓴글</button>
                    <br>
                    <button type="button" onclick="location.href='mypage_apply.jsp'">지원현황</button>
                    <br>
                    <button type="button" onclick="location.href='mypage_point.jsp'">마이포인트조회</button>
                    <br>
                    <button type="button" onclick="location.href='mypageLike.jsp'">스크랩</button>
				</div>
					
					<p>&nbsp;&nbsp;</p>
					<h1>&nbsp;&nbsp;등록한 글 목록</h1>
					<p>&nbsp;&nbsp;</p>
					<p>&nbsp;&nbsp;</p>
					
				<div class="mainbox">
				<h3>구인 게시판</h3>
				<hr>
					<table>
						<tr style="height: 50px;">
							<td>날짜</td>
							<td style="width: 500px;">글 제목1</td>
							<th colspan="2"><input type="submit" value="수정" onclick="location.href='board_writer_fix.jsp'">
							<input type="submit" value="삭제"></th>
						</tr>
						<tr style="height: 50px;">
							<td>날짜</td>
							<td style="width: 500px;">글 제목2</td>
							<th><input type="submit" value="수정" onclick="location.href='board_writer_fix.jsp'">
							<input type="submit" value="삭제"></th>
						</tr>
						<tr style="height: 50px;">
							<td>날짜</td>
							<td style="width: 500px;">글 제목3</td>
							<th><input type="submit" value="수정" onclick="location.href='board_writer_fix.jsp'">
							<input type="submit" value="삭제"></th>
						</tr>
					</table>
					<div class = "clear"></div>
					<h3>후기 게시판</h3>
					<hr>
					<table>
						<tr style="height: 50px;">
							<td>날짜</td>
							<td style="width: 500px;">글 제목1</td>
							<th colspan="2"><input type="submit" value="수정" onclick="location.href='review_writer_fix.jsp'">
							<input type="submit" value="삭제"></th>
						</tr>
						<tr style="height: 50px;">
							<td>날짜</td>
							<td style="width: 500px;">글 제목2</td>
							<th><input type="submit" value="수정" onclick="location.href='review_writer_fix.jsp'">
							<input type="submit" value="삭제"></th>
						</tr>
						<tr style="height: 50px;">
							<td>날짜</td>
							<td style="width: 500px;">글 제목3</td>
							<th><input type="submit" value="수정" onclick="location.href='review_writer_fix.jsp'">
							<input type="submit" value="삭제"></th>
						</tr>
					</table>
				</div>
			</div>
		</form>
	</section>
	<div class="clear"></div>
       <div class="footer">
			<div class="f_img">
				<img src="images/footer.png" id="f_img">
			</div>
			<div class="f_info">
				Green.co <br> Addr. 부산시 가나다동 가나다라구 2로 1234 <br> 010 - 123
				-1234 <br> COPYRIGHT 2019. TAMO. ALL RIGHT RESERVED.
			</div>
		</div>
</div>
</body>
</html>