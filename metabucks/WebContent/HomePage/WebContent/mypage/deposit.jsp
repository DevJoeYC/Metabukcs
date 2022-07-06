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
						<p align="center">�����ϱ�(��������Ա�)</p>
							
						 <form class="form">
						    <fieldset>
						      <label for="card-number">(��)��Ÿ����Ŀ���ڸ���  <br>����:115-445-787979</label>
						    </fieldset>
						    <fieldset>
						    <label for="deposit">�Աݾ�</label>
						    <select id="deposit">
						          <option></option>
						          <option>5000��</option>
						          <option>10000��</option>
						          <option>15000��</option>
						          <option>20000��</option>
						          <option>25000��</option>
						          <option>30000��</option>
						          <option>35000��</option>
						          <option>40000��</option>
						          <option>45000��</option>
						          <option>50000��</option>
						       </select>
						    </fieldset>	
						    <fieldset>
						      <label for="card-holder">�Ա��ڸ�</label>
						      <input type="text" id="card-holder" />
						    </fieldset>
						  </form>
						
													
							<div class="btnCommon type2">
								<a href="../members.html" class="btnBlack">�Ա�</a>
								<a href="#none" class="btnGray" onclick="history.go(-1); return false;">���</a>
	   						</div>
	   						
				</div><!-- END Inner -->
			</div><!-- END Outer -->
		</div><!-- END Content -->
	</div><!--END Container-->


<%@ include file="../include/tail.jsp" %>