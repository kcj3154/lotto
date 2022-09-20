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
       	<link rel="icon" type="image/x-icon" href="/resources/user/main/image/favicon.ico" />
       	
       	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>

<!-- start -->
<div class="container-fluid" style="width: 84%">
	<a href="/resources/user/main/main.html"><img src="/resources/user/main/image/cou.jpg" style="width: 200px;"></a>
</div>

<div class="container-fluid" style="width: 84%">
	<nav class="navbar navbar-expand-lg" style="background-color: #d4e7f8;">
	    <div class="collapse navbar-collapse" id="navbarNav">
	      <ul class="navbar-nav">
	        <li class="nav-item">
	          <a class="nav-link" href="/memberList/">회원관리</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="/codeGroup/codeGroupList/">코드그룹관리</a>
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
<div class="container-fluid" style="width: 84%; font-size: 24px;">회원 관리</div>
<br>
<div class="container-fluid" style="width: 84%;">
	<form class="row g-3 needs-validation" method="post" action="/codeGroup/codeGroupList" name="formList">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>">
	  <div class="col-md-1">
	    <select class="form-select" name="shUseNy">
	      <option selected disabled value="">관리자여부</option>
	      <option value="0">N</option>
	      <option value="1">Y</option>
	    </select>
	  </div>
	  
	  <div class="col-md-2">
	    <select class="form-select" name="shDate">
	      <option value="">선택</option>
	      <option value="1">등록일</option>
	      <option value="2">수정일</option>
	    </select>
	  </div>
	  <div class="col-md-2">
	  	<input type="text" name="startDate" id="startDate" class="date-picker form-select" placeholder="등록일"/>
   	  </div>
   	  <div class="col-md-2">
    	<input type="text" name="endDate" id="endDate" class="date-picker form-select" placeholder="수정일"/>
   	  </div>
   	  <div class="col-md-2">
	    <select class="form-select" name="shOption">
	      <option value="">검색구분</option>
	      <option value="1">아이디</option>
	      <option value="2">이름</option>
	      <option value="3">회원등급</option>
	      <option value="4">성별</option>
	      <option value="5">이메일</option>
	      <option value="6">휴대전화</option>
	      <option value="7">주소</option>
	    </select>
	  </div>
	  <div class="col-md-2">
    	<input type="text" class="form-control" id="shName" name="shName" value="<c:out value="${vo.shName }"/>" placeholder="검색어">
   	  </div>
     <button class="btn btn-dark btn-sm" style="width: 40px;"><i class="fa-solid fa-magnifying-glass"></i></button>
</div>

<br><br>


<div class="container-fluid" style="width: 84%;">	
	<table class="table table-bordered border-gray">
	  <thead>
	    <tr class="table bg-dark" align="center" style="color: #ffffff;">
	      <th scope="col"><input class="form-check-input" type="checkbox"></th>
	      <th scope="col">#</th>
	      <th scope="col">아이디</th>
	      <th scope="col">이름</th>
	      <th scope="col">관리자여부</th>
	      <th scope="col">회원등급</th>
	      <th scope="col">성별</th>
	      <th scope="col">이메일</th>
	      <th scope="col">휴대전화</th>
	      <th scope="col">주소</th>
	      <th scope="col">등록일</th>
	      <th scope="col">수정일</th>
	      <th scope="col">탈퇴여부</th>
	    </tr>
      </thead>
    <tbody class="table" align="center">
	   	<c:choose>
			<c:when test="${fn:length(list) eq 0}">
				<tr>
					<td class="text-center" colspan="9"></td>
				</tr>
			</c:when>
			<c:otherwise>
			   <c:forEach items="${list}" var="list" varStatus="status">
			    <tr>
			      <th scope="row"><input class="form-check-input" type="checkbox"></th>
			      <td><c:out value="${list.seq }"/></td>
			      <td><c:out value="${list.id }"/></td>
			      <td><c:out value="${list.name }"/></td>
			      <td><c:out value="${list.gender }"/></td>
			    </tr>
			   </c:forEach>
			 </c:otherwise>
		  </c:choose>
	   
	  </tbody>
	</table>
</div>


	    

	 <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Coupang</p></div>
        </footer>


	
<!-- end -->


 
	
	
<script src="https://kit.fontawesome.com/0089819b08.js" crossorigin="anonymous"></script></body>
</html>