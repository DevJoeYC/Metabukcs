// 페이지가 로드 되었을때 실행할 것들
$(function(){

});

//삭제 버튼을 눌렀을때
function DoDelete(no)
{
	console.log("delete.jsp");
	//ajax 실행
	$.ajax({
		type 	: "post",
		url 	: "../notice/delete.jsp",
		dataType: "html",
		data:
		{
			no: no
		},
		success : function(data)
		{
			//결과 값 트림
			data = data.trim();
			//결과 값이 OK:A 일 경우 = 관리자
			if(data == "OK")
			{
				//값 체크
				console.log('data : ' + data);
				//JS session 기록
				setDIV('.cont', '../notice/list.jsp');
			}
		},
		complete : function(data)
		{
			//alert("DONE");
		},
		error : function(data)
		{
			//alert("ERROR");
		}
	});
}