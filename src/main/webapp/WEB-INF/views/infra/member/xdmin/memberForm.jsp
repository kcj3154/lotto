<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>

<!doctype html>
<html lang="ko">
<head>
	  <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>MEMBER</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/iamges/favicon.ico" />
        
        <!--  css  -->
    	<style type="text/css">
    	
    	
    	#btnDelete {
    		float: left;
    	}
    	
    	#btnList, #btnSave {
    		float: right;
    	}
    	
    	.addScroll{
			overflow-y:auto;
			height: 200px;
			background-color:#E9ECEF;
			padding-top:5px; 
			padding-left:5px;
		}
 	
		.input-file-button{
			padding: 4px 25px;
			background-color:#fed400;
			border-radius: 4px;
			color: white;
			cursor: pointer;
		}
    	
    </style>
    	
    	
    
       
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>

<!-- start -->
<div class="container-fluid" style="width: 84%">
	<a href="/main"><img src="/resources/images/cou.jpg" style="width: 200px;"></a>
</div>

<div class="container-fluid" style="width: 84%">
	<nav class="navbar navbar-expand-lg" style="background-color: #d4e7f8;">
	    <div class="collapse navbar-collapse" id="navbarNav">
	      <ul class="navbar-nav">
	        <li class="nav-item">
	          <a class="nav-link" href="/member/memberList">회원관리</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="/codeGroup/codeGroupList">코드그룹관리</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="/code/codeList">코드관리</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
</div>


<hr>
<!-- 데이터 넘기려면 action 안 넘기려면 onsubmit -->
<form name="form" id="form" method="post">
		<!-- <form name="form" method="post" > -->
		<input type="hidden" name="shSeq" value="<c:out value="${item.ifmmSeq }"/>">
<%-- 		<input type="hidden" name="seq" value="<c:out value="${item.seq }"/>"> --%>
<div class="container-fluid" style="width: 84%; font-size: 24px;">회원 정보</div>
<br>
<div class="container-fluid" style="width: 84%;"><br>
	<div class="row">
		<div class="col-4">
  			<label for="id" class="form-label"><span class="text-danger">*</span>아이디</label>
  			<input type="text" id="id" name="id" class="form-control" value="<c:out value="${item.ifmmId}"/>">
		</div>
		<div class="col-4">
			<label for="name" class="form-label"><span class="text-danger">*</span>이름</label>
  			<input type="text" id="name" name="name" class="form-control" value="<c:out value="${item.ifmmName}"/>">
		</div>
		<div class="col-4">
			<label for="tel" class="form-label"><span class="text-danger">*</span>휴대전화</label>
  			<input type="tel" id="tel" name="tel" class="form-control" value="<c:out value="${item.ifmmTel}"/>">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-4">
			<label for="dob" class="form-label"><span class="text-danger">*</span>생년월일</label>
  			<input type="date" id="dob" name="dob" class="form-control" value="<c:out value="${item.ifmmDob}"/>">
		</div>
	</div>
	
	<br><br>
		<%-- <div class="col-6">
			<label for="delNy" class="form-Label">삭제여부</label>
			<select class="form-select" id="delNy" name="delNy">
				<option value="1" <c:if test="${item.delNy == 1}">selected</c:if>>Y</option>
				<option value="0" <c:if test="${item.delNy == 0}">selected</c:if>>N</option>
			</select>
		</div>
	</div> --%>
	
	<!-- 주소 -->
	<div class="row">
		<div class="col-2">
			<label for="sample4_postcode" class="form-label"><span class="text-danger">*</span>우편번호</label>
			<input type="text" id="sample4_postcode" class="form-control" placeholder="우편번호">
		</div>
		<div class="col-2">
			<label for="sample4 execDaumPostcode()" class="form-label">&nbsp;</label>
			<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="form-control"><br>
		</div>
	</div>
	<div class="row">
		<div class="col-4">
			<label for="sample4_roadAddress" class="form-label"><span class="text-danger">*</span>도로명주소</label>
			<input type="text" id="sample4_roadAddress" class="form-control" placeholder="도로명주소">
		</div>
	<!-- 	<div class="col-3">
			<label for="sample4_jibunAddress" class="form-label">*지번주소</label>
			<input type="text" id="sample4_jibunAddress" class="form-control" placeholder="지번주소">
		</div> -->
		<span id="guide" style="color:#999;display:none"></span>
		<div class="col-4">
			<label for="sample4_detailAddress" class="form-label"><span class="text-danger">*</span>상세주소</label>
			<input type="text" id="sample4_detailAddress" class="form-control" placeholder="상세주소">
		</div>
		<div class="col-4">
			<label for="sample4_extraAddress" class="form-label">참고항목</label>
			<input type="text" id="sample4_extraAddress" class="form-control" placeholder="참고항목">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-4">
			<label for="latitude" class="form-label"><span class="text-danger">*</span>위도</label>
			<input type="text" id="latitude" class="form-control" placeholder="도로명주소">
		</div>
		<div class="col-4">
			<label for="longitude" class="form-label"><span class="text-danger">*</span>경도</label>
			<input type="text" id="longitude" class="form-control" placeholder="도로명주소">
		</div>
	</div>
	<br>
	<div id="map" style="height:350px;"></div>
	<br>
	<div class="row mt-sm-4">
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmUploadedImage" class="form-label input-file-button">이미지첨부</label>
 			<input class="form-control form-control-sm" id="ifmmUploadedImage" name="ifmmUploadedImage" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedImage', 1, 0, 1, 0, 0, 1);">
			<div class="addScroll">
				<ul id="ulFile1" class="list-group">
				</ul>
			</div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
			<label for="ifmmUploadedFile" class="form-label input-file-button">파일첨부</label>
			<input class="form-control form-control-sm" id="ifmmUploadedFile" name="ifmmUploadedFile" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedFile', 2, 0, 2, 0, 0, 2);" >
			<div class="addScroll">
				<ul id="ulFile2" class="list-group">
				</ul>
			</div>
        </div>
    </div>

    <div class="row mt-sm-4">
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmUploadedImage" class="form-label input-file-button">이미지첨부</label>
 			<input class="form-control form-control-sm" id="ifmmUploadedImage" name="ifmmUploadedImage" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedImage', 1, 0, 1, 0, 0, 1);">
 			<div class="addScroll">
				<div style="display: inline-block; height: 95px;">
					<img src="/resources/common/image/default_111.jpg" class="rounded" width= "85px" height="85px">
					<div style="position: relative; top:-85px; left:5px"><span style="color: red;">X</span></div>
				</div>
 			</div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
			<label for="ifmmUploadedFile" class="form-label input-file-button">파일첨부</label>
			<input class="form-control form-control-sm" id="ifmmUploadedFile" name="ifmmUploadedFile" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedFile', 2, 0, 2, 0, 0, 2);" >
			<div class="addScroll">
				<ul id="ulFile2" class="list-group">
				</ul>
			</div>
        </div>
    </div>    
	<div class="row">
		<div class="col-4">
			<label for="#" class="form-label"><span class="text-danger">*</span>파일첨부</label>
			<input type="file" name="img" id="img" class="form-control" multiple="multiple">
			<input type="file" name="img2" id="img2" class="form-control">
		</div>
	</div>
</div>



	
	
	<br><br><br>

    <div class="container-fluid">
	<button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal" class="btn btn-dark btn-sm" id="btnDelete"><i class="fa-solid fa-trash-can"></i></button>
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">알림</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        삭제하시겠습니까?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-dark" data-bs-dismiss="modal">취소</button>
		        <button type="button" class="btn btn-dark" id="btnModalDelete">삭제</button>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
	<button type="button" class="btn btn-dark btn-sm" id="btnList">뒤로가기</button>
	<button type="button" class="btn btn-dark btn-sm" id="btnSave">저장</button>
	
		<div class="row mt-sm-4">
		
        <div class="col-sm-6 mt-3 mt-sm-0" style="float:right;">
            <button type="button" onclick="upload('img12', 1, 0, 3, 0, 0, 1)">파일 확인</button>
            <input type="file" multiple="multiple" id="img12" name="img12" >
            <input type="file" id="img121" name="img121" >
 			<!-- <input class="form-control form-control-sm" id="img12" name="img12" type="file" multiple="multiple" style="display: none;" onChange="upload('memberUploaded', 1, 0, 1, 0, 0, 1);"> -->
			<div class="addScroll">
				<ul id="ulFile1" class="list-group"></ul>
			</div>
        </div>
</div>
  

</form>

<%-- <form name="formVo" id="formVo" method="post">
<!-- *Vo.jsp s -->
<%@include file="codeGroupVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e --> 
</form> --%>
		
		<br><br>
		
		
		 <!-- Footer-->


        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Coupang</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
		<script src="template/js/scripts.js"></script>

<!-- end -->



	
<script type="text/javascript">

	var goUrlList = "/member/memberList"; 			/* #-> */
	var goUrlInst = "/member/memberInst"; 			/* #-> */
	var goUrlUpdt = "/member/memberUpdt";				/* #-> */
	var goUrlUele = "/member/memberUele";				/* #-> */
	var goUrlDele = "/member/memberDele";				/* #-> */
	
	var seq = $("input:hidden[name=shSeq]");				/* #-> */
	
	var form = $("form[name=form]"); 
	var formVo = $("form[name=formVo]");
	
	
// 	$("#btnSave").on("click", function (){
	   		
// 		if (seq.val() == "0" || seq.val() == ""){
// 	   		// insert
// /* if (validationInst() == false) return false;
	   		
//  */	   		
// //	 		<input type="file" name="img" id="img">
 
// //	 		var obj = $("input[name=img]")[0].files;
// //	 		var obj2 = $("input[name=img2]")[0].files;
			
// 			var obj = document.getElementById("img").files; 
// 			var obj2 = document.querySelector("#img2").files;
			
// 			alert(obj);
// 			alert(obj.length);
// //	 		alert(obj.name);
			
// 			for(var i=0; i<obj.length; i++){
// 				alert(obj[i].name + " : " + obj[i].size);	
// 			}
			
// 			alert(obj2);
// 			alert(obj2.length);
			
// 			for(var i=0; i<obj2.length; i++){
// 				alert(obj2[i].name + " + " + obj2[i].size);
// 			}
		
// 	   		return false;
	   		
    	    
//      	    	var obj = document.getElementById("img").files;
// 				var obj2 = document.querySelector("#img2").files;
// 				var kbtoMb = (1024 * 10);
// 				var maxTotalFileNumber = 5;
// 				var totalSize = 0;
// 				var fileCount = obj.length;
				
// 				if(obj.length > maxTotalFileNumber) { alert("전체 파일 갯수는 " + maxTotalFileNumber + "개 까지만 허용됩니다."); return false; } 
				
// 				for(var i=0; i<obj.length; i++) {
// 					totalSize += obj[i].size;
// 					alert("전체사이즈: " + totalSize);
					
// 					if(obj[i].size > kbtoMb * 50) { alert(obj[i].name + "사이즈 초과"); return false; }
// 					if(totalSize > kbtoMb * 500) { alert("전체사이즈 초과"); return false; }
				
// 					alert(obj[i].name + " | "+ obj[i].size + " / 성공");
// 				}
// 			});
 
//  		form.attr("action", goUrlInst).submit();
// 	   	} else {
// 	   		// update
// 	   		/* keyName.val(atob(keyName.val())); */
	   		
// // 	   		if (validationUpdt() == false) return false;
	   		
// 	   		form.attr("action", goUrlUpdt).submit();
// 	   	}
// 	}); 
	
	$("#btnList").on("click", function(){
		formVo.attr("action", goUrlList).submit();
	});
	
	$("#btnDelete").on("click", function(){
		$("input:hidden[name=exDeleteType]").val(2);
		$(".modal-title").text("확 인");
		$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
		$("#btnModalUelete").hide();
		$("#btnModalDelete").show();
		$("#modalConfirm").modal("show");
	});
	
	$("#btnModalDelete").on("click", function(){
		$("#modalConfirm").modal("hide");
		formVo.attr("action", goUrlDele).submit();
	});
	
	upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
//		objName 과 seq 는 jsp 내에서 유일 하여야 함.
//		memberProfileImage: 1
//		memberImage: 2
//		memberFile : 3
		
		const MAX_EACH_FILE_SIZE = 5 * 1024 * 1024;		//	5M
		const MAX_TOTAL_FILE_SIZE = 25 * 1024 * 1024;	//	25M
		const MAX_TOTAL_FILE_NUMBER = 5;
		
		var extArray1 = new Array();
		extArray1 = ["jpg","gif","png","jpeg","bmp","tif"];

		// 문서관련
		var extArray2 = new Array();
		extArray2 = ["txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		// 이하는 커스텀
		var extArray3 = new Array();
		extArray3 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		var extArray4 = new Array();
		extArray4 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		var extArray5 = new Array();
		extArray5 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		var extArray6 = new Array();
		extArray6 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		var extArray7 = new Array();
		extArray7 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		var extArray8 = new Array();
		extArray8 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		var extArray9 = new Array();
		extArray9 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		
		var totalFileSize = 0;
		var obj = $("#" + objName +"")[0].files;	
		var fileCount = obj.length;
		
		allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
		allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
		allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
		
		checkUploadedTotalFileNumber = function(obj, allowedMaxTotalFileNumber, fileCount) {
			if(allowedMaxTotalFileNumber < fileCount){
				alert("전체 파일 갯수는 "+ allowedMaxTotalFileNumber +"개 까지 허용됩니다.");
//				$("#file"+seq).val("");
//				obj.val("");
				return false;
			}
		}


		checkUploadedExt = function(objName, seq, div) {
			var ext = objName.split('.').pop().toLowerCase();
			var extArray = eval("extArray" + div);
			
			if(extArray.indexOf(ext) == -1) {
				alert("허용된 확장자가 아닙니다.");
//				$("#file"+seq).val("");
				return false;
			}
		}


		checkUploadedEachFileSize = function(obj, seq, allowedEachFileSize) {

			if(obj.size > allowedEachFileSize){
				alert("각 첨부 파일 사이즈는 "+kbToMb(allowedEachFileSize)+"MB 이내로 등록 가능합니다.");
				$("#file"+seq).val("");
				return false;
			}
		}


		checkUploadedTotalFileSize = function(seq, totalSize, allowedTotalFileSize) {
			if(totalSize > allowedTotalFileSize){
				alert("전체 용량은 "+kbToMb(allowedTotalFileSize)+"M를 넘을 수 없습니다.");
				$("#file"+seq).val("");
				return false;
			}
		}
		
		if(checkUploadedTotalFileNumber(obj, allowedMaxTotalFileNumber, fileCount) == false) { return false; }

		for (var i = 0 ; i < fileCount ; i++) {
			if(checkUploadedExt($("#" + objName +"")[0].files[i].name, seq, allowedExtdiv) == false) { return false; }
			if(checkUploadedEachFileSize($("#" + objName +"")[0].files[i], seq, allowedEachFileSize) == false) { return false; }
			totalFileSize += $("#" + objName +"")[0].files[i].size;
		}
		if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
		
		if (uiType == 1) {

			for (var i = 0 ; i < fileCount ; i++) {
				
	 			var divImage = "";
	 			divImage += '<div style="display: inline-block; height: 95px;">';
				/* divImage += '	<img src="/resources/common/image/default_111.jpg" class="rounded" width= "85px" height="85px">'; */
				divImage += '	<img id="aaa'+i+'" src="" class="rounded" width= "85px" height="85px">';
				divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red;">X</span></div>';
				divImage += '</div> ';
				
				$("#ifmmUploadedImage1View").append(divImage);
				
				var fileReader = new FileReader();
				 fileReader.readAsDataURL($("#" + objName +"")[0].files[i]);
				alert($("#" + objName +"")[0].files[i]);
				 fileReader.onload = function () {
				 /* alert(i + " : " + fileReader.result); */
				 alert($("#aaa"+i+""));
				 
				 if(i == 0) {
					 $("#aaa0").attr("src", fileReader.result);		/* #-> */
				 } else if (i == 1) {
					 $("#aaa0").attr("src", fileReader.result);		/* #-> */
				 } else {
					 
				 }
					 /* $("#aaa"+i+"").attr("src", fileReader.result);		/* #-> */
					 /* $("#aaa1").attr("src", fileReader.result);		/* #-> */ 
				 }
			}			
 			
		} else if(uiType == 2) {
			$("#ulFile" + seq).children().remove();
			
			for (var i = 0 ; i < fileCount ; i++) {
				addUploadLi(seq, i, $("#" + objName +"")[0].files[i].name);
			}
		} else if (uiType == 3) {
			var fileReader = new FileReader();
			 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
			
			 fileReader.onload = function () {
				 $("#imgProfile").attr("src", fileReader.result);		/* #-> */
			 }		
		} else {
			return false;
		}
		return false;
	}
	
	
	addUploadLi = function (seq, index, name){
		
		var ul_list = $("#ulFile0");
		
		li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-items-center">';
		li = li + name;
		li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq +','+ index +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
		li = li + '</li>';
		
		$("#ulFile"+seq).append(li);
	}
	
	
	delLi = function(seq, index) {
		$("#li_"+seq+"_"+index).remove();
	}

	</script>
	
	
	
	

<!-- 주소 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                /* document.getElementById("sample4_jibunAddress").value = data.jibunAddress; */
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } /* else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } */ else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
                
                /* lat and lng from address s */
    			
        		// 주소-좌표 변환 객체를 생성
        		var geocoder = new daum.maps.services.Geocoder();
        		
        		// 주소로 좌표를 검색
        		geocoder.addressSearch(roadAddr, function(result, status) {
        		 
        			// 정상적으로 검색이 완료됐으면,
        			if (status == daum.maps.services.Status.OK) {
        				
        				document.getElementById("latitude").value=result[0].y;
        				document.getElementById("longitude").value=result[0].x;
        			}
        		});
        		/* lat and lng from address e */
            }
			
        }).open();
    }
    
</script>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1355f81b58cbef3ddc9caf6439b595a2&libraries=services,clusterer,drawing"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 
</script>

<script src="https://kit.fontawesome.com/0089819b08.js"></script>
</body>
</html>