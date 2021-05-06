function check_login(){
	if(document.login.id.value.length == 0){
		alert("아이디를 입력하세요.");
		login.id.focus();
		history.reload
		return;
	}
	if(document.login.pw.value.length == 0){
		alert("비밀번호를 입력하세요");
		login.pw.focus();
		history.reload
		return;
	}
	if(document.login.id.value == "test" && document.login.pw.value == "1234") {
        alert("로그인 성공");
        console.log("로그인 성공했습니다.");
		location.href='main.jsp'
      } else {
        alert("로그인 실패");
        console.log("로그인 실패했습니다.");
		history.reload
      }
	document.login.submit();
}

function member_ok(){
	
	if(document.form.id.value.length == 0){
		alert("아이디를 써주세요.");
		form.id.focus();
		return;
	}
	else if(document.from.id.value.length < 4){
		alert("아이디는 4글자 이상이어야 합니다");
		form.id.focus();
		return;	
	}
	else if(document.from.name.value.length == 0){
		alert("이름을 써주세요");
		form.name.focus();
		return;	
	}
	else if(document.from.pass.value.length == 0){
		alert("패스워드는 반드시 입력해야합니다.");
		form.pw.focus();
		return;
	}
	else if(document.form.pass.value != document.form.pass2.value){
		alert("패스워드가 일치하지 않습니다.");
		form.pass2.focus();
		return;
	}
	else if(document.form.phone.value.length < 10){
		alert("전화번호를 입력해주세요.");
		form.phone.focus();
		return;
	}
	else if(document.form.name.value.length == 0){
		alert("이름을 써주세요.");
		form.name.focus();
		return;
	}
	else if(document.form.birth_yy.value.length == 0){
		alert("생일을 써주세요.");
		form.birth_yy.focus();
		return;
	}
	else if(document.form.email1.value.length == 0){
		alert("Email을 써주세요.");
		form.email1.focus();
		return;
	}
	else if(document.form.roadAddrPart1.value.length == 0){
		alert("주소를 써주세요.");
		form.roadAddrPart1.focus();
		return;
	}
	document.reg_frm.submit();
}