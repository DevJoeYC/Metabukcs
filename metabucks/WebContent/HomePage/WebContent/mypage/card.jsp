<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head3.jsp" %>
	<!--Container-->
	<div id="container">
		
		<div class="sv_wrap K01">
			<p class="sv_tit"><img src="../image/tit_K05.png" alt="MENU"></p>
			<p class="page_path"><a href="../index.jsp">HOME</a><span class="arr"></span> Members<span class="arr"></span>����������</p>
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
						<p align="center">ī����</p>
							
						 <form class="form">
						    <fieldset>
						      <label for="card-number">Card Number</label>
						      <input type="num" id="card-number" class="card-number" maxlength="4" />
						      <input type="num" id="card-number-1" class="card-number" maxlength="4" />
						      <input type="num" id="card-number-2" class="card-number" maxlength="4" />
						      <input type="num" id="card-number-3" class="card-number" maxlength="4" />
						    </fieldset>
						    <fieldset>
						      <label for="card-holder">Card holder</label>
						      <input type="text" id="card-holder" />
						    </fieldset>
						    <fieldset class="fieldset-expiration">
						      <label for="card-expiration-month">Expiration date</label>
						      <div class="select">
						        <select id="card-expiration-month">
						          <option></option>
						          <option>01</option>
						          <option>02</option>
						          <option>03</option>
						          <option>04</option>
						          <option>05</option>
						          <option>06</option>
						          <option>07</option>
						          <option>08</option>
						          <option>09</option>
						          <option>10</option>
						          <option>11</option>
						          <option>12</option>
						        </select>
						      </div>
						      <div class="select">
						        <select id="card-expiration-year">
						          <option></option>
						          <option>2022</option>
						          <option>2023</option>
						          <option>2024</option>
						          <option>2025</option>
						        </select>
						      </div>
						    </fieldset>
						    <fieldset class="fieldset-ccv">
						      <label for="card-ccv">CVC</label>
						      <input type="text" id="card-ccv" maxlength="3" />
						    </fieldset>
						  </form>
						
													
							<div class="btnCommon type2">
								<a href="../nav/members.jsp" class="btnBlack">���</a>
								<a href="#none" class="btnGray" onclick="history.go(-1); return false;">���</a>
	   						</div>
	   						
				</div><!-- END Inner -->
			</div><!-- END Outer -->
		</div><!-- END Content -->
	</div><!--END Container-->
	


<%@ include file="../include/tail.jsp" %>