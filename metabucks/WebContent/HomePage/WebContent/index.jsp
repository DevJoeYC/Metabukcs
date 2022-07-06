<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/head.jsp" %>
	
<!--Container-->
	<div id="container">

		<!-- Visual -->
		<div class="mv_wrap">
			<div class="mv">
			<div class="itema" style="background-image:url('image/wall.jpg');"></div>
		</div>


		</div><!-- END Visual -->
	


		<!-- Outer -->
		<div class="mv">
			<h2 class="m_tit">CREATING A NEW CULTURE</h2>

			<div class="m_mid">
				<div class="item">
					<p class="stit">���� ������ ī��</p>
					<span class="vline"></span>
					<p class="desc">�������� �ְ��� Ŀ�� �޿��� ���¸� �䷹���� �� ���� Ŀ�Ǻ��� �����Ͽ� ������ �����ӽŰ��� ������ �ٸ� Ŀ���� ���� ���� �� �ֽ��ϴ�.</p>

				</div>
				<div class="item">
					<p class="stit">���νý��� �</p>
					<span class="vline"></span>
					<p class="desc">��ġī��� 100% ���νý������� ��˴ϴ�.<br>�������� cctv �� ���Ƚý����� ���߾���, ���� ������ ����ڿ� �°� �ð��� �����Ͽ� �ڵ����� ��� �� �ֽ��ϴ�.</p>

					
				</div>
				<div class="item">
					<p class="stit">�������� ī��</p>
					<span class="vline"></span>
					<p class="desc">Ŀ�Ǻ����ӽż��� ���� ��������� �˷��� ���� �κ��� �����Ͻ� �ʿ䰡 ���� �����ϴ�.<br>��ġī��� �����ڿ� �����Ͽ� �Ĳ��� �����ǰ� �ֽ��ϴ�.</p>

					
				</div>
			</div>
<script type="text/javascript">
	
	jQuery(document).ready(function($){
		$(".b_customer").slick({
			arrows:false,
			dots:true,
			autoplay:true
		});
	});
	
</script>			
			
			<div class="outer brand_cus">
				<h3 class="sec_tit">Customer</h3>
				<p class="sec_desc">���� �Һ��ڵ��� ���ϴ� �����ο� Ʈ���塯</p>
				<ul class="b_customer">
					<li><img src="image/coffee_meo.jpg" alt="">
						<em>21.5��ġ Full HD<br>��ġ ��ũ���� ���Ǽ�</em>
					</li>
					<li><img src="image/coffee_perlanera.jpg" alt="">
						<em>�ո��� �������� ����<br>�ֻ��� Ŀ�� ��</em>
					</li>
					<li><img src="image/coffee_regilait.jpg" alt="">
						<em>������<br>ī�� ���� �ý���</em>
					</li>
					
				</ul>
			</div>
		</div><!-- END Outer -->
	</div><!--END Container-->
  <!-- ���� ���� ����� -->

	<form name="quick_online" method="post" action="/html/dh/quick_online">
		<div class="quickBox">
			<p class="quick_name">â�����</p>
			<p class="quick_tell">1588-1234</p>

			<div class="quick_info">
				<input type="text" placeholder="����" name="name">
				<input type="text" placeholder="����ó" name="data1" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" maxlength='11'>
				<input type="text" placeholder="�̸���" name="email">
			</div>

			<div class="quick_selectBox">
				<select name="sido" id="" onchange="call_gugn(this.value)">
					<option value="">��/��</option>
											<option value="������">������</option>
												<option value="��⵵">��⵵</option>
												<option value="��󳲵�">��󳲵�</option>
												<option value="���ϵ�">���ϵ�</option>
												<option value="���ֱ�����">���ֱ�����</option>
												<option value="�뱸������">�뱸������</option>
												<option value="����������">����������</option>
												<option value="�λ걤����">�λ걤����</option>
												<option value="����Ư����">����Ư����</option>
												<option value="����Ư����ġ��">����Ư����ġ��</option>
												<option value="��걤����">��걤����</option>
												<option value="��õ������">��õ������</option>
												<option value="���󳲵�">���󳲵�</option>
												<option value="����ϵ�">����ϵ�</option>
												<option value="����Ư����ġ��">����Ư����ġ��</option>
												<option value="��û����">��û����</option>
												<option value="��û�ϵ�">��û�ϵ�</option>
										</select>
				<select name="gugun" id="gugun">
					<option value="">��/��</option>
				</select>
			</div>

			<div class="quick_check">
				<input type="checkbox" id="check">
				<label for="check">�������������̿뵿��</label>
			</div>

			<a href="javascript:send_form();" class="quick_btn">��� ��û</a>
		</div>
	</form>

  <!-- end ���� ���� ����� -->

<script type="text/javascript">
		function call_gugn(val){
			$.ajax({
				type:"get"
				,url:"/html/dh/gugun2"
				,data:{'ajax':1,'city':val}
				,error:function(xhr){console.log(xhr.responseText);}
				,success:function(data){
					if(data){
						$("#gugun").html(data);
					}
					else{
						$("#gugun").html('<option value="">��/��</option>');
					}
				}
			});
		}
		function send_form(){
			var quick_frm = document.quick_online;
			if(quick_frm.name.value==""){
				alert('������ �Է����ּ���.');
				quick_frm.name.focus();
				return;
			}else if(quick_frm.data1.value==""){
				alert('����ó�� �Է����ּ���.');
				quick_frm.data1.focus();
				return;
			}else if(quick_frm.email.value==""){
				alert('�̸����� �Է����ּ���.');
				quick_frm.email.focus();
				return;
			}else if(quick_frm.sido.value==""){
				alert('��/�ø� �������ּ���.');
				return;
			}else if(quick_frm.gugun.value==""){
				alert('��/���� �������ּ���.');
				quick_frm.gugun.focus();
				return;
			}else if($('#check').prop('checked')==false){
				alert('�������������̿뿡 �������ּ���.');
				return;
			}else{
				quick_frm.submit();
			}
		}
</script>

<%@ include file="include/tail.jsp" %>

