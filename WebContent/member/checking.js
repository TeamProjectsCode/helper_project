function check_login(){
	var result = false;
	
	if(document.login.id.value.length == 0){
		alert("아이디를 입력하세요.");
	}
	else if(document.login.pw.value.length == 0){
		alert("비밀번호를 입력하세요");
	}
	console.log("result: "+result);
	return result;
}

function member_ok(){

	var result = false;
	
	if(document.form.id.value.length == 0){
		alert("아이디를 써주세요.");
	}
	else if(document.form.id.value.length < 4){
		alert("아이디는 4글자 이상이어야 합니다");
	}
	else if(document.form.name.value.length == 0){
		alert("이름을 써주세요");
	}
	else if(document.form.nick.value.length == 0){
		alert("닉네임을 써주세요");
	}
	else if(document.form.gender.value == null){
		alert("성별 체크 해주세요.");
	}
	else if(document.form.pw.value.length == 0){
		alert("패스워드는 반드시 입력해야합니다.");
	}
	else if(document.form.pw.value != document.form.pass2.value){
		alert("패스워드가 일치하지 않습니다.");
	}
	else if(document.form.birth_yy.value.length == 0){
		alert("생일을 써주세요.");
	}
	else if(document.form.email.value.length == 0){
		alert("Email을 써주세요.");
	}else {
		result = true;
	}
	console.log("result: "+result);
	return result;
}
