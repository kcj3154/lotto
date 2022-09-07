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
        <title>CODE</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/user/image/favicon.ico" />
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>

<!-- start -->
<div class="container-fluid" style="width: 84%">
	<a href="../user/main/main.html"><img src="/resources/user/image/cou.jpg" style="width: 200px;"></a>
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
<form method="post" action="/code/codeInst">
<div class="container-fluid" style="width: 84%; font-size: 24px;">코드 관리</div>
<br>
<div class="container-fluid" style="width: 84%;"><br>
	<div class="row">
		<div class="col-6">
			<label for="reserveVarchar2" class="form-Label">코드그룹 이름(한글)</label>
			<select class="form-select" name="ccg_seq">
			<c:forEach items="${list}" var="list" varStatus="status">
				<option value="<c:out value="${list.seq }"/>"><c:out value="${list.codeGroup }"/></option>
			</c:forEach>
			</select>
	</div>
	<br>
	<div class="row">
		<div class="col-6">
			<label for="code" class="form-label">코드</label>
  			<input type="text" class="form-control" value="자동생성" readonly>
		</div>
		<div class="col-6">
			<label for="codeAnother" class="form-label">코드(Another)</label>
  			<input type="text" class="form-control">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-6">
			<label for="codeNameKr" class="form-Label">코드 이름(한글)</label>
			<input type="text" name="codeName" class="form-control">
		</div>
		<div class="col-6">
			<label for="codeNameEng" class="form-Label">코드 이름(영문)</label>
			<input type="text" name="codeNameEn" class="form-control">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-6">
			<label for="useNy" class="form-Label">사용여부</label>
			<select class="form-select" name="useNy">
				<option value="0">N</option>
				<option value="1">Y</option>
			</select>
		</div>
		<div class="col-6">
			<label for="seq" class="form-Label">순서</label>
			<input type="text" class="form-control">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-6">
			<label for="explanation" class="form-Label">설명</label>
			<input type="text" class="form-control">
		</div>
		<div class="col-6">
			<label for="reserveVarchar2" class="form-Label">삭제여부</label>
			<select class="form-select">
				<option>N</option>
				<option>Y</option>
			</select>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-6">
			<label for="reserveVarchar1" class="form-Label">예비1 (varchar type)</label>
			<input type="text" class="form-control">
		</div>
		<div class="col-6">
			<label for="reserveVarchar2" class="form-Label">예비2 (varchar type)</label>
			<input type="text" class="form-control">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-6">
			<label for="reserveVarchar3" class="form-Label">예비3(varchar type)</label>
			<input type="text" class="form-control">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-6">
			<label for="reserveInt1" class="form-Label">예비1 (int type)</label>
			<input type="text" class="form-control">
		</div>
		<div class="col-6">
			<label for="reserveInt2" class="form-Label">예비2 (int type)</label>
			<input type="text" class="form-control">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-6">
			<label for="reserveInt3" class="form-Label">예비3(int type)</label>
			<input type="text" class="form-control">
		</div>
	</div>
	<br><br><br>
	<a href="/code/codeRegForm"><button class="btn btn-dark btn-sm">저장</button></a>
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

<script src="https://kit.fontawesome.com/0089819b08.js" crossorigin="anonymous"></script>
</body>
</html>