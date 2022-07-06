//JS 파일이 로드되었을때 실행할 내용
$(function(){
	console.log('session.js가 로드되었습니다.');
	console.log(checkLogin());
});

//세션 스토리지에서  읽어온 계정권한을 저장할 변수를 선언한다
var login_LEVEL = "";

//세션 스토리지에서 계정권한을 읽어오는 함수
function getSession(){
	console.log('function : getSession 실행');
	//세션스토리지(JS)로부터 계정권한을 읽어온다
	login_LEVEL = sessionStorage.getItem("login_LEVEL");
	// null / undefined / NaN / empty / string ("") / 0 / false
	if(!login_LEVEL){
		//세션스토리지에 계정권한이 없다
		console.log('getSession : session is empty');
		return false;
	}else{
		//세션스토리지에 계정권한이 있다.
		console.log('getSession : login_LEVEL = '+login_LEVEL);
		return true;
	}
}

//세션 스토리지에 계정권한을 저장하는 함수
function setSession(str){
	console.log('function : setSession 실행');
	sessionStorage.setItem("setSession : login_LEVEL = ", str);
}

//세션 스토리지에 내용을 삭제하는 함수
function Logout(){
	console.log('function : Logout 실행');
	sessionStorage.clear();
}

//계정 권한의 종류를 파악하여 로그인 여부를 체크하는 함수
function checkLogin(){
	console.log('function : checkLogin 실행');
	//세션 스토리지에 계정권한이 있는지 확인
	getSession();
	//콘솔에 출력해본다
	console.log('checkLogin : login_LEVEL = ' + login_LEVEL);

	if(!login_LEVEL){
		return 'N';
	}else{
		return (login_LEVEL === 'A') ? 'A' : (login_LEVEL === 'U') ? 'U' : 'E';
	}
}
