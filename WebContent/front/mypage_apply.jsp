<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/myWrite.css"  type="text/css" />
<title>Document</title>
</head>
<body>
<div class="total">
    <header class="header">
        <div class="header_logo">
            <h1>
            <a href="main.jsp"><img src="./images/logo11.png" alt="home" width="200" height="100"></a>
            
            </h1>      
        </div>
        <div class="header_gnb">
            <ul>
            <li><a href="main.jsp">홈</a></li>
            <li><a href="#">구인게시판</a></li>
            <li><a href="shop.jsp">포인트상점</a></li>
            <li><a href="mypage_apply.jsp">마이페이지</a></li>
            <li><a href="login.jsp">로그인</a></li>
            </ul>
        </div>
    </header>
	 <main>
        <form>
            <div class="box">
                <div class="leftbox">
                    <h3>My page</h3>
                    <button type="button" onclick="location.href='myPage_import.jsp'">회원정보 수정</button>
                    <br>
                    <button type="button" onclick="location.href='myPage_MyWrite.jsp'">내가 쓴글</button>
                    <br>
                    <button type="button" onclick="location.href='mypage_apply.jsp'">지원현황</button>
                    <br>
                    <button type="button" onclick="location.href='mypage_point.jsp'">마이포인트조회</button>
                    <br>
                    <button type="button" onclick="location.href='mypageLike.jsp'">스크랩</button>
                    <br>
                    <button type="button" onclick="location.href='my_license1.jsp'">자격증 및 경력</button>
                </div>
                <div class="mainbox">
                    <h1>지원현황</h1>
                    <br>
                    <fieldset class="main_a">(홍길동) 님의 지원현황을 한눈에 확인 가능합니다. </fieldset>
                   
                    <br>
                    <table  border="2" class="pointt">
                        <tr>
                            <th class="title">일자</th>
                            <th class="title">시간</th>
                            <th class="title">업무 명</th>
                            <th class="title">현재 지원자 수</th>
                        </tr>
                        <tr>
                            <td>2007-01-20</td>
                            <td>10:00 - 18:00</td>
                            <td> [부산] 4/22일 하루 베이비시터 구해요</td>
                            <td>5명</td>
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
                <img src="./images/footer.png" width="100" height="100">
            </div>
            <div id="address">
                <ul>
                    <li>Green.co</li>
                    <li>Addr. 부산시 가나다동 가나다라구 2로 1234</li>
                    <li>010 - 123 - 1234</li>
                    <li>© COPYRIGHT 2019. TAMO. ALL RIGHT RESERVED.</li>
                </ul>
            </div>
        </div>
</footer>
</div>

</body>
</html>