function write_ok(){
	if(document.form.job_title.value.length == 0){
		alert("제목을 써주세요.");
		history.back();
			}
	else if(document.form.job_time_start.value.length == 0){
		alert("시작시간을 써주세요");
		history.back();
	}
	else if(document.form.job_time_end.value.length == 0){
		alert("종료시간을 써주세요");
		history.back();
	}
	else if(document.form.category.value == 4){
		alert("카테고리를 선택해주세요");
		history.back();
	}
	else if(document.form.job_location_first_name.value.length == 0){
		alert("지역을 선택해주세요");
		history.back();
	}
	else if(document.form.job_location_second_name.value.length == 0){
		alert("지역을 선택해주세요.");
		history.back();
	}
	else if(document.form.job_location_detail.value.length == 0){
		alert("상세주소를 써주세요.");
		history.back();
	}
	else if(document.form.job_pay.value == 0){
		alert("금액을 써주세요.");
		history.back();
	}
	else if(document.form.job_detail.value.length == 0){
		alert("상세내용를 써주세요.");
		history.back();
	}
}
