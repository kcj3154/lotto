<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>




<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품등록</title>

<link rel="icon" type="image/x-icon" href="/resources/images/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/resources/user/main/template/css/styles.css" rel="stylesheet" />

<%@include file="./include/cssLinks.jsp"%>

<style type="text/css">
.preview{
  width: 100px;
}
.preview2{
  width: 100px;
}
#addTr tr td, #addTr3 tr td, #singleTbody tr td {
	height: 40px;
}
.ui-autocomplete {
	max-height: 150px;
	overflow-y: scroll;
	overflow-x: hidden;
}
</style>

<style type="text/css">
@import url(//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css);
}
@import url(https://fonts.googleapis.com/css?family=Titillium+Web:300);
.fa-2x {
font-size: 2em;
}
.fa {
position: relative;
display: table-cell;
width: 60px;
height: 36px;
text-align: center;
vertical-align: middle;
font-size:20px;
}
.main-menu:hover,nav.main-menu.expanded {
width:250px;
overflow:visible;
}
.main-menu {
background:#212121;
border-right:1px solid #e5e5e5;
position:absolute;
top:0;
bottom:0;
height:100%;
left:0;
width:60px;
overflow:hidden;
-webkit-transition:width .05s linear;
transition:width .05s linear;
-webkit-transform:translateZ(0) scale(1,1);
z-index:1000;
}
.main-menu>ul {
margin:7px 0;
}
.main-menu li {
position:relative;
display:block;
width:250px;
}
.main-menu li>a {
position:relative;
display:table;
border-collapse:collapse;
border-spacing:0;
color:#999;
 font-family: arial;
font-size: 14px;
text-decoration:none;
-webkit-transform:translateZ(0) scale(1,1);
-webkit-transition:all .1s linear;
transition:all .1s linear;
  
}
.main-menu .nav-icon {
position:relative;
display:table-cell;
width:60px;
height:36px;
text-align:center;
vertical-align:middle;
font-size:18px;
}
.main-menu .nav-text {
position:relative;
display:table-cell;
vertical-align:middle;
width:190px;
  font-family: 'Titillium Web', sans-serif;
}
.main-menu>ul.logout {
position:absolute;
left:0;
bottom:0;
}
.no-touch .scrollable.hover {
overflow-y:hidden;
}
.no-touch .scrollable.hover:hover {
overflow-y:auto;
overflow:visible;
}
a:hover,a:focus {
text-decoration:none;
}
nav {
-webkit-user-select:none;
-moz-user-select:none;
-ms-user-select:none;
-o-user-select:none;
user-select:none;
}
nav ul,nav li {
outline:0;
margin:0;
padding:0;
}
.main-menu li:hover>a,nav.main-menu li.active>a,.dropdown-menu>li>a:hover,.dropdown-menu>li>a:focus,.dropdown-menu>.active>a,.dropdown-menu>.active>a:hover,.dropdown-menu>.active>a:focus,.no-touch .dashboard-page nav.dashboard-menu ul li:hover a,.dashboard-page nav.dashboard-menu ul li.active a {
color:#fff;
background-color:#5fa2db;
}
.area {
float: left;
background: #e2e2e2;
width: 100%;
height: 100%;
}
@font-face {
  font-family: 'Titillium Web';
  font-style: normal;
  font-weight: 300;
  src: local('Titillium WebLight'), local('TitilliumWeb-Light'), url(http://themes.googleusercontent.com/static/fonts/titilliumweb/v2/anMUvcNT0H1YN4FII8wpr24bNCNEoFTpS2BTjF6FB5E.woff) format('woff');
}
</style>

</head>
<body>


	<div class="container-fluid">
		<form id="form" method="post" enctype="multipart/form-data">
			<%@include file="./include/coupangTopBar.jsp"%>

			<section class="main-content">
				<article class="p-4">
					<h1 class="fw-bold mb-3">상품등록</h1>
					<div class="row border p-3 mb-2">
						<div class="col">
							<h6 class="fw-bold" class="fw-bold">상품명</h6>
							<input id="productName" name="productName" type="text" class="form-control" placeholder="상품명 입력">
						</div>
					</div>
					<div class="row border p-3 mb-2">
					<div class="row border p-3 mb-2">
						<div class="col">
							<h6 class="fw-bold">옵션</h6>
							<div id="optionPluralForm">
								<table id="optionPluralTable" class="table table-borderless">
									<tr>
										<td style="width: 100px; vertical-align: middle;">가격</td>
										<td>
											<div class="input-group" style="width:200px;">
												<span class="input-group-text" style="border-right: none;">￦</span>
												<input id="productOriginalPrice" name="trpdPrice" type="text" style="border-left: none;" class="form-control text-end">
											</div>
										</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					</div>
					<div class="row border p-3 mb-2">
						<div class="col">
							<h6 class="fw-bold">상품 이미지</h6>
							<div id="descImageForm">
								<div class="upload__box border">
									<div class="upload__btn-box text-center">
										<label class="upload__btn">
											<p>이미지 등록</p>
										</label>
										<input type="file" name="uploadedImage" required multiple />
										<button>dd</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br><br><br>
					<div class="row">
						<div class="col d-flex justify-content-center">
							<button id="btnSubmit" name="btnSubmit" type="submit" class="btn btn-outline-dark ">등록</button>
							<a href="/main" type="button" class="btn btn-outline-danger ">뒤로</a>
						</div>
					</div>
					
				</article>
			</section>

		</form>
	</div>
	
	
	
</section>
		<br><br><br>
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
		
	 <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Coupang</p></div>
     </footer>
	
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<script type="text/javascript">
			var goUrlInst = "productInst"; 			/* #-> */
			
			var seq = $("input:hidden[name=productSeq]");				/* #-> */
			var form = $("form[name=form]")
			var formVo = $("form[name=formVo]");
			
			$('#btnSubmit').on("click", function() {
				if(seq.val() == "0" || seq.val() == "") {
					form.attr("action", goUrlInst).submit();
				}
				
				$("#form").attr("action", "productInst");
				$("#form").submit();
				
				alert("상품 '" + $("#productName").val() + "'을 등록하였습니다.");
			});
			
			
	</script>
	
	<script type="text/javascript">
		logOut = function() {
			$.ajax({
				async : true,
				cache : false,
				type : "post",
				url : "/member/logOutProc",
				success : function(response) {
					if (response.rt == "success") {
						location.href = "/";
					} else {
						alert("로그아웃 실패");
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					alert("ajaxUpdate " + jqXHR.textStatus + " : "
							+ jqXHR.errorThrown);
				}
			});
		}
		
		
 </script>
	

</body>
</html>



