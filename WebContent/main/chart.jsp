<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/Pra01/side/sideBar.css" />
<link rel="stylesheet" href="/Pra01/main/chart.css" />  
<script type="text/javascript" src="/Pra01/main/dtree.js"></script>
<link rel="StyleSheet" href="/Pra01/main/dtree.css" type="text/css" />
<script src="/Pra01/main/myAjax.js"></script>
<script src="/Pra01/main/chart.js"></script>
<script src="/Pra01/main/canvas.js"></script>
<script src="/Pra01/main/wait.js"></script>
<jsp:include page="/side/sideBar.jsp"></jsp:include>

<title>Insert title here</title> 
 
<script>

var arr = [];
window.onload = function() { 
	//차트에 글쓰기 -- 캔버스
	picture.canvas = document.getElementById("canvas");	
	picture.context = picture.canvas.getContext("2d");	
	mouseListener();
	
	var chartForm = document.getElementById('chartForm');
	 
	for(var i = 0; i < chartForm.view2.length; i++) {		
		chartForm.view2[i].onclick=function() {
			if(this.value == 1) {
				var thumAjaxImages = document.getElementById('thumAjaxImages');
				thumAjaxImages.innerHTML = "";
			} else if(this.value == 2) {				 
				selectThumImages();
			} 
		}	
	}  
} 

function selectThumImages () {
	var params = '';
	myAjax({
		method:"POST",
		url:"../main.do",
		params:params,
		success: function (data) { 
			var thumAjaxImages = document.getElementById('thumAjaxImages');
					 
			arr = JSON.parse(data);
			
			thumAjaxImages.innerHTML = "";
			for(var i = 0; i < arr.length; i++) {
				var col = document.createElement('div');
				var imgBox = document.createElement('div');
				var img = document.createElement('img');
			 
				col.className = 'col col-md-1-4';
				imgBox.className = 'img-box';
				
				img.src = arr[i].localPath;
				 
				if(arr[i].localPath!='#') {
					
					col.id = arr[i].localPath;
					col.onclick = function () {			 
						
						var mainView = document.getElementById('mainView');
						var mainImg = document.createElement('img');
						
						mainView.innerHTML = '';
						
						mainImg.src = this.id;
						mainImg.style.width ="210mm";
						mainImg.style.height ="297mm";
						
						mainView.appendChild(mainImg);					
					}
					
					imgBox.appendChild(img);				 
					col.appendChild(imgBox);
					thumAjaxImages.appendChild(col);	
					
				}
							
			}
		}
	});
} 
</script>
<style>
	#waitingList {
		width: 210.6mm;
		height: 30px;		 
		position: absolute;
		top: 0;
		left: 301px;
		background-color:#7AC3CC;
    	 
	}
	#mainView {	
		width: 210mm;
		height: 297mm;	
		border: solid 1px black;
		position: absolute;
		top: 60px;
		left: 300px;
		z-index: 1;
	}	 
	#mainView img {
		width: 100%;
		height: 100%;		
	}	 
 
	#canvas {			 
		background-color: rgba(255, 255, 255, 0); 
 		position: absolute; 
 		top: 31px;
 		left: 301px;
 		z-index: 2;  
	}
	#listView2{
		position: absolute;
		top: 30px;
		left: 1350px;
	} 
	
	#viewList{
		width:100%;
		height:100%;
	}
	#viewList > #patientList{
		color:red;
		width:100%;
		height:30px;
		display:inline-block;
		border:0px;
		padding:0px 0px 0px 5px;
		background-color:transparent;
	}
</style>
</head> 
<body>
	<div class="chartWrap">
	
		<div id="chartMenu">		 	 
			<form id="chartForm" class="switch switch-blue">
		      <input type="radio" class="switch-input" name="view2" value="1" id="thumOff" checked>
		      <label for="thumOff" class="switch-label switch-label-off">비활성화</label>
		      <input type="radio" class="switch-input" name="view2" value="2" id="thumOn">
		      <label for="thumOn" class="switch-label switch-label-on">전체조회</label>
		      <span class="switch-selection"></span>
		    </form>
		</div>
		
		<div id="listView">
			<div id="dtree" class="dtree"></div>
		</div>
		
		<div id="thumView">	
			<div class="con">
			  <div id="thumAjaxImages" class="row"></div>			     
			</div>		 
		</div>
		<div id="waitingList">
			
		</div>
		<div id="editorList">
			mode : <span id="mode"></span> 
			x좌표 : <span id="x"></span> 
			y좌표 : <span id="y"></span> 
			<input type="button" value="pen" onclick="changeMode(0)">
			<input type="button" value="erase" onclick="changeMode(3)">
			<input type="button" value="saveBase64" onclick="save()" />
			<input type="button" value="saveImg" onclick="save2()" />
		</div>
		<div id="mainView"></div>	
		<canvas id="canvas" width="794" height="1123"></canvas>	
	</div> 
	
	<div id="listView2">
			<div id="listView2button" align="center">
			<span class="wait" onclick="selectPatient()">대기</span> 
			|
			<span class="pre" onclick="selectPre()">처방</span>
			|
			<span class="config" a href="#" onclick="javascript:selectConfig();">설정</span>
			</div>
			<hr>
			<div id="viewList"></div>
	</div>
</body> 
</html>