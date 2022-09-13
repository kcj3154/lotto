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
    	
    	
    	#trash {
    		float: right;
    	}
    	
    	
    </style>
       
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>

<!-- start -->
<div class="container-fluid" style="width: 84%">
	<a href="../user/main/main.html"><img src="/resources/user/main/image/cou.jpg" style="width: 200px;"></a>
</div>

<div class="container-fluid" style="width: 84%">
	<nav class="navbar navbar-expand-lg" style="background-color: #d4e7f8;">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="#">Navbar</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarNav">
	      <ul class="navbar-nav">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">회원관리</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#">서비스관리</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#">사이트관리</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link disabled">로그관리</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
</div>


<hr>
<!-- 데이터 넘기려면 action 안 넘기려면 onsubmit -->
<form method="post" action="/codeGroup/codeGroupInst"> 
<div class="container-fluid" style="width: 84%; font-size: 24px;">코드그룹 관리</div>
<br>
<div class="container-fluid" style="width: 84%;"><br>
	<div class="row">
		<div class="col-6">
  			<label for="CodeGroupCode" class="form-label">코드그룹 코드</label>
  			<input type="text" id="codeGroupCode" class="form-control" value="자동설정" readonly>
		</div>
		<div class="col-6">
			<label for="codeGroupCodeAnother" class="form-label">코드그룹 코드(Another)</label>
  			<input type="text" id="codeGroupCodeAnother" class="form-control" placeholder="영문(대소문자),숫자">
		</div>
	</div>
	
	<br>
	<div class="row">
		<div class="col-6">
			<label for="codeGroupNameKr" class="form-label">코드그룹 이름 (한글)</label>
  			<input type="text" id="codeGroup" name="codeGroup" class="form-control">
		</div>
		<div class="col-6">
			<label for="codeGroupNameEng" class="form-label">코드그룹 이름 (영문)</label>
  			<input type="text" id="codeGroupEn" name="codeGroupEn" class="form-control" placeholder="영문(대소문자),숫자">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-6">
			<label for="useNy" class="form-Label">사용여부</label>
			<select class="form-select" name="useNy" id="">
				<option value="0">N</option>
				<option value="1">Y</option>
			</select>
		</div>
		<div class="col-6">
			<label for="seq" class="form-Label">순서</label>
			<input type="text" class="form-control" placeholder="숫자" id="sort">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-6">
			<label for="explanation" class="form-Label">설명</label>
			<textarea style="width: 775px; height: 70px"></textarea>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-6">
			<label for="reserveVarchar1" class="form-Label">예비1 (varchar type)</label>
			<input type="text" class="form-control" placeholder="영문(대소문자),숫자">
		</div>
		<div class="col-6">
			<label for="reserveVarchar2" class="form-Label">예비2 (varchar type)</label>
			<input type="text" class="form-control" placeholder="영문(대소문자),숫자">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-6">
			<label for="reserveVarchar3" class="form-Label">예비3(varchar type)</label>
			<input type="text" class="form-control" placeholder="영문(대소문자),숫자">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-6">
			<label for="reserveInt1" class="form-Label">예비1 (int type)</label>
			<input type="text" class="form-control" placeholder="숫자">
		</div>
		<div class="col-6">
			<label for="reserveInt2" class="form-Label">예비2 (int type)</label>
			<input type="text" class="form-control" placeholder="숫자">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-6">
			<label for="reserveInt3" class="form-Label">예비3(int type)</label>
			<input type="text" class="form-control" placeholder="숫자">
		</div>
	</div>
	
	
			
	
	
	
	<br><br><br>

    <div class="container-fluid">
	<button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal" class="btn btn-dark btn-sm" id="trash"><i class="fa-solid fa-trash-can"></i></button>
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
		        <button type="button" class="btn btn-dark">삭제</button>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
	<button class="btn btn-dark btn-sm" onclick="aaa(); return false;">저장</button>
</div>

</div>   

</form>

		
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	
	</script>
<script src="https://kit.fontawesome.com/0089819b08.js"></script>
</body>
</html>