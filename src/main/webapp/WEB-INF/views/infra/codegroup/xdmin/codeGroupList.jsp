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
       	<link rel="icon" type="image/x-icon" href="/resources/user/image/favicon.ico" />
       	
       	<!-- Datepicker -->
   		 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.js"></script>
    	 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js"></script>
    	 <link rel="stylesheet" type="text/css" media="screen" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/base/jquery-ui.css">
		 <script type="text/javascript">
         $(function() {
            $('.date-picker').datepicker( {
            changeMonth: true,
            changeYear: true,
            changeDay: true,
            showButtonPanel: true,
            dateFormat: 'yy-mm-dd',
            onClose: function(dateText, inst) { 
                $(this).datepicker('setDate', new Date(inst.selectedYear, inst.selectedMonth, inst.selectedDay));
            }
            });
         });
    </script>
		

    <!-- css -->
    <style type="text/css">
    	#page {
    		float: right;
    		position: relative;
    		left: -42%;
    	}
    	
    	#trash {
    		float: left;
    	}
    	
    	#plus, #change {
    		float: right;
    	}
    </style>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>

<!-- start -->
<div class="container-fluid" style="width: 84%">
	<a href="/resources/user/main/main.html"><img src="/resources/user/image/cou.jpg" style="width: 200px;"></a>
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
<div class="container-fluid" style="width: 84%; font-size: 24px;">코드그룹 관리</div>
<br>
<div class="container-fluid" style="width: 84%;">
	<form class="row g-3 needs-validation" method="post" action="/codeGroup/codeGroupList">
	  <div class="col-md-1">
	    <select class="form-select" name="shUseNy">
	      <option selected disabled value="">사용여부</option>
	      <option value="0">N</option>
	      <option value="1">Y</option>
	    </select>
	  </div>
	  <div class="col-md-2">
	    <select class="form-select" name="shDate">
	      <option value="">선택</option>
	      <option value="5">등록일</option>
	      <option value="6">수정일</option>
	    </select>
	  </div>
	  <div class="col-md-2">
	  	<input type="text" name="startDate" id="startDate" class="date-picker form-select" placeholder="시작일"/>
   	  </div>
   	  <div class="col-md-2">
    	<input type="text" name="endDate" id="endDate" class="date-picker form-select" placeholder="종료일"/>
   	  </div>
   	  <div class="col-md-2">
	    <select class="form-select" name="shId">
	      <option selected disabled value="">검색구분</option>
	      <option value="1"><c:if test="${vo.shId}">selected</c:if>코드그룹 코드</option>
	      <option value="2"><c:if test="${vo.shId}">selected</c:if>코드그룹 이름 (한글)</option>
	      <option value="3"><c:if test="${vo.shId}">selected</c:if>코드그룹 이름 (영문)</option>
	      <option value="4"><c:if test="${vo.shId}">selected</c:if>코드그룹 코드갯수</option>
	    </select>
	  </div>
	  <div class="col-md-2">
    	<input type="text" class="form-control" id="shName" name="shName" value="<c:out value="${vo.shName }"/>" placeholder="검색어">
   	  </div>
     <button class="btn btn-dark btn-sm" style="width: 40px;"><i class="fa-solid fa-magnifying-glass"></i></button>
	</form>
</div>

<br><br>


<div class="container-fluid" style="width: 84%;">	
	<table class="table table-bordered border-gray">
	  <thead>
	    <tr class="table bg-dark" align="center" style="color: #ffffff;">
	      <th scope="col"><input class="form-check-input" type="checkbox"></th>
	      <th scope="col">#</th>
	      <th scope="col">코드그룹 코드</th>
	      <th scope="col">코드그룹 이름 (한글)</th>
	      <th scope="col">코드그룹 이름 (영문)</th>
	      <th scope="col">코드갯수</th>
	      <th scope="col">등록일</th>
	      <th scope="col">수정일</th>
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
			      <td><c:out value="${list.seq }"/></td>
			      <td><c:out value="${list.codeGroup }"/></td>
			      <td><c:out value="${list.codeGroupEn }"/></td>
			      <td><c:out value="${list.cnt }"/></td>
			      <td><fmt:formatDate value="${list.reg_date }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			      <td><fmt:formatDate value="${list.mod_date }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			    </tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	  </tbody>
	</table>
</div>

<br><br>

<div class="container-fluid" style="width: 84%;">
	<nav aria-label="Page navigation example" id="page">
	  <ul class="pagination">
	    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
	    <li class="page-item"><a class="page-link" href="#">1</a></li>
	    <li class="page-item"><a class="page-link" href="#">2</a></li>
	    <li class="page-item"><a class="page-link" href="#">3</a></li>
	    <li class="page-item"><a class="page-link" href="#">Next</a></li>
	  </ul>
	</nav>
</div>

<br><br><br>

<div class="container-fluid" style="width: 84%;">
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
	<a href="/codeGroup/codeGroupRegForm"><button type="button" class="btn btn-dark btn-sm" id="plus"><i class="fa-solid fa-plus"></i></button></a>
	<button type="button" class="btn btn-dark btn-sm" id="change">수정</button>
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


<script src="https://kit.fontawesome.com/0089819b08.js" crossorigin="anonymous"></script>
</body>
</html>

