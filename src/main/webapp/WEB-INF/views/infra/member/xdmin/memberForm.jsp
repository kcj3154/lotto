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
	          <a class="nav-link" href="/member/memberList">????????????</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="/codeGroup/codeGroupList">??????????????????</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="/code/codeList">????????????</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
</div>


<hr>
<!-- ????????? ???????????? action ??? ???????????? onsubmit -->
<form name="form" id="form" method="post">
		<!-- <form name="form" method="post" > -->
		<input type="hidden" name="shSeq" value="<c:out value="${item.ifmmSeq }"/>">
<%-- 		<input type="hidden" name="seq" value="<c:out value="${item.seq }"/>"> --%>
<div class="container-fluid" style="width: 84%; font-size: 24px;">?????? ??????</div>
<br>
<div class="container-fluid" style="width: 84%;"><br>
	<div class="row">
		<div class="col-4">
  			<label for="id" class="form-label"><span class="text-danger">*</span>?????????</label>
  			<input type="text" id="id" name="id" class="form-control" value="<c:out value="${item.ifmmId}"/>">
		</div>
		<div class="col-4">
			<label for="name" class="form-label"><span class="text-danger">*</span>??????</label>
  			<input type="text" id="name" name="name" class="form-control" value="<c:out value="${item.ifmmName}"/>">
		</div>
		<div class="col-4">
			<label for="tel" class="form-label"><span class="text-danger">*</span>????????????</label>
  			<input type="tel" id="tel" name="tel" class="form-control" value="<c:out value="${item.ifmmTel}"/>">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-4">
			<label for="dob" class="form-label"><span class="text-danger">*</span>????????????</label>
  			<input type="date" id="dob" name="dob" class="form-control" value="<c:out value="${item.ifmmDob}"/>">
		</div>
	</div>
	
	<br><br>
		<%-- <div class="col-6">
			<label for="delNy" class="form-Label">????????????</label>
			<select class="form-select" id="delNy" name="delNy">
				<option value="1" <c:if test="${item.delNy == 1}">selected</c:if>>Y</option>
				<option value="0" <c:if test="${item.delNy == 0}">selected</c:if>>N</option>
			</select>
		</div>
	</div> --%>
	
	<!-- ?????? -->
	<div class="row">
		<div class="col-2">
			<label for="sample4_postcode" class="form-label"><span class="text-danger">*</span>????????????</label>
			<input type="text" id="sample4_postcode" class="form-control" placeholder="????????????">
		</div>
		<div class="col-2">
			<label for="sample4 execDaumPostcode()" class="form-label">&nbsp;</label>
			<input type="button" onclick="sample4_execDaumPostcode()" value="???????????? ??????" class="form-control"><br>
		</div>
	</div>
	<div class="row">
		<div class="col-4">
			<label for="sample4_roadAddress" class="form-label"><span class="text-danger">*</span>???????????????</label>
			<input type="text" id="sample4_roadAddress" class="form-control" placeholder="???????????????">
		</div>
	<!-- 	<div class="col-3">
			<label for="sample4_jibunAddress" class="form-label">*????????????</label>
			<input type="text" id="sample4_jibunAddress" class="form-control" placeholder="????????????">
		</div> -->
		<span id="guide" style="color:#999;display:none"></span>
		<div class="col-4">
			<label for="sample4_detailAddress" class="form-label"><span class="text-danger">*</span>????????????</label>
			<input type="text" id="sample4_detailAddress" class="form-control" placeholder="????????????">
		</div>
		<div class="col-4">
			<label for="sample4_extraAddress" class="form-label">????????????</label>
			<input type="text" id="sample4_extraAddress" class="form-control" placeholder="????????????">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-4">
			<label for="latitude" class="form-label"><span class="text-danger">*</span>??????</label>
			<input type="text" id="latitude" class="form-control" placeholder="???????????????">
		</div>
		<div class="col-4">
			<label for="longitude" class="form-label"><span class="text-danger">*</span>??????</label>
			<input type="text" id="longitude" class="form-control" placeholder="???????????????">
		</div>
	</div>
	<br>
	<div id="map" style="height:350px;"></div>
	<br>
	<div class="row mt-sm-4">
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmUploadedImage" class="form-label input-file-button">???????????????</label>
 			<input class="form-control form-control-sm" id="ifmmUploadedImage" name="ifmmUploadedImage" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedImage', 1, 0, 1, 0, 0, 1);">
			<div class="addScroll">
				<ul id="ulFile1" class="list-group">
				</ul>
			</div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
			<label for="ifmmUploadedFile" class="form-label input-file-button">????????????</label>
			<input class="form-control form-control-sm" id="ifmmUploadedFile" name="ifmmUploadedFile" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedFile', 2, 0, 2, 0, 0, 2);" >
			<div class="addScroll">
				<ul id="ulFile2" class="list-group">
				</ul>
			</div>
        </div>
    </div>

    <div class="row mt-sm-4">
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmUploadedImage" class="form-label input-file-button">???????????????</label>
 			<input class="form-control form-control-sm" id="ifmmUploadedImage" name="ifmmUploadedImage" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedImage', 1, 0, 1, 0, 0, 1);">
 			<div class="addScroll">
				<div style="display: inline-block; height: 95px;">
					<img src="/resources/common/image/default_111.jpg" class="rounded" width= "85px" height="85px">
					<div style="position: relative; top:-85px; left:5px"><span style="color: red;">X</span></div>
				</div>
 			</div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
			<label for="ifmmUploadedFile" class="form-label input-file-button">????????????</label>
			<input class="form-control form-control-sm" id="ifmmUploadedFile" name="ifmmUploadedFile" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedFile', 2, 0, 2, 0, 0, 2);" >
			<div class="addScroll">
				<ul id="ulFile2" class="list-group">
				</ul>
			</div>
        </div>
    </div>    
	<div class="row">
		<div class="col-4">
			<label for="#" class="form-label"><span class="text-danger">*</span>????????????</label>
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
		        <h5 class="modal-title" id="exampleModalLabel">??????</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        ?????????????????????????
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-dark" data-bs-dismiss="modal">??????</button>
		        <button type="button" class="btn btn-dark" id="btnModalDelete">??????</button>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
	<button type="button" class="btn btn-dark btn-sm" id="btnList">????????????</button>
	<button type="button" class="btn btn-dark btn-sm" id="btnSave">??????</button>
	
		<div class="row mt-sm-4">
		
        <div class="col-sm-6 mt-3 mt-sm-0" style="float:right;">
            <button type="button" onclick="upload('img12', 1, 0, 3, 0, 0, 1)">?????? ??????</button>
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
				
// 				if(obj.length > maxTotalFileNumber) { alert("?????? ?????? ????????? " + maxTotalFileNumber + "??? ????????? ???????????????."); return false; } 
				
// 				for(var i=0; i<obj.length; i++) {
// 					totalSize += obj[i].size;
// 					alert("???????????????: " + totalSize);
					
// 					if(obj[i].size > kbtoMb * 50) { alert(obj[i].name + "????????? ??????"); return false; }
// 					if(totalSize > kbtoMb * 500) { alert("??????????????? ??????"); return false; }
				
// 					alert(obj[i].name + " | "+ obj[i].size + " / ??????");
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
		$(".modal-title").text("??? ???");
		$(".modal-body").text("?????? ???????????? ???????????????????????? ?");
		$("#btnModalUelete").hide();
		$("#btnModalDelete").show();
		$("#modalConfirm").modal("show");
	});
	
	$("#btnModalDelete").on("click", function(){
		$("#modalConfirm").modal("hide");
		formVo.attr("action", goUrlDele).submit();
	});
	
	upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
//		objName ??? seq ??? jsp ????????? ?????? ????????? ???.
//		memberProfileImage: 1
//		memberImage: 2
//		memberFile : 3
		
		const MAX_EACH_FILE_SIZE = 5 * 1024 * 1024;		//	5M
		const MAX_TOTAL_FILE_SIZE = 25 * 1024 * 1024;	//	25M
		const MAX_TOTAL_FILE_NUMBER = 5;
		
		var extArray1 = new Array();
		extArray1 = ["jpg","gif","png","jpeg","bmp","tif"];

		// ????????????
		var extArray2 = new Array();
		extArray2 = ["txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		// ????????? ?????????
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
				alert("?????? ?????? ????????? "+ allowedMaxTotalFileNumber +"??? ?????? ???????????????.");
//				$("#file"+seq).val("");
//				obj.val("");
				return false;
			}
		}


		checkUploadedExt = function(objName, seq, div) {
			var ext = objName.split('.').pop().toLowerCase();
			var extArray = eval("extArray" + div);
			
			if(extArray.indexOf(ext) == -1) {
				alert("????????? ???????????? ????????????.");
//				$("#file"+seq).val("");
				return false;
			}
		}


		checkUploadedEachFileSize = function(obj, seq, allowedEachFileSize) {

			if(obj.size > allowedEachFileSize){
				alert("??? ?????? ?????? ???????????? "+kbToMb(allowedEachFileSize)+"MB ????????? ?????? ???????????????.");
				$("#file"+seq).val("");
				return false;
			}
		}


		checkUploadedTotalFileSize = function(seq, totalSize, allowedTotalFileSize) {
			if(totalSize > allowedTotalFileSize){
				alert("?????? ????????? "+kbToMb(allowedTotalFileSize)+"M??? ?????? ??? ????????????.");
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
	
	
	
	

<!-- ?????? -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //??? ??????????????? ????????? ?????? ?????? ????????? ?????? ????????? ??????, ???????????? ???????????? ???????????? ????????? ????????? ???????????? ????????? ???????????????.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

                // ????????? ????????? ?????? ????????? ?????? ????????? ????????????.
                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
                var roadAddr = data.roadAddress; // ????????? ?????? ??????
                var extraRoadAddr = ''; // ?????? ?????? ??????

                // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
                // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
                if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // ???????????? ??????, ??????????????? ?????? ????????????.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                /* document.getElementById("sample4_jibunAddress").value = data.jibunAddress; */
                
                // ???????????? ???????????? ?????? ?????? ?????? ????????? ?????????.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // ???????????? '?????? ??????'??? ????????? ??????, ?????? ???????????? ????????? ?????????.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(?????? ????????? ?????? : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } /* else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(?????? ?????? ?????? : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } */ else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
                
                /* lat and lng from address s */
    			
        		// ??????-?????? ?????? ????????? ??????
        		var geocoder = new daum.maps.services.Geocoder();
        		
        		// ????????? ????????? ??????
        		geocoder.addressSearch(roadAddr, function(result, status) {
        		 
        			// ??????????????? ????????? ???????????????,
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
var mapContainer = document.getElementById('map'), // ????????? ????????? div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // ????????? ????????????
        level: 3 // ????????? ?????? ??????
    };

// ????????? ????????? div???  ?????? ????????????  ????????? ???????????????
var map = new kakao.maps.Map(mapContainer, mapOption); 
</script>

<script src="https://kit.fontawesome.com/0089819b08.js"></script>
</body>
</html>