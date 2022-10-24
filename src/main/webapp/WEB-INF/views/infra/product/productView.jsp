<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>쿠팡 | 아이시스 8.0 생수</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/images/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/resources/user/main/template/css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #ffffff;">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/main"><img src="/resources/images/cou.jpg" style="width: 150px;"></a>
        </nav>
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                	<p style="font-size: 12px;"><a class="link-dark" href="/main">쿠팡 홈</a>  
                	<input type="hidden" name="productSeq" value="<c:out value="${item.productSeq }"/>">
                		<c:forEach items="${list}" var="list" varStatus="status">
	                		<c:if test ="${list.productSeq eq item.productSeq}">
		                		<div class="col-md-4">
		                        	<img class="card-img-top" src="<c:out value="${list.path}"/><c:out value="${list.uuidName}"/>">
		                        </div>
	                        </c:if>
                        </c:forEach>
                         <div class="col-md-8">
                         	<h5><strong><c:out value="${item.productName }"/></strong></h5>
	                         	<div class="d-flex justify-content small text-warning mb-2">
	 		                   		<div class="bi-star-fill"></div> 
	 		                        <div class="bi-star-fill"></div> 
			                        <div class="bi-star-fill"></div> 
			                        <div class="bi-star-fill"></div> 
			                        <div class="bi-star-fill"></div> 
	                           	</div>
	                           	<span class="instant-discount-rate" style="font-size: 14px; color: #999999"><c:out value="${item.productDiscountPercent }"/>%</span> <del class="base-price" style="font-size: 12px; color: #bcbcbc"><fmt:formatNumber value="${item.productOriginalPrice }" pattern="##,###"/></del>
	                           	<br><strong class="total-price" style="color: #af1010;"><fmt:formatNumber value="${item.productDiscountPrice }" pattern="##,###"/></strong>원
	                           	<hr><c:out value="${item.deliveryFee }"/>
	                           		<br>
	 									<strong>&#9702; <span style="font-size: 12px; color: #1a9e30" id="arrivalDate" class="arrivalDate"></span></strong> 
										<span style="font-size: 12px; color: black;">도착 보장</span>
								</p>
								<hr>
								<p style="font-size: 11px;">&bull; 원산지: <c:out value="${item.productCountryOfOrigin }"/></p> 
	                        	<p style="font-size: 11px;">&bull; 쿠팡상품번호: <c:out value="${item.productNumber }"/></p> 
	                        	<hr> 
	                    
	                           	
	<!--                     <div class="col-md-4"><img class="card-img-top mb-5 mb-md-0" src="/resources/uploaded/product/icis.jpg" alt="..." /></div> -->
	<!--                     <div class="col-md-8"> -->
	<!--                         <h5><strong>아이시스 8.0 생수 2L, 24개</strong></h5> -->
	<!--                         	<div class="d-flex justify-content small text-warning mb-2"> -->
	<!-- 		                   		<div class="bi-star-fill"></div> -->
	<!-- 		                        <div class="bi-star-fill"></div> -->
	<!-- 		                        <div class="bi-star-fill"></div> -->
	<!-- 		                        <div class="bi-star-fill"></div> -->
	<!-- 		                        <div class="bi-star-fill"></div> -->
	<!--                            	</div> -->
	<!--                         <hr> -->
	<!--                         <span class="instant-discount-rate" style="font-size: 14px; color: #999999">5%</span> <del class="base-price" style="font-size: 12px; color: #bcbcbc"> 18,200 </del> -->
	<!--                                     <br> <strong class="total-price" style="color: #af1010;">17,140</strong>원 -->
	<!--                                     <hr>무료배송 -->
	<!--                         <p class="m-0" style="font-size: 12px; color: #1a9e30"> -->
	<!-- 									<strong>&#9702; <span id="arrivalDate" class="arrivalDate"></span></strong> -->
	<!-- 									<span style="color:black;">도착 보장</span> -->
	<!-- 						</p> -->
	<!--                         <hr> -->
	<!--                         <p style="font-size: 11px;">&bull; 원산지: 국내산</p> -->
	<!--                         <p style="font-size: 11px;">&bull; 쿠팡상품번호: 6530515742 - 14502777312</p> -->
	<!--                         <hr> -->
		                        <p class="lead"></p>
		                        <div class="d-flex">
		                        	<input type='hidden' name="productSeq">
		                            <input class="form-control text-center me-3" id="inputQuantity" type="number" min="1" max="100" step="1" value="1" style="max-width: 4rem" />
		                            <a href="javascript:goForm(<c:out value="${item.productSeq }"/>)"><button class="btn btn-outline-dark flex-shrink-0" type="button"><i class="bi-cart-fill me-1"></i>구매하기</button></a>
		                    	</div>
	                		</div>
            </div>
        </section>
        <!-- Related items section-->
        <form name="form" method="get" class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">다른 상품들</h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="/resources/uploaded/product/handCream.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">카밀 핸드크림 133ml 3p</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                   <strong style="color: #af1010">10,000원</strong>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">상품 보러가기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="/resources/uploaded/product/mask.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">코멧 일회용 마스크</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div> 
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">27,900원</span>
                                    <strong style="color: #af1010">10,990원</strong>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">상품 보러가기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="/resources/uploaded/product/toothbrush.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">필립스 전동칫솔 2p + 무선충전기</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">128,000원</span>
                                    <strong style="color: #af1010">69,000원</strong>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">상품 보러가기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                        	<!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="/resources/uploaded/product/sparklingWater.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">씨그램 라임향 탄산수 450ml 20개</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">12,000원</span>
                                    <strong style="color: #af1010">11,700원</strong>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">상품 보러가기</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        
        
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Coupang</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
<!--         <script src="../../main/template/js/scripts.js"></script> -->


		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<script type="text/javascript">
	
		const arrivalDate = document.querySelector("#arrivalDate");
		const today = new Date();
		const tomorrow = new Date(today.setDate(today.getDate() + 1));
		const month = tomorrow.getMonth() + 1;
		const date = tomorrow.getDate();
		const day = tomorrow.getDay();
		const weekDay = ["일","월","화","수","목","금","토"];
		
		arrivalDate.innerText = "내일(" + weekDay[day] + ") " + String(month).padStart(2,"0") + "/" + String(date).padStart(2,"0");
		
		
		
		var goUrlView = "/productOrder";
		var form = $("form[name=form]");
		var seq = $("input:hidden[name=productSeq]");
		
 		goForm = function(keyValue) {
 			
 		seq.val(keyValue);
 				form.attr("action", goUrlView).submit();
 		};
		
	</script>
	
	
	
    </body>
</html>
