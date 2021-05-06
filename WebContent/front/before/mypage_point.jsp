<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="css/mypage_point.css" />
<title>포인트 현황</title>
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
					<li><a href="login.jsp">LOGIN</a></li>
				</ul>
			</div>
		</header>
    <main>
        <form>
            <div class="box">
                <div class="leftbox">
                    <h3>My page</h3>
					 <button type="button" onclick="location.href='mypage_import.jsp'">회원정보 수정</button>
                    <br>
                    <button type="button" onclick="location.href='mypage_myWrite.jsp'">내가 쓴글</button>
                    <br>
                    <button type="button" onclick="location.href='mypage_apply.jsp'">지원현황</button>
                    <br>
                    <button type="button" onclick="location.href='mypage_point.jsp'">마이포인트조회</button>
                    <br>
                    <button type="button" onclick="location.href='mypageLike.jsp'">스크랩</button>
                    <br>
                    <button type="button" onclick="location.href='mypage_license1.jsp'">자격증 및 경력</button>
                </div>
                <div class="mainbox">
                    <h1>마이포인트 | 포인트 적립/ 사용내역</h1>
                    <br>
                    <fieldset class="main_a"> (홍길동) 님의 적립 또는 사용한 포인트 내역을 한눈에 확인 가능합니다.</fieldset>
                    <br>
                    <h5>-포인트는 적립/사용한 다음날 최종 확인하실 수 있습니다.</h5>
                    <h5>-현재 포인트 내역은 (1111년 11월 11일) 기준입니다</h5>
                    <br>
                    <table  border="2" class="pointt">
                        <tr>
                            <th class="title">일자</th>
                            <th class="title">적립(+)</th>
                            <th class="title">사용(-)</th>
                            <th class="title">거래금액</th>
                            <th class="title">세부내역</th>  
                        </tr>
                        <tr>
                            <td>2007-01-20</td>
                            <td>1,400</td>
                            <td>0</td>
                            <td>3,000</td>
                            <td>후기작성보너스</td>
                        </tr>
                    </table>
                </div>
            </div>
        </form>
    </main>
    <div class="clear"></div>

       <div class="clear"></div>
    <div class="footer">
            <div class="f_img"><img src="images/footer.png" id="f_img"></div>
            <div>
              Green.co <br>
              Addr. 부산시 가나다동 가나다라구 2로 1234 <br>
              010 - 123 -1234 <br>
              COPYRIGHT 2019. TAMO. ALL RIGHT RESERVED.
            </div>
          </div>
    </div>
    
</body>
</html>