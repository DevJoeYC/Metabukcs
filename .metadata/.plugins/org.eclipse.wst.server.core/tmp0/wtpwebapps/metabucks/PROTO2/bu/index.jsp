<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="meta.dbms.*" %>
<%@ page import="meta.vo.*" %>
<%@ page import="meta.dto.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	accountDTO DTO		= new accountDTO();
	accountVO vo		= new accountVO("test","1231","0");
	vo					= DTO.Login(vo);
	session.setAttribute("loginVO",vo);
	accountVO loginVO	= (accountVO) session.getAttribute("loginVO");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>proto</title>
		<script src="./js/jquery.js"></script>
		<script src="./js/login.js"></script>
	</head>
	<body>
		<!-- HEAD START ============ -->
		<div class="Login">
			<form id="acount_login_fno" name="login_fno" action="loginok.jsp" method="post">
				일련번호
				<input id="acount_no" name="acount_no" value="<%= loginVO.no() %>" type="text"><br>
				고유번호
				<input id="acount_fno" name="fno" value="<%= loginVO.fno() %>" type="text"><br>
				아이디
				<input id="acount_id" name="acount_id" value="<%= loginVO.id() %>" type="text"><br>
				비밀번호
				<input id="acount_pw" name="acount_pw" value="<%= loginVO.pw() %>" type="text"><br>
				계정구분
				<input id="acount_level" name="level" value="<%= loginVO.level() %>" type="text"><br>
				<hr>
				계정구분
				<input id="acount_level_str" name="level_str" value="<%= loginVO.level_str() %>" type="text"><br>
				이름
				<input id="acount_name" name="name" value="<%= loginVO.name() %>" type="text"><br>
				닉네임
				<input id="acount_nickname" name="nickname" value="<%= loginVO.nickname() %>" type="text"><br>
				성별
				<input id="acount_gen" name="gen" value="<%= loginVO.gen() %>" type="text"><br>
				성별
				<input id="acount_gen_str" name="gen_str" value="<%= loginVO.gen_str() %>" type="text"><br>
				<hr>
				생일
				<input id="acount_age" name="age" value="<%= loginVO.age() %>" type="text"><br>
				핸드폰번호
				<input id="acount_hp" name="hp" value="<%= loginVO.hp() %>" type="text"><br>
				이메일
				<input id="acount_em" name="em" value="<%= loginVO.em() %>" type="text"><br>
				생성일
				<input id="acount_cre_date" name="cre_date" value="<%= loginVO.cre_date() %>" type="text"><br>
				최종접속일
				<input id="acount_last_date" name="last_date" value="<%= loginVO.last_date() %>" type="text"><br>
				<hr>
				활성여부
				<input id="acount_act" name="act" value="<%= loginVO.act() %>" type="text"><br>
				활성여부
				<input id="acount_act_str" name="act_str" value="<%= loginVO.act_str() %>" type="text"><br>
				담당매장번호
				<input id="acount_st_no" name="st_no" value="<%= loginVO.st_no() %>" type="text"><br>
				직급
				<input id="acount_ad_po" name="ad_po" value="<%= loginVO.ad_po() %>" type="text"><br>
				적립금
				<input id="acount_point" name="point" value="<%= loginVO.point() %>" type="text"><br>
				<hr>
				예치금
				<input id="acount_deposit" name="deposit" value="<%= loginVO.deposit() %>" type="text"><br>
				카드사명
				<input id="acount_card_name" name="card_name" value="<%= loginVO.card_name() %>" type="text"><br>
				신용카드번호
				<input id="acount_card_no" name="card_no" value="<%= loginVO.card_no() %>" type="text"><br>
				결제수단선택
				<input id="acount_pay_method" name="pay_method" value="<%= loginVO.pay_method() %>" type="text"><br>
				결제수단선택
				<input id="acount_pay_str" name="pay_str" value="<%= loginVO.pay_str() %>" type="text"><br>
				<hr>
				<button type="submit">"Submit" type</button>
			</form>
		</div>
	</body>
</html>