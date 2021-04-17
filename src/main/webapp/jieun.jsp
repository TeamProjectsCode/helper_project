<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<title> Login Form</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="container">
		<div class="login-content">
			<form action="" method="post">
				<h2 class="title">Welcome</h2>
				
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i><!-- 이모티콘 -->
           		   </div>
           		   <div class="div">
           		   		<h5>Username</h5>
           		   		<input type="text" class="input">
           		   </div>
           		</div>
           		
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Password</h5>
           		    	<input type="password" class="input">
            	   </div>
            	</div>
            	
            	<a href="#">아이디/비밀번호 찾기</a>
            	<input type="submit" class="btn" value="LOGIN">
            	<input type="submit" class="btn" value="JOIN ME">
            </form>
        </div>
    </div>
    <script type="text/javascript" src="js/main.js"></script>
</body>
</html>
