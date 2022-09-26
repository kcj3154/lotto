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
	  float: center;
	}
	
	
</style>


</head>
<body>

<!-- start -->
<div class="container-fluid" style="width: 84%">
	<a href="../user/main/main.html"><img src="/resources/user/main/image/cou.jpg" style="width: 200px;"></a>
	<br><br>
	<h5>회원가입</h5>
</div>

<hr>

<div class="container-fluid" style="width: 84%;">
<br>
<form method="post" onsubmit="return validate()" enctype="text/plain">
    <fieldset>
        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="" class="form-label">아이디</label>
				<input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy" value="0">
				<input type="text" id="id" name="id"
				value="<c:out value="${item. id}"/>"
				maxlength="20"
				placeholder="대소문자,숫자,4~12"
				class="form-control"
				<c:if test="${not empty item. id}">readonly</c:if>
			>
			<div class="invalid-feedback" id="ifmmIdFeedback"></div>
			</div>
            <div class="form-group col-md-4">
                <label for="pwd1">비밀번호</label>
                <input type="password" class="form-control" name="pwd1" id="pwd1" maxlength="12" placeholder="비밀번호">
            </div>
            <div class="form-group col-md-4">
                <label for="pwd2">비밀번호 확인</label>
                <input type="password" class="form-control" name="pwd2" id="pwd2" maxlength="12" placeholder="비밀번호 확인">
            </div>
            <div class="form-group col-md-4">
                <label for="name">이름</label>
                <input type="text" class="form-control" name="name" id="name" maxlength="10" placeholder="이름">
            </div>
            <div class="form-group col-md-4">
                <label for="email">이메일</label>
                <input type="email" class="form-control" name="email" id="email" placeholder="이메일">
            </div>
            <div class="form-group col-md-4">
                <label for="tel">휴대전화</label>
                <input type="tel" class="form-control" onkeyup="inputPhoneNumber(this);" name="tel" id="tel" maxlength="13" placeholder="휴대번호">
            </div>
<!--             <div class="form-group col-md-6"> -->
<!--                 <label for="my_num">주민등록번호</label> -->
<!--                 <div class="input-group-prepend"> -->
<!--                     <input type="text" class="form-control" name="my_num1" id="my_num1" maxlength="6" placeholder="주민번호 앞자리"> -->
<!--                     <input type="password" class="form-control" name="my_num2" id="my_num2" maxlength="7" placeholder="주민번호 뒷자리"> -->
<!--                 </div> -->
<!--             </div> -->
            <div class="col-md-12 submit-btn">
                <input class="btn btn-primary" type="submit" name="submit" value="회원 가입">
            </div>
        </div>
    </fieldset>
</form>
	<div class="text-center">이미 아이디가 있다면? <a href="login">로그인하러 가기</a></div>
</div>

<br><br>



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
// 		if(!checkId('id', 2, 0, "영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다")) {
// 			return false;
// 		} else {
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
// 				,error : function(jqXHR, textStatus, errorThrown){
// 					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
// 				}
			});
// 		}
	});
	
</script>

<script type="text/javascript">

function validate() {
    //event.preventDefault();
    var objID = document.getElementById("id");
    var objPwd1 = document.getElementById("pwd1");
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
    if (!check(regul1,objID,"아이디는 4~12자의 대소문자와 숫자로만 입력 가능합니다.")) {
        return false;//반환 할 곳 없이 if문 탈출
    }
    //아이디 입력 하지 않았을 경우
    if ((objID.value) == ""){
        alert("아이디를 입력하지 않았습니다.");
        objID.focus();
        return false;
    }
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
    
    //비밀번호와 비밀번호 확인이 일치 하지 않을 경우
    if ((objPwd1.value)!=(objPwd2.value)) {
        alert("비밀번호가 일치 하지 않습니다.");
        objPwd1.focus();
        objPwd2.focus();
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
// }


//휴대번호
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

</body>
</html>