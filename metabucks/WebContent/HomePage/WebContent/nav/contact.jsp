<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head2.jsp" %>
<link type="text/css" rel="stylesheet" href="../css/email.css">

<!--Container-->
	<div id="container">
		
		<div class="sv_wrap K01">
			<p class="sv_tit"><img src="../image/tit_K04.png" alt="contact"></p>
			<p class="page_path"><a href="../index.jsp">HOME</a><span class="arr"></span> Contact<span class="arr"></span>�̸��� �����ϱ�</p>
		</div>
		<!-- Content-->
		<div class="content">
			<h2 class="page_tit">e-mail �����ϱ�</h2>
			
			<div class="outer tint">
				<div class="inner">
					<h3 class="hidden">e-mail �����ϱ�</h3>

					<!-- �̸��� ���� �� -->
				
					<form id="form" class="topBefore" method="post" action="sendok.jsp">
					 	<input id="name" type="text" placeholder="NAME">
					 	<input id="email" type="text" placeholder="E-MAIL">
					 	<textarea id="message" type="text" placeholder="MESSAGE"></textarea>
				  		<input id="submit" type="submit" value="GO!">
					</form>
				
					</div><!-- END Inner -->
			</div><!-- END Outer -->
		</div><!-- END Content -->
	</div><!--END Container-->


<%@ include file="../include/tail.jsp" %>