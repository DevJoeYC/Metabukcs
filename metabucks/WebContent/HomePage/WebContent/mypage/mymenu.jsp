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
						<p align="center">�������� ��ȣ�ϴ� �޴�</p>
						<table  align="center" border="1" style="width:70%;" class="myinfo">
							<tr>
								<td class=myinfos style="width:70px; height:20px;" >�̹���</td>
								<td style="width:100px;">�޴��� </td>
								<td class=myinfos style="width:70px; height:20px;">�ݾ�</td>
								<td style="width:30px; text-align:center;">����
								<input type="checkbox" id="ckall" name="ckall"></td>
								
							</tr>
							<tr>
								<td class=myinfos style="width:70px;"><span class="img-w50"><img src="../image/food/americano.jpg" alt=""></span></td>
								<td style="width:100px;">�Ƹ޸�ī��</td>
								<td class=myinfos style="width:70px;">1500��</td>
								<td style="text-align:center;">
					
								<input type="checkbox" name="chkno" value="">
					
								</td>
							</tr>
							<tr>
								<td class=myinfos style="width:70px;"><span class="img-w50"><img src="../image/food/icelatte.jpg" alt=""></span></td>
								<td style="width:100px;">ī���</td>
								<td class=myinfos style="width:70px;">1500��</td>
								<td style="text-align:center;">
					
								<input type="checkbox" name="chkno" value="">
					
							</td>
							</tr>
						
						</table>
						<div class="btnCommon type2">
							<a href="../nav/members.jsp" class="btnBlack">�ڷΰ���</a>
							<a href="#none" class="btnGray" onclick="history.go(-1); return false;">�޴�����</a>
	   					</div>
					
					</div><!-- END Inner -->
			</div><!-- END Outer -->
		</div><!-- END Content -->
	</div><!--END Container-->


<%@ include file="../include/tail.jsp" %>