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
        <title>CODE GROUP</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/user/main/image/favicon.ico" />
        
        <!--  css  -->
    	<style type="text/css">
    	
    	
    	<style type="text/css">
    	
    	#btnDelete {
    		float: left;
    	}
    	
    	#btnList, #btnSave {
    		float: right;
    	}
    	
    </style>
    	
    	
    </style>
       
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body>

<!-- start -->
<div class="container-fluid" style="width: 84%">
	<a href="../user/main/main.html"><img src="/resources/user/main/image/cou.jpg" style="width: 200px;"></a>
</div>

<div class="container-fluid" style="width: 84%">
	<nav class="navbar navbar-expand-lg" style="background-color: #d4e7f8;">
	    <div class="collapse navbar-collapse" id="navbarNav">
	      <ul class="navbar-nav">
	        <li class="nav-item">
	          <a class="nav-link" href="/member/memberList">회원관리</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="/codeGroup/codeGroup">코드그룹관리</a>
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
		<input type="hidden" name="shSeq" value="<c:out value="${item.seq }"/>">
<div class="container-fluid" style="width: 84%; font-size: 24px;">회원 정보</div>
<br>
<div class="container-fluid" style="width: 84%;"><br>
	<div class="row">
		<div class="col-2">
  			<label for="memberID" class="form-label">*아이디</label>
  			<input type="text" id="memberId" name="memberId" class="form-control" value="<c:out value="${item.id}"/>">
		</div>
		<div class="col-2">
			<label for="memberName" class="form-label">*이름</label>
  			<input type="text" id="memberName" name="memberName" class="form-control" value="<c:out value="${item.seq}"/>">
		</div>
		<div class="col-2">
			<label for="memberDob" class="form-label">*생년월일</label>
  			<input type="text" id="memberDob" name="memberDob" class="form-control" value="<c:out value="${item.seq}"/>">
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
		<div class="col-1">
			<label for="sample4_postcode" class="form-label">*주소</label>
			<input type="text" id="sample4_postcode" class="form-control" placeholder="우편번호">
		</div>
		<div class="col-2">
			<label for="sample4 execDaumPostcode()" class="form-label">&nbsp;</label>
			<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="form-control"><br>
		</div>
	</div>
	<div class="row">
		<div class="col-3">
			<label for="sample4_roadAddress" class="form-label">*도로명주소</label>
			<input type="text" id="sample4_roadAddress" class="form-control" placeholder="도로명주소">
		</div>
	<!-- 	<div class="col-3">
			<label for="sample4_jibunAddress" class="form-label">*지번주소</label>
			<input type="text" id="sample4_jibunAddress" class="form-control" placeholder="지번주소">
		</div> -->
		<span id="guide" style="color:#999;display:none"></span>
		<div class="col-3">
			<label for="sample4_detailAddress" class="form-label">*상세주소</label>
			<input type="text" id="sample4_detailAddress" class="form-control" placeholder="상세주소">
		</div>
		<div class="col-3">
			<label for="sample4_extraAddress" class="form-label">*참고항목</label>
			<input type="text" id="sample4_extraAddress" class="form-control" placeholder="참고항목">
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
	
	
	$("#btnSave").on("click", function(){
	   		
		if (seq.val() == "0" || seq.val() == ""){
	   		// insert
/* if (validationInst() == false) return false;
 */	   		form.attr("action", goUrlInst).submit();
	   	} else {
	   		// update
	   		/* keyName.val(atob(keyName.val())); */
	   		
// 	   		if (validationUpdt() == false) return false;
	   		
	   		form.attr("action", goUrlUpdt).submit();
	   	}
	}); 
	
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
            }
        }).open();
    }
    
   
    
</script>

<script src="https://kit.fontawesome.com/0089819b08.js"></script>
</body>
</html>