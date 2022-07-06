<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head3.jsp" %>
<!--Container-->
	<div id="container">
		
		<div class="sv_wrap K01">
			<p class="sv_tit"><img src="../image/tit_K05.png" alt="MENU"></p>
			<p class="page_path"><a href="/">HOME</a><span class="arr"></span> Members<span class="arr"></span>����������</p>
		</div>
		<!-- Content-->
		<div class="content">
			<h2 class="page_tit">����������</h2>
			
			<div class="outer tint">
				<div class="inner">
					<h3 class="hidden">����������</h3>

					<!--���������� -->
						<div class="myp">
							<p>ooo�� ȯ���մϴ�</p>
							<p class=""><img src="../image/code.jpg" alt="code"></p>
						</div>
						<div>	
							<ul class="myp">
								<li><a href="order.jsp">�ֹ�����</a></li>
								<li><a href="mymenu.jsp">���� �޴�</a></li>
								<li><a href="coupon.jsp">���� ����<span style="color:blue;">2��</span></a></li>
								<li><a href="money.jsp">���� ������<span style="color:blue;">400��</span></a></li>
								<li><a href="charge.jsp">��ġ��<span style="color:blue;">50000��</span></a></li>
								<li><a href="pay.jsp">�������� ����</a></li>
								<li><a href="userinfo.jsp">���� ����</a></li>
							</ul>
							
						</div>
						<h1 class="myps"></h1>
						<p align="center">�������� ����</p>
						<table align="center" border="1" style="width:800px;" class="myinfo">
							<tr>
								<td class=myinfos style="width:70px; height:20px;" >�������</td>
								<td>
				                    <input type="radio" name="pay" value="credit" checked="checked">�ſ�/üũī��
								</td>
								<td>
									<div class=""><a href="card.jsp" class="btnCommon">ī����</a></div>
								</td>
							</tr>
							<tr>
								<td class=myinfos style="width:70px; height:20px;" >�������</td>
								<td><input type="radio" name="pay" value="cash">��ġ��</td>
								<td>
									<div class=""><a href="deposit.jsp" class="btnCommon">��ġ������</a></div>
								</td>
							</tr>
							<tr>
								<td class=myinfos style="width:70px; height:20px;" >�������</td>
								<td><input type="radio" name="pay" value="cash">������</td>
								<td>
									<div class=""><a href="money.jsp" class="btnCommon">�����ݺ���</a></div>
								</td>
							</tr>
							
							
						</table>
						<div class="btnCommon type2">
							<a href="../nav/members.jsp" class="btnBlack">����</a>
							<a href="#none" class="btnGray" onclick="history.go(-1); return false;">���</a>
	   					</div>
				</div><!-- END Inner -->
			</div><!-- END Outer -->
		</div><!-- END Content -->
	</div><!--END Container-->


<%@ include file="../include/tail.jsp" %>