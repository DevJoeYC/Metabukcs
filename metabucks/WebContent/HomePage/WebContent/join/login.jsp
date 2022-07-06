<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head.jsp" %>

	<!--Container-->
	<div id="container">
		
		<div class="sv_wrap K01">
			<p class="sv_tit"><img src="image/tit_K06.png" alt="MENU"></p>
			<p class="page_path"><a href="index.jsp">HOME</a><span class="arr"></span>로그인</p>
		</div>
		<!-- Content-->
		<div class="content">
			<h2 class="page_tit">로그인</h2>
			
			<div class="outer tint">
				<div class=" xans-member-login">
					<h3 class="hidden">로그인</h3>

					<!--로그인 -->
					<div id="contents">
						<form id="member_form_5614655551" name="" action="/exec/front/Member/login/" method="post" target="_self" enctype="multipart/form-data">
							<div class="xans-element- xans-member xans-member-login ">
								<div class="login">
									<fieldset>
										<label class="id"><span>ID</span><input id="member_id" name="member_id" fw-filter="isFill" fw-label="아이디" fw-msg="" class="inputTypeText" placeholder="" value="" type="text"></label>
							            <label class="password"><span>PASSWORD</span><input id="member_passwd" name="member_passwd" fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="패스워드" fw-msg="" autocomplete="off" value="" type="password"></label>
							            <strong><a href="#none" onclick="MemberAction.login('member_form_5614655551'); return false;">LOGIN</a></strong>
							            <ul>
											<li><a href="/member/id/find_id.jsp">search id</a></li>
											<li><a href="/member/passwd/find_passwd_info.jsp">search password</a></li>
											<li style="margin:10px 0 0;"><span><a href="join.jsp">join member</a></span></li>
										</ul>
									</fieldset>
								</div>
							</div>
						</form>
					</div>
				</div><!-- END Inner -->
			</div><!-- END Outer -->
		</div><!-- END Content -->
	</div><!--END Container-->
<%@ include file="../include/tail.jsp" %>