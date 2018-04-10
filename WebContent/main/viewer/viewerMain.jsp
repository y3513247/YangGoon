<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<jsp:include page="/side/sideBar.jsp"></jsp:include>
<link rel="stylesheet" href="/Pra01/side/sideBar.css" />
</head>
<style>
	.viewerWrap {
		position: absolute;
		left: 200px;
	    max-width: 1400px;
	    min-width: 1400px;
	    height: 100%;
 	    
	}
	
	.infoView {
		width: 1400px;
/* 		background-color: #00FF8D; */
		background-color: #212B40;
		height: 30px;
		padding: 5px 5px;
		box-sizing: border-box;
		font-size: 15px;
		color: #FFFFFF;
		
	}
	
	.infoView div {
		display: inline-block;
	}
	
	
	.viewerMenu {
		position: fixed;
		width: 200px;
		height: 100%;				
		background-color: #C2E078;
		box-sizing: border-box;
	}
	
	.viewerMenu div {
		display: inline-block;
	}
	
	.mainView {
		position: fixed;
		width: 1200px;
		height: 100%;
		background-color: #EDFFC1;
		box-sizing: border-box;
		left: 400px;
		display: inline-block;
	}
	
	.pNumberSearch {
		width: 100%;
		height: 5%;
		padding: 5px 5px;
		box-sizing: border-box;			
	}
	
	.menuList {
		position: absolute;
		top: 30px;
		width: 40px;
		height: 420px;		
		border: 1px solid #000000;
		box-sizing: border-box;
		background-color: #FFFFFF;
	}
	
	.menuListCompo {
		width: 100%;
		height: 70px;
		font-size: 13px;
		text-align: center;
		background-color: #FFFFFF;
		border-bottom: 1px solid #000000;
		box-sizing: border-box;
		font-weight: bold;
	}
	

</style>
<body>
	<div class="viewerWrap">
		<div class="infoView">
<!-- 			<div id="patientInfo" style="width: 78%">ȯ�ڹ�ȣ : 10101   �̸� : �����  �ֹι�ȣ : 930912-11*****</div> -->
			<div id="patientInfo" style="width: 100%; height: 100%;">
				<div id="pNumber" style="width: 15%; height: 100%;">ȯ�ڹ�ȣ : 10101</div>
				<div id="pName" style="width: 17%; height: 100%;">�̸� : �ȳ��ϼ���</div>
				<div id="pJumin" style="width: 15%; height: 100%;">�ֹι�ȣ : 930912-11*****</div>
				<div id="userInfo" style="width: 35%; height: 100%; text-align: right;">${userId }</div>
			</div>			
		</div>	
		
		<div class="viewerMenu">
			<div class="pNumberSearch">
				
				<div>
					ȯ�ڹ�ȣ
					<input type="text" id="pNumberInput" size="10"/>
				</div>
				
			</div>
			<div class="menuList">
				<div class="menuListCompo" style="padding-top: 37%;">��<br/>��</div>
				<div class="menuListCompo" style="padding-top: 37%;">��<br/>��</div>
				<div class="menuListCompo" style="padding-top: 37%;">��<br/>��</div>
				<div class="menuListCompo" style="padding-top: 37%;">��<br/>��</div>
				<div class="menuListCompo">��<br/>��<br/>ȯ<br/>��</div>
				<div class="menuListCompo">ȯ<br/>��<br/>��<br/>��</div>
			</div>			
		</div>
		
		<div class="mainView">
			dfdf
		</div>
		
		
		
	</div>
</body>
</html>