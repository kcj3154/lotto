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
	body {
		color: #fff;
		background: #444444;
		font-family: 'Roboto', sans-serif;
	}
	.form-control {
		font-size: 15px;
	}
	.form-control, .form-control:focus, .input-group-text {
		border-color: #e1e1e1;
	}
	.form-control, .btn {        
		border-radius: 3px;
	}
	.signup-form {
		width: 400px;
		margin: 0 auto;
		padding: 30px 0;		
	}
	.signup-form form {
		color: #999;
		border-radius: 3px;
		margin-bottom: 15px;
		background: #fff;
		box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
		padding: 30px;
	}
	.signup-form h2 {
		color: #333;
		font-weight: bold;
		margin-top: 0;
	}
	.signup-form hr {
		margin: 0 -30px 20px;
	}
	.signup-form .form-group {
		margin-bottom: 20px;
	}
	.signup-form label {
		font-weight: normal;
		font-size: 15px;
	}
	.signup-form .form-control {
		min-height: 38px;
		box-shadow: none !important;
	}	
	.signup-form .input-group-addon {
		max-width: 42px;
		text-align: center;
	}	
	.signup-form .btn, .signup-form .btn:active {        
		font-size: 16px;
		font-weight: bold;
		background: #19aa8d !important;
		border: none;
		min-width: 140px;
	}
	.signup-form .btn:hover, .signup-form .btn:focus {
		background: #179b81 !important;
	}
	.signup-form a {
		color: #fff;	
		text-decoration: underline;
	}
	.signup-form a:hover {
		text-decoration: none;
	}
	.signup-form form a {
		color: #19aa8d;
		text-decoration: none;
	}	
	.signup-form form a:hover {
		text-decoration: underline;
	}
	.signup-form .fa {
		font-size: 21px;
	}
	.signup-form .fa-paper-plane {
		font-size: 18px;
	}
	.signup-form .fa-check {
		color: #fff;
		left: 17px;
		top: 18px;
		font-size: 7px;
		position: absolute;
	}
	</style>
</head>


<body>
<div class="signup-form">
    <form action="/examples/actions/confirmation.php" method="post">
    	<a href="../main/main.html"><img src = "/resources/user/main/image/coupang3.png"></a>
		<h4>회원가입</h4>
		<hr>
        <div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">
						<span class="fa fa-user"></span>
					</span>                    
				</div>
				<label for="" class="form-label">아이디 <span class="text-danger">"</span></label>
				<input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy" value="0">
				<input type="text" id="id" name="id"
					value="<c:out value="${item. id}"/>"
					maxlength="20"
					placeholder="영대소문자,숫자,특수문자(-_.),4~20자"
					class="form-control form-control-sm"
					<c:if test="${not empty item. id}">readonly</c:if>
				>
				<div class="invalid-feedback" id="ifmmIdFeedback"></div>
			</div>
        </div>
        <div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">
						<i class="fa fa-paper-plane"></i>
					</span>                    
				</div>
				<input type="email" class="form-control" name="email" placeholder="이메일" required="required">
			</div>
        </div>
		<div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">
						<i class="fa fa-lock"></i>
					</span>                    
				</div>
				<input type="password" class="form-control" id="password1" placeholder="비밀번호" required="required">
			</div>
        </div>
		<div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">
						<i class="fa fa-lock"></i>
						<i class="fa fa-check"></i>
					</span>                    
				</div>
				<input type="password" class="form-control" id="password2" placeholder="비밀번호 확인" required="required">
			</div>
        </div>
        <div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">
						<i class="fa-solid fa-file-signature"></i>
					</span>                    
				</div>
				<input type="text" class="form-control" name="name" placeholder="이름" required="required">
			</div>
        </div>
        <div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">
						<i class="fa-solid fa-cake-candles" style="width: 18px;"></i>
					</span>                    
				</div>
				<input type="date" class="form-control" name="dob" placeholder="생년월일" required="required">
			</div>
        </div>
        <div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">
						<i class="fa-solid fa-mobile-screen" style="width: 18px;"></i>
					</span>                    
				</div>
				<input type="text" class="form-control" name="tel" placeholder="전화번호" required="required">
			</div>
        </div>
		<div class="form-group">
            <button type="button" class="btn btn-primary btn-lg" onclick="signup()">가입하기</button>
        </div>
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

<!--비밀번호 확인 -->
  <script type="text/javascript">
    function signup() {
      var p1 = document.getElementById('password1').value;
      var p2 = document.getElementById('password2').value;
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