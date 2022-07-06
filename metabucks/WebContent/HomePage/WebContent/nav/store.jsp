<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head2.jsp" %>
<!--Container-->
	<div id="container">
		
		<div class="sv_wrap K01">
			<p class="sv_tit"><img src="../image/tit_K03.png" alt="MENU"></p>
			<p class="page_path"><a href="../index.jsp">HOME</a><span class="arr"></span> SHOP<span class="arr"></span>����ã��</p>
		</div>
		<!-- Content-->
		<div class="content">
			<h2 class="page_tit">����ã��</h2>
			
			<div class="outer tint">
				<div class="inner">
					<h3 class="hidden">����ã��</h3>

					<!-- ����ã�� �������� -->
					<form method="get" name="sfrm" id="sfrm">
					<div class="store_search">
						<select name="sido" onchange="call_gugn(this.value)" title="��/���� �������ּ���.">
							<option value="">��/���� �������ּ���.</option>
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
								<script type="text/javascript">
								<!--
									sido = document.sfrm.sido;
									for(i=0;i<sido.length;i++){
										if(sido.options[i].value == ""){
											sido.options[i].selected = true;
										}
									}
								//-->
								</script>
						<select name="gugun" id="gugun" title="��/���� �������ּ���.">
							<option value="">��/���� �������ּ���.</option>
						</select>
						<div class="ipbox">
							<label for="store_key" class="hidden">����� �Ǵ� �ּҸ� �Է��ϼ���.</label>
							<input type="text" id="store_key" title="����� �Ǵ� �ּҸ� �Է��ϼ���." placeholder="����� �Ǵ� �ּҸ� �Է��ϼ���." name="sval" value="">
							<input type="image" src="../image/search.png" alt="�˻�" title="�˻�" class="btn">
						</div>
					</div>
					</form>
					<!-- END ����ã�� �������� -->
					
					<!--  ���� api -->
					<input type="text" id="sample5_address" placeholder="�ּ�">
					<input type="button" onclick="sample5_execDaumPostcode()" value="�ּ� �˻�"><br>
					<div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>
					
					<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=�߱޹��� API KEY�� ����ϼ���&libraries=services"></script>
					<script>
					    var mapContainer = document.getElementById('map'), // ������ ǥ���� div
					        mapOption = {
					            center: new daum.maps.LatLng(37.537187, 127.005476), // ������ �߽���ǥ
					            level: 5 // ������ Ȯ�� ����
					        };
					
					    //������ �̸� ����
					    var map = new daum.maps.Map(mapContainer, mapOption);
					    //�ּ�-��ǥ ��ȯ ��ü�� ����
					    var geocoder = new daum.maps.services.Geocoder();
					    //��Ŀ�� �̸� ����
					    var marker = new daum.maps.Marker({
					        position: new daum.maps.LatLng(37.537187, 127.005476),
					        map: map
					    });
					
					
					    function sample5_execDaumPostcode() {
					        new daum.Postcode({
					            oncomplete: function(data) {
					                var addr = data.address; // ���� �ּ� ����
					
					                // �ּ� ������ �ش� �ʵ忡 �ִ´�.
					                document.getElementById("sample5_address").value = addr;
					                // �ּҷ� �� ������ �˻�
					                geocoder.addressSearch(data.address, function(results, status) {
					                    // ���������� �˻��� �Ϸ������
					                    if (status === daum.maps.services.Status.OK) {
					
					                        var result = results[0]; //ù��° ����� ���� Ȱ��
					
					                        // �ش� �ּҿ� ���� ��ǥ�� �޾Ƽ�
					                        var coords = new daum.maps.LatLng(result.y, result.x);
					                        // ������ �����ش�.
					                        mapContainer.style.display = "block";
					                        map.relayout();
					                        // ���� �߽��� �����Ѵ�.
					                        map.setCenter(coords);
					                        // ��Ŀ�� ��������� ���� ��ġ�� �ű��.
					                        marker.setPosition(coords)
					                    }
					                });
					            }
					        }).open();
					    }
					</script>
					</div><!-- END Inner -->
			</div><!-- END Outer -->
		</div><!-- END Content -->
	</div><!--END Container-->


<%@ include file="../include/tail.jsp" %>