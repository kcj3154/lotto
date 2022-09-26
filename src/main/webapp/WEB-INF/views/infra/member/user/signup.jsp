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
	<div class="row">
		<div class="col-4">
			<label for="" class="form-label">아이디</label>
			<input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy" value="0">
			<input type="text" id="id" name="id"
				value="<c:out value="${item. id}"/>"
				maxlength="20"
				placeholder="영대소문자,숫자,특수문자(-_.),4~20자"
				class="form-control"
				<c:if test="${not empty item. id}">readonly</c:if>
			>
			<div class="invalid-feedback" id="ifmmIdFeedback"></div>
		</div>
		<div class="col-4">
			<label for="pwd1" class="form-label">비밀번호</label>
  			<input type="password" id="pwd1" name="" class="form-control">
		</div>
		<div class="col-4">
			<label for="pwd2" class="form-label">비밀번호 확인</label>
  			<input type="password" id="pwd2" name="" class="form-control">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-4">
			<label for="name" class="form-label">이름</label>
  			<input type="text" id="name" name="" class="form-control">
		</div>
		<div class="col-4">
			<label for="email" class="form-label">이메일</label>
  			<input type="text" id="email" name="" class="form-control">
		</div>
		<div class="col-4">
			<label for="email" class="form-label">생년월일</label>
  			<input type="text" id="email" name="" class="form-control">
		</div>
	</div>	
		
	<br>
		<div class="form-group">
            <button type="button" class="btn btn-primary btn-lg" onclick="signup()">가입하기</button>
        </div>
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

<!--비밀번호 확인 -->
  <script type="text/javascript">
    function signup() {
      var p1 = document.getElementById('pwd1').value;
      var p2 = document.getElementById('pwd2').value;
      if( p1 != p2 ) {
        alert("비밀번호가 일치 하지 않습니다");
        return false;
      } else{
        alert("비밀번호가 일치합니다");
        return true;
      }
    }
  </script>
  
  <script>
  
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

</body>
</html>