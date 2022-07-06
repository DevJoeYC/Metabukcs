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
						<p align="center">ȸ�� ����</p>
						<table align="center" border="1" style="width:600px;" class="myinfo">
							<tr>
								<td class=myinfos style="width:70px; height:20px;" >�г���</td>
								<td style="width:100px;">��Ÿ��Ÿ</td>
								<td class=myinfos style="width:70px; height:20px;">�̸���</td>
								<td style="width:100px;">aaa@gmail.com</td>
							</tr>
							<tr>
								<td class=myinfos style="width:70px; height:20px;" >���̵�</td>
								<td style="width:100px;">metass</td>
								<td class=myinfos style="width:70px; height:20px;">��й�ȣ</td>
								<td style="width:100px;">**********</td>
							</tr>
							<tr>
								<td class=myinfos style="width:70px;">�޴���ȭ</td>
								<td style="width:100px;">010-1234-5678</td>
								<td class=myinfos style="width:70px;">�������</td>
								<td style="width:100px;">1995-05-04</td>
							</tr>
							<tr>
								<td class=myinfos style="width:70px;">����</td>
								<td style="width:100px;">
								  	<input type="radio" name="gender" value="man">��
									<input type="radio" name="gender" value="woman">��
								</td>
								<td class=myinfos style="width:70px;">���ã�� ����</td>
								<td style="width:100px;">��Ÿ����</td>
							</tr>
						</table>
						<div class="btnCommon type2">
							<a href="infomody.jsp" class="btnBlack">���� ����</a>
							<a href="../nav/members.jsp" class="btnGray">�ڷΰ���</a>
						</div>	
					</div><!-- END Inner -->
			</div><!-- END Outer -->
		</div><!-- END Content -->
	</div><!--END Container-->


<%@ include file="../include/tail.jsp" %>