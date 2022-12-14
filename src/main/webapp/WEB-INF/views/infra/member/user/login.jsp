<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>로그인</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="/resources/user/main/template/assets/favicon.ico" />
    
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>

<!-- start -->



<section class="vh-100" style="background-color: #444444;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card shadow-2-strong" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-5"><a href="/main"><img src="/resources/images/coupang2.png"></a></div>

            <div class="form-outline mb-4">
              <input type="text" id="ifmmId" onkeyup="enterkey();" class="form-control form-control-lg"  placeholder="아이디"/>
            </div>

            <div class="form-outline mb-4">
              <input type="password" id="ifmmPwd" onkeyup="enterkey();" class="form-control form-control-lg" placeholder="비밀번호"/>
            </div>

            <!-- Checkbox -->
            <div class="form-check d-flex justify-content-start mb-4">
              <input class="form-check-input" type="checkbox" value="" id="form1Example3" />
              <label class="form-check-label" for="form1Example3">&nbsp;자동 로그인</label>
            </div>

            <button type="button" id="btnLogin" name="btnLogin" class="btn btn-dark btn-lg btn-block"  style="width: 100%">로그인</button></a>
            <hr class="my-4">
        </div>
      </div>
    </div>
  </div>
</section>
<!-- end -->





		
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		

<script type="text/javascript">
	function loginAjax(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/member/loginProc"
			,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPwd" : $("#ifmmPwd").val()}
			,success: function(response) {
				if(response.rt == "success") {
					if(response.rtt =="1"){
						location.href = "/member/memberList";
					
					}else{
					
					location.href = "/main";
					}
				} else {
					alert("로그인 실패");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	}
	
	$("#btnLogin").on("click", function(){
		
		loginAjax();
		
	});
	
	//엔터키 로그인
	function enterkey() {
       if (window.event.keyCode == 13) {
				
       	loginAjax();
            
       	}
	}
	
</script>

 

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>


