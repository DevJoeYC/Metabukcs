<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<head>
		<meta charset="UTF-8">
		<title>��Ÿ����</title>
		<link type="text/css" rel="stylesheet" href="../css/all.css">
		<script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
    	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=f4n9qrtme1"></script>
	</head>
	<body>
	<table align=center width=500px>
		<tr>
			<td>
				<a href="index.jsp"><img src="../img/back.png"></a>
			</td>
		</tr>
		<tr style="height:100px;">
			<td colspan="4">
				<h2>
					��������
				</h2>
			</td>
		</tr>
		<tr>
			<td>
		    <div id="map" style="width:500px;height:400px;"></div>
		    <script>
		        var mapOptions = {
		            center: new naver.maps.LatLng(35.8402466,127.1324738),
		            zoom: 10
		        };
		        var map = new naver.maps.Map('map', mapOptions); // id�� option
		    </script>
		    </td>
	    </tr>
    </table>
	</body>