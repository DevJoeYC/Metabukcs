var now = new Date();
console.log(now);

$(function(){
	$('.date').text(now);
	$("#ntitle").focus();
});

//글쓰기 완료 버튼 클릭시 처리
function DoWrite()
{
	if($("#ntitle").val() == "")
	{
		alert("제목을 입력하세요.");
		$("#ntitle").focus();
		return false;
	}
	if($("#nnote").val() == "")
	{
		alert("내용을 입력하세요.");
		$("#nnote").focus();
		return false;
	}
	if(confirm("새로운 게시글을 저장하시겠습니까?") != 1)
	{
		return false;
	}
}