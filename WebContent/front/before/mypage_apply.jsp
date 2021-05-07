<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <link rel="stylesheet" href="css/mypage_apply.css"  type="text/css" />
<title>Document</title>

</head>
<body>
<div class="total">
   <header class="header">
			<div class="header_logo">
				<h1>
					<a href="#"> <img src="images/logo11.png" alt="home"
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
					<p>&nbsp;&nbsp;</p>
					<p>&nbsp;&nbsp;</p>
					
				<div class="mainbox">
					<h1>&nbsp;&nbsp;지원 현황</h1>
					<p>&nbsp;&nbsp;</p>
					<p>&nbsp;&nbsp;</p>
					<table border="1" cellspacing="0">
						<tr style="height: 50px;">
							<th width = "70px;">일 자</th>
							<th width = "70px;">시 간</th>
							<th width="200px;">지원 업무 명</th>
							<th width = "150px;">현재 지원자 </th>
						</tr>
						<tr style="height: 50px; text-align:center;">
							<td width = "70px;">21/05/02</td>
							<td width = "70px;">16:18</td>
							<td width="200px;"><a href = #>지원 업무</a></td>
							<td width = "150px;">2</td>
						</tr>
						<tr style="height: 50px; text-align:center;">
							<td width = "70px;">일 자</td>
							<td width = "70px;">시 간</td>
							<td width="200px;"><a href = #>지원 업무</a></td>
							<td width = "150px;">3</td>
						</tr>
						<tr style="height: 50px; text-align:center;">
							<td width = "70px;">일 자</td>
							<td width = "70px;">시 간</td>
							<td width="200px;"><a href = #>지원 업무</a></td>
							<td width = "150px;">5</td>
						</tr>
						<tr style="height: 50px; text-align:center;">
							<td width = "70px;">일 자</td>
							<td width = "70px;">시 간</td>
							<td width="200px;"><a href = #>지원 업무</a></td>
							<td width = "150px;">4</td>
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