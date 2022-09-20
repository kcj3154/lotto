<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>

<jsp:useBean id="CodeGroupServiceImpl" class="com.mayfw.infra.modules.codegroup.CodeGroupServiceImpl"/>

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
    	
    	#btnDelete {
    		float: left;
    	}
    	
    	#btnForm {
    		float: right;
    	}
    	
    </style>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
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
<div class="container-fluid" style="width: 84%; font-size: 24px;">코드그룹 관리</div>
<br>
<div class="container-fluid" style="width: 84%;">
	<form class="row g-3 needs-validation" method="post" action="/codeGroup/codeGroupList" name="formList" id="formList">
	<input type="hidden" name="shSeq" value="<c:out value="${vo.shSeq}"/>"/>
	<input type="hidden" name="mainKey">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>">
	<input type="hidden" name="checkboxSeqArray" >
	  <div class="col-md-1">
	    <select class="form-select" name="shUseNy">
	      <option value="" <c:if test="${empty vo.shUseNy }">selected</c:if>>사용여부</option>
	      <option value="0" <c:if test="${vo.shUseNy ==0 }">selected</c:if>>N</option>
	      <option value="1" <c:if test="${vo.shUseNy ==1 }">selected</c:if>>Y</option>
	    </select>
	  </div>
	  <div class="col-md-2">
	    <select class="form-select" name="shDate">
	      <option value="">선택</option>
	      <option value="5" <c:if test="${vo.shDate ==5 }">selected</c:if>>등록일</option>
	      <option value="6" <c:if test="${vo.shDate ==6 }">selected</c:if>>수정일</option>
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
	      <option value=""<c:if test="${empty vo.shId}">selected</c:if>>검색구분</option>
	      <option value="1"<c:if test="${vo.shId == 1}">selected</c:if>>코드그룹 코드</option>
	      <option value="2"<c:if test="${vo.shId == 2}">selected</c:if>>코드그룹 이름 (한글)</option>
	      <option value="3"<c:if test="${vo.shId == 3}">selected</c:if>>코드그룹 이름 (영문)</option>
	      <option value="4"<c:if test="${vo.shId == 4}">selected</c:if>>코드그룹 코드갯수</option>
	    </select>
	  </div>
	  <div class="col-md-2">
    	<input type="text" class="form-control" id="shName" name="shName" value="<c:out value="${vo.shName }"/>" placeholder="검색어">
   	  </div>
     <button class="btn btn-dark btn-sm" style="width: 40px;"><i class="fa-solid fa-magnifying-glass"></i></button>
     <button class="btn btn-danger btn-sm" style="width: 40px;"><i class="fa-solid fa-rotate-right"></i></button>
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
				 <%-- <tr onclick="location.href='/codeGroup/codeGroupView?shSeq=<c:out value="${list.seq }"/>'"> --%>
			      <th scope="row"><input class="form-check-input" value="<c:out value="${list.seq}"/>" type="checkbox"></th>
			      <td><c:out value="${list.seq }"/></td>
			      <td><c:out value="${list.seq }"/></td>
			      <td><a href="/codeGroup/codeGroupForm?shSeq=<c:out value="${list.seq}"/>"><c:out value="${list.codeGroup}"/></a></td>
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

<!-- test -->

<br><br><br>

<div class="container-fluid" style="width: 84%;">
	<button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal" class="btn btn-dark btn-sm" id="btnDelete"><i class="fa-solid fa-trash-can"></i></button>
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
		        <button type="button" class="btn btn-dark" id="btnModalDelete">삭제</button>
		      </div>
		    </div>
		  </div>
		</div>
	<button type="button" class="btn btn-dark btn-sm" id="btnForm"><i class="fa-solid fa-plus"></i></button>
</div>

<!-- pagination s -->
<%@include file="../../../common/xdmin/includeV1/pagination.jsp"%>
<!-- pagination e -->

</form>




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
	
	var goUrlList = "/codeGroup/codeGroupList";
	var form = $("form[name=formList]");

	goList = function(thisPage){
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action", goUrlList).submit();
	};
	
</script>

<script type="text/javascript">
				/* #-> */
	var goUrlForm = "/codeGroup/codeGroupForm";
	var seq = $("input:hidden[name=shSeq]");
	
	var form = $("form[name=formList]");
	
	$('#btnForm').on("click", function() {
		form.attr("action", goUrlForm).submit();              
	});
	
	 goForm = function(keyValue) {
		/* if(keyValue != 0) seq.val(btoa(keyValue)); */
		seq.val(keyValue);
		form.attr("action", goUrlForm).submit();
	}; 
	
	

</script>

<script src="https://kit.fontawesome.com/0089819b08.js"></script>
</body>
</html>

