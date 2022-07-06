<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="includes/head.jsp" %>
<script>

	/*
	//pID : ��ü ID
	//pMode : + �Ǵ� -
	function SetItem(pID,pMode,pMax)
	{
		var stat = $('#' + pID).text();
		var num = parseInt(stat,10);
		if( pMode == "+" )
		{
			num++;
			if( num > pMax )
			{
				alert("�� �̻� ���� �� �����ϴ�.");
				num = pMax;
			}
		}else if( pMode == "-")
		{
			num--;
			if( num < pMax )
			{
				alert("�� �̻� ���� �� �����ϴ�.");
				num = pMax;
			}			
		}
		$('#' + pID).text(num);
	}
	
	$(function(){
		$('#minus1').click(function(){
			SetItem("count1","-",1);
		});
		
		$('#plus1').click(function(){
			SetItem("count1","+",5);
		});
		$('#minus2').click(function(){
			SetItem("count2","-",0);			
		});
		
		$('#plus2').click(function(){
			SetItem("count2","+",5);
		});		
	});
	*/
	
	//pID : ��ü ID
	//pMode : + �Ǵ� -
	function SetItem(obj,pMode,pMax)
	{
		var subObj = null;
		var num  = 0;
		if( pMode == "+" )
		{
			subObj = $(obj).prev();
			stat = $(subObj).text();
			num = parseInt(stat,10);			
			num++;
			if( num > pMax )
			{
				//alert("�� �̻� ���� �� �����ϴ�.");
				num = pMax;
			}
		}else if( pMode == "-")
		{
			subObj = $(obj).next();
			stat = $(subObj).text();
			num = parseInt(stat,10);			
			num--;
			if( num < pMax )
			{
				//alert("�� �̻� ���� �� �����ϴ�.");
				num = pMax;
			}			
		}
		$(subObj).text(num);
	}
	
	$(function(){
		$('#minus1').click(function(){
			SetItem(this,"-",1);
		});
		
		$('#plus1').click(function(){
			SetItem(this,"+",5);
		});
		$('#minus2').click(function(){
			SetItem(this,"-",0);			
		});
		
		$('#plus2').click(function(){
			SetItem(this,"+",5);
		});		
	});	
	
</script>
<!-- ==================================================================================================================== -->
<tr>
	<td style="background-color:white;padding:150px 0px 150px 0px" colspan=3>
	<form name="option" id="option" method="post" action="drinkmenu.jsp" onsubmit="return DoCheck();">
		<table id="login" border="0" height="900" width="100%" style="margin : auto; text-align:center">
			<tr>
				<td colspan="5"><h2>�ɼ��� ������ �ּ���</h2></td>
			</tr>
			<tr>
				<td width="200px" style="font-size:20px;font-weight:bold;">������ </td>
				<td><input name="dsize" id="optbtn" type="button" value="��(Tall) 355ml" style="width:200px;height:100px;font-size:25px;"></td>
				<td><input name="dsize" id="optbtn" type="button" value="�׶���(Grande) 473ml" style="width:300px;height:100px;font-size:25px;"></td>
			</tr>
			<tr>
				<td style="font-size:20px;font-weight:bold;">����</td>
				<td><input  name="ice" id="optbtn" type="button" value="��" style="width:200px;height:100px;font-size:25px;"></td>
				<td><input  name="ice" id="optbtn" type="button" value="���̽�" style="width:200px;height:100px;font-size:25px;"></td>
			</tr>
			<tr>
				<td style="font-size:20px;font-weight:bold;">�� �߰�<br/>(�⺻ 1��)</td>
				<td style="font-size:25px;"><input type="button" id="minus1" value="-"><span id="count1" style="display:inline-block; width:100px">1</span><input type="button" id="plus1" value="+"></td>
			</tr>
			<tr>
				<td style="font-size:20px;font-weight:bold;">�÷� �߰�</td>
				<td style="font-size:25px;"><input type="button" id="minus2" value="-"><span id="count2" style="display:inline-block; width:100px">0</span><input type="button" id="plus2" value="+"></td>
			</tr>
			<tr>
				<td width="350px" colspan=3><input type="submit" value="���"  id="yes"></td>
				<td><span><a id="no" href="drinkmenu.jsp">���</a></span></td>
			</tr>
		</table>
		</form>
	</td>
<!-- ==================================================================================================================== -->
<%@ include file="includes/tail.jsp" %>
