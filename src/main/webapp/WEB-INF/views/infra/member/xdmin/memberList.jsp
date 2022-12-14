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
       	<link rel="icon" type="image/x-icon" href="/resources/images/favicon.ico" />
       	
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
       	
       	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
       	 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		 <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body>

<!-- start -->
<div class="container-fluid" style="width: 84%">
	<a href="/main"><img src="/resources/images/cou.jpg" style="width: 200px;"></a>
</div>

<div class="container-fluid" style="width: 84%">
	<nav class="navbar navbar-expand-lg" style="background-color: #d4e7f8;">
	    <div class="collapse navbar-collapse" id="navbarNav">
	      <ul class="navbar-nav">
	        <li class="nav-item">
	          <a class="nav-link" href="/member/memberList">????????????</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="/codeGroup/codeGroupList/">??????????????????</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="/code/codeList">????????????</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
</div>

<hr>
<div class="container-fluid" style="width: 84%; font-size: 24px;">?????? ??????</div>
<br>
<div class="container-fluid" style="width: 84%;">
	<form class="row g-3 needs-validation" method="post" action="/member/memberList" name="formList" id="formList">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>">
	<input type="hidden" name="shSeq" value="<c:out value="${ifmmSeq }"/>"/>
	<input type="hidden" name="Sseq" value="<c:out value="${vo.shSeq}"/>"/>
	
	  <div class="col-md-2">
	    <select class="form-select" name="shAdminNy">
	      <option value=""<c:if test="${empty vo.shAdminNy }">selected</c:if>>???????????????</option>
	      <option value="0"<c:if test="${vo.shAdminNy ==0 }">selected</c:if>>N</option>
	      <option value="1"<c:if test="${vo.shAdminNy ==0 }">selected</c:if>>Y</option>
	    </select>
	  </div>
	  
	  <div class="col-md-1">
	    <select class="form-select" name="shDate">
	      <option value=""<c:if test="${empty vo.shDate }">selected</c:if>>??????</option>
	      <option value="1"<c:if test="${vo.shDate ==1 }">selected</c:if>>?????????</option>
	      <option value="2"<c:if test="${vo.shDate ==2 }">selected</c:if>>?????????</option>
	    </select>
	  </div>
	  <div class="col-md-2">
	  	<input type="text" name="startDate" id="startDate" class="date-picker form-select" placeholder="?????????"/>
   	  </div>
   	  <div class="col-md-2">
    	<input type="text" name="endDate" id="endDate" class="date-picker form-select" placeholder="?????????"/>
   	  </div>
   	  <div class="col-md-2">
	    <select class="form-select" name="shOption">
	      <option value=""<c:if test="${empty vo.shOption}">selected</c:if>>????????????</option>
	      <option value="1"<c:if test="${vo.shOption == 1}">selected</c:if>>?????????</option>
	      <option value="2"<c:if test="${vo.shOption == 2}">selected</c:if>>??????</option>
	      <option value="3"<c:if test="${vo.shOption == 3}">selected</c:if>>????????????</option>
	      <option value="4"<c:if test="${vo.shOption == 4}">selected</c:if>>??????</option>
	      <option value="5"<c:if test="${vo.shOption == 5}">selected</c:if>>?????????</option>
	      <option value="6"<c:if test="${vo.shOption == 6}">selected</c:if>>????????????</option>
	      <option value="7"<c:if test="${vo.shOption == 7}">selected</c:if>>??????</option>
	    </select>
	  </div>
	  <div class="col-md-2">
    	<input type="text" class="form-control" id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>" placeholder="?????????">
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
	      <th scope="col">?????????</th>
	      <th scope="col">??????</th>
	      <th scope="col">????????????</th>
	      <th scope="col">???????????????</th>
	      <th scope="col">????????????</th>
	      <th scope="col">??????</th>
	      <th scope="col">?????????</th>
	      <th scope="col">????????????</th>
	      <th scope="col">??????</th>
	      <th scope="col">?????????</th>
	      <th scope="col">?????????</th>
	      <th scope="col">????????????</th>
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
			      <th scope="row"><input class="form-check-input" value="<c:out value="${list.ifmmSeq}"/>" type="checkbox"></th>
			      <td><c:out value="${list.ifmmSeq }"/></td>
			      <td><c:out value="${list.ifmmId }"/></td>
			      <td><a href="javascript:goForm(<c:out value="${list.ifmmSeq }"/>)"><c:out value="${list.ifmmName }"/></a></td>
			      <td><c:out value="${list.ifmmDob }"/></td>
			      <td><c:out value="${list.ifmmAdminNy }"/></td>
			      <td><c:out value="${list.ifmmRating }"/></td>
			      <td><c:out value="${list.ifmmGender }"/></td>
			      <td><c:out value="${list.ifmmEmail }"/></td>
			      <td><c:out value="${list.ifmmTel }"/></td>
			      <td><c:out value="${list.ifmmAddress }"/></td>
			      <td><fmt:formatDate value="${list.ifmmRegDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			      <td><fmt:formatDate value="${list.ifmmModDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			      <td><c:out value="${list.ifmmDelNy }"/></td>
			    </tr>
			   </c:forEach>
			 </c:otherwise>
		  </c:choose>
	  </tbody>
	</table>
</div>

<br><br>

<!--Currency Converter widget by FreeCurrencyRates.com -->

<!-- <div id='gcw_mainFRDl2f9ya' class='gcw_mainFRDl2f9ya'></div>
<a id='gcw_siteFRDl2f9ya' href='https://freecurrencyrates.com/en/'>FreeCurrencyRates.com</a>
<script>function reloadFRDl2f9ya(){ var sc = document.getElementById('scFRDl2f9ya');if (sc) sc.parentNode.removeChild(sc);sc = document.createElement('script');sc.type = 'text/javascript';sc.charset = 'UTF-8';sc.async = true;sc.id='scFRDl2f9ya';sc.src = 'https://freecurrencyrates.com/en/widget-vertical?iso=USD-EUR-GBP-JPY-CNY-XUL&df=2&p=FRDl2f9ya&v=fits&source=fcr&width=245&width_title=0&firstrowvalue=1&thm=666666,000000,333333,333333,FFFFFF,666666,555555,ffffff,ffffff&title=Currency%20Converter&tzo=-540';var div = document.getElementById('gcw_mainFRDl2f9ya');div.parentNode.insertBefore(sc, div);} reloadFRDl2f9ya(); </script> -->
<!-- put custom styles here: .gcw_mainFRDl2f9ya{}, .gcw_headerFRDl2f9ya{}, .gcw_ratesFRDl2f9ya{}, .gcw_sourceFRDl2f9ya{} -->
<!--End of Currency Converter widget by FreeCurrencyRates.com -->

<br><br><br>

<div class="container-fluid" style="width: 84%;">
	<button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal" class="btn btn-dark btn-sm" id="btnDelete"><i class="fa-solid fa-trash-can"></i></button>
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">??????</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        ?????????????????????????
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-dark" data-bs-dismiss="modal">??????</button>
		        <button type="button" class="btn btn-dark" id="btnModalDelete">??????</button>
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


	
<!-- end -->

<script type="text/javascript">
	
	var goUrlList = "/member/memberList";
	var form = $("form[name=formList]");

	goList = function(thisPage){
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action", goUrlList).submit();
	};
	
</script>

<script type="text/javascript">
				/* #-> */
	var goUrlForm = "/member/memberForm";
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