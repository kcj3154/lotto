<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>회원가입</title>
	
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
		<link rel="icon" type="image/x-icon" href="/resources/user/main/template/assets/favicon.ico" />
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		
			<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
			<script src="https://kit.fontawesome.com/0089819b08.js" crossorigin="anonymous"></script>
			
<style>
	body{
	  padding:2em;
	}
	
	.submit-btn input{
	  float: right;
	}
	
	
</style>


</head>
<body>

<!-- start -->
<div class="container-fluid" style="width: 84%">
	<a href="/"><img src="/resources/user/main/image/cou.jpg" style="width: 200px;"></a>
</div>

<hr>

<div class="container-fluid" style="width: 84%;">
	<br>
	<form method="post" onsubmit="return validate()" action="/member/signup">
	<h5>회원가입</h5>
	<br><br>
	    <fieldset>
	         <div class="form-row">
	            <div class="form-group col-md-4">
	                <label for="" class="form-label"><span class="text-danger">*</span>아이디</label>
					<input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy" value="0">
					<input type="text" id="id" name="id"
					value="<c:out value="${item. id}"/>"
					maxlength="20"
					placeholder="대소문자,숫자,4~12자"
					class="form-control"
					<c:if test="${not empty item. id}">readonly</c:if>
				>
				<div class="invalid-feedback" id="ifmmIdFeedback"></div>
				</div>
	            <div class="form-group col-md-4">
	                <label for="pwd"><span class="text-danger">*</span>비밀번호</label>
	                <input type="password" class="form-control" name="pwd" id="pwd" maxlength="12" placeholder="비밀번호">
	            </div>
	            <div class="form-group col-md-4">
	                <label for="pwd2"><span class="text-danger">*</span>비밀번호 확인</label>
	                <input type="password" class="form-control" name="pwd2" id="pwd2" maxlength="12" placeholder="비밀번호 확인">
	                <label id="pwd2Feedback"></label>
	            </div>
	         </div>
	         <div class="form-row">
	            <div class="form-group col-md-4">
	                <label for="name"><span class="text-danger">*</span>이름</label>
	                <input type="text" class="form-control" name="name" id="name" maxlength="10" placeholder="이름">
	            </div>
	            <div class="form-group col-md-4">
	                <label for="tel"><span class="text-danger">*</span>휴대전화</label>
	                <input type="tel" class="form-control" onkeyup="inputPhoneNumber(this);" name="tel" id="tel" maxlength="13" placeholder="휴대전화">
	            </div>
	         </div>
	         <div class="form-row">
	            <div class="form-group col-md-4">
	                <label for="email"><span class="text-danger">*</span>이메일</label>
	                <input type="email" class="form-control" name="email" id="email" placeholder="이메일">
	            </div>
	            <div class="form-group col-md-4">
	                <label for="dob"><span class="text-danger">*</span>생년월일</label>
	                <input type="date" class="form-control" name="dob" id="dob" placeholder="이메일">
	            </div>
	         </div>
	         <br>
	<!--             <div class="form-group col-md-6"> -->
	<!--                 <label for="my_num">주민등록번호</label> -->
	<!--                 <div class="input-group-prepend"> -->
	<!--                     <input type="text" class="form-control" name="my_num1" id="my_num1" maxlength="6" placeholder="주민번호 앞자리"> -->
	<!--                     <input type="password" class="form-control" name="my_num2" id="my_num2" maxlength="7" placeholder="주민번호 뒷자리"> -->
	<!--                 </div> -->
	<!--             </div> -->
					<!-- 주소 -->
			 <div class="form-row">
				<div class="form-group col-md-2" style="height:70px;">
					<label for="sample4_postcode" class="form-label"><span class="text-danger">*</span>우편번호</label>
					<input type="text" id="sample4_postcode" class="form-control" placeholder="우편번호">
				</div>
				<div class="form-group col-md-2" style="height:70px;">
					<label for="sample4 execDaumPostcode()" class="form-label">&nbsp;</label>
					<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="form-control"><br>
				</div>
			 </div>
			 <div class="form-row">
				<div class="form-group col-md-4" style="height:70px;">
					<label for="sample4_roadAddress" class="form-label"><span class="text-danger">*</span>도로명주소</label>
					<input type="text" id="sample4_roadAddress" class="form-control" placeholder="도로명주소">
					<span id="guide" style="color:#999;display:none"></span>
				</div>
				<!-- 	<div class="col-3">
						<label for="sample4_jibunAddress" class="form-label">*지번주소</label>
						<input type="text" id="sample4_jibunAddress" class="form-control" placeholder="지번주소">
					</div> -->
					
				<div class="form-group col-md-4">
					<label for="sample4_detailAddress" class="form-label"><span class="text-danger">*</span>상세주소</label>
					<input type="text" id="sample4_detailAddress" class="form-control" placeholder="상세주소">
				</div>
				<div class="form-group col-md-4">
					<label for="sample4_extraAddress" class="form-label">참고항목</label>
					<input type="text" id="sample4_extraAddress" class="form-control" placeholder="참고항목">
				</div>
			 </div>
			 <div class="form-row">
				 <div class="form-group col-md-4">
					<label for="latitude" class="form-label"><span class="text-danger">*</span>위도</label>
					<input type="text" id="latitude" class="form-control">
			   	 </div>
			   	 
				 <div class="form-group col-md-4">
					<label for="longitude" class="form-label"><span class="text-danger">*</span>경도</label>
					<input type="text" id="longitude" class="form-control">
				 </div>
			 </div>
			   <br>
			   <div id="map" style="height:350px;"></div>
			   <br>
	            <div class="col-md-12 submit-btn">
	                <input class="btn btn-primary" type="submit" name="submit" value="회원 가입">
	            </div>
	         </div>
	    </fieldset>
	</form>
	<br>
	<div class="text-center">이미 아이디가 있다면? <a href="/member/login">로그인하러 가기</a></div>
</div>


<br><br>

<fieldset>
	<legende>뭘</legende>
</fieldset>


 <!-- Footer-->
 	
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Coupang</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
    
<!-- end -->

<script type="text/javascript">  
  
 $("#id").on("focusout", function(){  
		if(!checkId('id', "아이디는 4~12자의 대소문자와 숫자로만 입력 가능합니다.")) {  
		return false;  
	} else {  
		$.ajax({  
				async: true   
				,cache: false  
				,type: "post"  
				/* ,dataType:"json" */  
				,url: "/member/checkId"  
 				/* ,data : $("#formLogin").serialize() */   
				,data : { "id" : $("#id").val() } 
 				,success: function(response) {  
 					if(response.rt == "success") {  
						
					document.getElementById("id").classList.add('is-valid');  
					document.getElementById("ifmmIdFeedback").classList.remove('invalid-feedback');  
				    document.getElementById("ifmmIdFeedback").classList.add('valid-feedback');  
					document.getElementById("ifmmIdFeedback").innerText = "사용 가능 합니다.";  
						
					document.getElementById("ifmmIdAllowedNy").value = 1;  
						
				} else {  
						
 						document.getElementById("id").classList.add('is-invalid');  
						
						document.getElementById("ifmmIdFeedback").classList.remove('valid-feedback');  
 						document.getElementById("ifmmIdFeedback").classList.add('invalid-feedback');  
 						document.getElementById("ifmmIdFeedback").innerText = "사용 불가능 합니다";  
						
  						document.getElementById("ifmmIdAllowedNy").value = 0;  
					} 
			}  
				,error : function(jqXHR, textStatus, errorThrown){ 
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);  
				}  
			});  
 		}  
  	});  
	
// 	비밀번호 일치 
    $('#pwd, #pwd2').on('keyup', function () {
    	  if ($('#pwd').val() == $('#pwd2').val()) {  
    		$("#pwd2Feedback").text("비밀번호가 일치합니다").css({'color':'#198754', 'font-size':'14px'}); 
     		} else   
    		$("#pwd2Feedback").text("비밀번호가 일치하지 않습니다").css({'color':'#DC3545', 'font-size':'14px'});  
     	});  
	
</script> 

<script type="text/javascript">
function validate() {
    //event.preventDefault();
    var objID = document.getElementById("id");
    var objPwd1 = document.getElementById("pwd");
    var objPwd2 = document.getElementById("pwd2");
    var objEmail = document.getElementById("email");
    var objName = document.getElementById("name");
    var objPnum = document.getElementById("tel");
//     var arrNum1 = new Array();
//     var arrNum2 = new Array();
//     var tempSum=0;//주민번호 합을 넣는 공간
    //아이디와 패스워드 값 데이터 정규화 공식
    var regul1 = /^[a-zA-Z0-9]{4,12}$/;
    //이메일 값 데이터 유효성 체크
    //[]안에 있는 값만 쓰겠다
    //이메일 정규화 공식
    var regul2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
    //이름 정규화 공식
    var regul3 = /^[가-힝a-zA-Z]{2,}$/;
    //var email = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
    //아이디 입력 하지 않았을 경우
    if ((objID.value) == ""){
        alert("아이디를 입력하지 않았습니다.");
        objID.focus();
        return false;
    }
    //아이디 유효성 검사
    //내가 입력한 데이터를 검사하는 check()
    //만약 내가 아이디에 정규화 방식을 하나라도 지키지 않으면 if문 안으로 들어가서 alert message를 띄움
//     if (!check(regul1,objID,"아이디는 4~12자의 대소문자와 숫자로만 입력 가능합니다.")) {
//         return false;//반환 할 곳 없이 if문 탈출
//     }
    
    //휴대번호를 입력 하지 않았을 경우
     if ((objPnum.value) == ""){
        alert("휴대번호를 입력하지 않았습니다.");
        objID.focus();
        return false;
    }
    //비밀번호 입력 하지 않았을 경우
    if ((objPwd1.value) == ""){
        alert("비밀번호를 입력해 주세요");
        objPwd1.focus();
        return false;
    }
    if ((objPwd2.value=="")){
        alert("비밀번호를 입력해 주세요");
        objPwd2.focus();
        return false;
    }
    //비밀번호 유효성 검사
    //만약 내가 비밀번호에 정규화 방식을 하나라도 지키지 않으면 if문 안으로 들어가서 alert message를 띄움
    if (!check(regul1,objPwd1,"비밀번호는 4~12자의 대소문자와 숫자로만 입력 가능합니다.")) {
        return false;
    }
    
	
    //이메일 입력 안했을 경우
    if ((objEmail.value)=="") {
        alert("이메일을 입력해 주세요");
        objEmail.focus();
        return false;
    }
    //이메일이 잘못된 경우
    if (!check(regul2,objEmail,"이메일을 잘못 입력 했습니다.")) {
        return false;
    }
    //이름 입력 안 한 경우
    if ((objName.value)=="") {
        alert("이름을 입력해 주세요");
        objName.focus();
        return false;
    }
    //이름에 특수 문자가 들어간 경우
    if (!check(regul3,objName,"이름이 잘못 되었습니다.")) {
        return false;
    }
//     //주민번호 앞자리를 각 배열에 넣어 검색 및 비교하기위한 단계
//     //앞자리 값 만큼 돌림
//     for (var i = 0; i <objNum1.value.length; i++) {
//         //배열 칸마다 앞자리 값 하나씩 넣어줌
//         arrNum1[i]=objNum1.value.charAt(i);
//     }
//     //주민번호 뒷자리를 각 배열에 넣어 검색 및 비교하기위한 단계
//     //뒷자리 값 만큼 돌림
//     for (var i = 0; i <objNum2.value.length; i++) {
//         //배열 칸마다 뒷자리 값 하나씩 넣어줌
//         arrNum2[i]=objNum2.value.charAt(i);
//     }
//     //주민번호 앞자리를 tempSum에 집어 넣기
//     //앞자리 만큼 돌림
//     for (var i = 0; i <objNum1.value.length; i++) {
//         //tempSum에 앞자리를 연이어 넣어줌
//         tempSum += arrNum1[i]*(2+i);
//     }
//     //주민번호 뒷자리를 tempSum에 집어 넣기
//     //뒷자리 -1을 해주는 이유 : 뒷자리 마지막 자리는 더할 필요 없어서
//     //뒷자리의 -1만큼 돌림
//     for (var i = 0; i <objNum2.value.length-1; i++) {
//         //뒷자리 2번째 자리 부터 
//         if (i>=2) {
//             //tempSum에 2~6번째까지 넣어줌
//             tempSum += arrNum2[i]*i;
//         }else{//뒷자리 0~1번째 자리
//             //tempSum에 0~1번째까지 넣어줌
//             tempSum += arrNum2[i]*(8+i);
//         }
//     }
//     //주민번호 유효성 체크
//     //주민번호 구하는 식
//     if (((11-(tempSum%11))%10)!=arrNum2[6]) {
//         alert("올바른 주민 번호가 아닙니다.");
//         objNum1.value="";
//         objNum2.value="";
//         objNum1.focus();
//         return false;
//     }
//     //주민번호를 입력하면 생년월일이 자동으로 입력된다.
//     //substring은 시작문자와 끝문자를 검색하는 역할
//     if (arrNum2[0]==1 || arrNum2[0]==2) {//1900년생 일때
//         var y = parseInt(objNum1.value.substring(0,2));
//         var m = parseInt(objNum1.value.substring(2,4));
//         var d = parseInt(objNum1.value.substring(4,6));
//         //년도,월,일을 각각 구함
//         f.my_year.value = 1900+y;//년도
//         f.month.value = m;//월
//         f.day.value = d;//일
//     }else if(arrNum2[0]==3||arrNum2[0]==4){//2000년생 일때
//         var y = parseInt(objNum1.value.substring(0,2));
//         var m = parseInt(objNum1.value.substring(2,4));
//         var d = parseInt(objNum1.value.substring(4,6));
        
//         f.my_year.value = 2000+y;//년도
//         f.month.value = m;//월
//         f.day.value = d;//일
//     }
}
function check(re,what,message){//정규화데이터,아이템 id,메세지
    if (re.test(what.value)) {//what의 문자열에 re의 패턴이 있는지 나타내는 함수 test
    //만약 내가 입력한 곳의 값이 정규화 데이터를 썼다면 true를 반환해서 호출 된 곳으로 리턴됨
        return true;
    }
    alert(message);
    what.value = "";
    what.focus();
}
//휴대전화
function inputPhoneNumber(obj) {
var number = obj.value.replace(/[^0-9]/g, "");
var tel = "";
if(number.length < 4) {
    return number;
} else if(number.length < 7) {
	tel += number.substr(0, 3);
	tel += "-";
	tel += number.substr(3);
} else if(number.length < 11) {
	tel += number.substr(0, 3);
    tel += "-";
    tel += number.substr(3, 3);
    tel += "-";
    tel += number.substr(6);
} else {
	tel += number.substr(0, 3);
	tel += "-";
	tel += number.substr(3, 4);
	tel += "-";
	tel += number.substr(7);
}
obj.value = tel;
}
</script>


<!-- 주소 스크립트 -->
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

</body>
</html>