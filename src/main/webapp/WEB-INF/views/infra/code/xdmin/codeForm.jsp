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
        <link rel="icon" type="image/x-icon" href="/resources/user/main/image/favicon.ico" />
    	
    	 <!--  css  -->
    	<style type="text/css">
    	
    	
    	#trash {
    		float: right;
    	}
    	
    	
    	</style>
    	
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body>

<!-- start -->
<div class="container-fluid" style="width: 84%">
	<a href="/main"><img src="/resources/user/main/image/cou.jpg" style="width: 200px;"></a>
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
<%-- 			<input type="text" id="codeGroup" name="codeGroup" class="form-control" value="<c:out value="${item.codeGroup}"/>" readonly> --%>
		</div>
		<div class="col-6">
			<label for="code" class="">코드그룹 코드</label>
  			<input type="text" id="ccd_seq" name="seq" class="form-control" value="<c:out value="${item.seq}"/>" readonly>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-6">
			<label for="codeNameKr" class="form-Label">코드 이름(한글)</label>
			<input type="text" name="codeName" class="form-control" value="<c:out value="${item.codeName}"/>">
		</div>
		<div class="col-6">
			<label for="codeNameEng" class="form-Label">코드 이름(영문)</label>
			<input type="text" name="codeNameEn" class="form-control" value="<c:out value="${item.codeNameEn}"/>">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-6">
			<label for="useNy" class="form-Label">사용여부</label>
			<select class="form-select" name="useNy" value="<c:out value="${item.useNy}"/>">
				<option value="0">N</option>
				<option value="1">Y</option>
			</select>
		</div>
		<div class="col-6">
			<label for="seq" class="form-Label">순서</label>
			<input type="text" class="form-control" value="<c:out value="${item.sort}"/>">
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-6">
			<label for="explanation" class="form-Label">설명</label>
			<input type="text" class="form-control" readonly>
		</div>
		<div class="col-6">
			<label for="reserveVarchar2" class="form-Label">삭제여부</label>
			<select class="form-select" name="delNy" value="<c:out value="${item.delNy}"/>">
				<option value="0">N</option>
				<option value="1">Y</option>
			</select>
		</div>
	</div>
	<br>
	
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
	<button type="button" class="btn btn-dark btn-sm" id="btnSave">저장</button>
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