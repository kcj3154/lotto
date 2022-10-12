<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>쿠팡</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/user/main/template/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/resources/user/main/template/css/styles.css" rel="stylesheet" />
    </head>
    <body>
    <%@include file="./include/coupangTopBar.jsp"%>
    <%@include file="./include/coupangSearch.jsp"%>
        <!-- Navigation-->
<!--         <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #ffffff;"> -->
<!--             <div class="container px-4 px-lg-5"> -->
<!--                 <a class="navbar-brand" href="#!"><img src="/resources/user/main/image/cou.jpg" style="width: 150px;"></a> -->
<!--                 <input class="form-control" type="text" placeholder="상품을 검색해보세요!" style="width: 800px;"> -->
<!-- 					<button id="btnSearch" name="btnSearch" class="btn btn-outline-secondary" type="button"> -->
<!-- 						<i class="bi bi-search"></i> -->
<!-- 					</button> -->
<!--                     <a class="nav-link link-dark" href="/member/login" style="height: 50px; width: 80px;"><p style="font-size: 12px;">로그인</p></a> -->
<!--                     <a class="nav-link link-dark" href="/member/signupForm" style="height: 50px; width: 80px;"><p style="font-size: 12px;">회원가입</p></a> -->
<!--                 <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button> -->
<!--                 <div class="collapse navbar-collapse" id="navbarSupportedContent"> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </nav> -->
        
        
        <!-- Header-->
        <header class="py-4">
            <div class="container">
               <a href="/resources/user/main/product/bibigoSamgyetang/productView.html"><img src="/resources/user/main/image/bibigo.jpg" style="width: 100%"></a>
            </div>
        </header>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="/resources/user/main/image/icis.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4" > 
                                <div class="text-center">
                                    <!-- Product name-->
                                    <p class="fw-bolder" style="font-size: 16px;">아이시스 8.0 생수 2L, 24개</p>
                                    <!-- Product price-->
                                    <span class="instant-discount-rate" style="font-size: 14px; color: #999999">5%</span> <del class="base-price" style="font-size: 12px; color: #bcbcbc"> 18,200 </del>
                                    <br> <strong class="price-value">17,140</strong>원
                                </div>
                            </div>
                            <!-- Product reviews-->
                         	<div class="d-flex justify-content-center small text-warning mb-2">
		                   		<div class="bi-star-fill"></div>
		                        <div class="bi-star-fill"></div>
		                        <div class="bi-star-fill"></div>
		                        <div class="bi-star-fill"></div>
		                        <div class="bi-star-fill"></div>
                           	</div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/member/productView">상품 보러가기</a></div>
                            </div>
                        </div>
                    </div>
<!--                     <div class="col mb-5"> -->
<!--                         <div class="card h-100"> -->
<!--                             Product image -->
<!--                             <img class="card-img-top" src="/resources/user/main/image/mask.jpg" alt="..." /> -->
<!--                              Product details -->
<!--                             <div class="card-body p-4">  -->
<!--                                 <div class="text-center"> -->
<!--                                     Product name -->
<!--                                     <p class="fw-bolder" style="font-size: 16px;">코멧 일회용 마스크 (100개입)</p> -->
<!--                                     Product price -->
<!--                                     <span class="instant-discount-rate" style="font-size: 14px; color: #999999">60%</span> <del class="base-price" style="font-size: 12px; color: #bcbcbc"> 27,900 </del> -->
<!--                                     <br> <strong class="price-value">10,990</strong>원 -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             Product reviews -->
<!--                          	<div class="d-flex justify-content-center small text-warning mb-2"> -->
<!-- 		                   		<div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!--                            	</div> -->
<!--                             Product actions -->
<!--                             <div class="card-footer p-4 pt-0 border-top-0 bg-transparent"> -->
<!--                                 <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/resources/user/main/product/mask/productView.html">상품 보러가기</a></div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col mb-5"> -->
<!--                         <div class="card h-100"> -->
<!--                             Product image -->
<!--                             <img class="card-img-top" src="/resources/user/main/image/lego.jpg" alt="..." /> -->
<!--                             Product details -->
<!--                             <div class="card-body p-4">  -->
<!--                                 <div class="text-center"> -->
<!--                                     Product name -->
<!--                                     <p class="fw-bolder" style="font-size: 16px;">레고 시티여객 열차</p> -->
<!--                                     Product price -->
<!--                                     <br> <strong class="price-value">16,490</strong>원 -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             Product reviews -->
<!--                          	<div class="d-flex justify-content-center small text-warning mb-2"> -->
<!-- 		                   		<div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star"></div> -->
<!--                            	</div> -->
<!--                             Product actions -->
<!--                             <div class="card-footer p-4 pt-0 border-top-0 bg-transparent"> -->
<!--                                 <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/resources/user/main/product/lego/productView.html">상품 보러가기</a></div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col mb-5"> -->
<!--                         <div class="card h-100"> -->
<!--                             Product image -->
<!--                             <img class="card-img-top" src="/resources/user/main/image/cap.jpg" alt="..." /> -->
<!--                             Product details -->
<!--                             <div class="card-body p-4">  -->
<!--                                 <div class="text-center"> -->
<!--                                     Product name -->
<!--                                     <p class="fw-bolder" style="font-size: 16px;">[1+1] 나이키 스우시 볼캡</p> -->
<!--                                     Product price -->
<!--                                     <span class="instant-discount-rate" style="font-size: 14px; color: #999999">22%</span> <del class="base-price" style="font-size: 12px; color: #bcbcbc"> 38,600 </del> -->
<!--                                     <br> <strong class="price-value">29,990</strong>원 -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             Product reviews -->
<!--                          	<div class="d-flex justify-content-center small text-warning mb-2"> -->
<!-- 		                   		<div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!--                            	</div> -->
<!--                             Product actions -->
<!--                             <div class="card-footer p-4 pt-0 border-top-0 bg-transparent"> -->
<!--                                 <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/resources/user/main/product/cap/productView.html">상품 보러가기</a></div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col mb-5"> -->
<!--                         <div class="card h-100"> -->
<!--                             Product image -->
<!--                             <img class="card-img-top" src="/resources/user/main/image/toothbrush.jpg" alt="..." /> -->
<!--                             Product details -->
<!--                             <div class="card-body p-4">  -->
<!--                                 <div class="text-center"> -->
<!--                                     Product name -->
<!--                                     <p class="fw-bolder" style="font-size: 16px;">필립스 전동칫솔 2p + 무선충전기</p> -->
<!--                                     Product price -->
<!--                                     <span class="instant-discount-rate" style="font-size: 14px; color: #999999">46%</span> <del class="base-price" style="font-size: 12px; color: #bcbcbc"> 128,000 </del> -->
<!--                                     <br> <strong class="price-value">69,000</strong>원 -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             Product reviews -->
<!--                          	<div class="d-flex justify-content-center small text-warning mb-2"> -->
<!-- 		                   		<div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!--                            	</div> -->
<!--                             Product actions -->
<!--                             <div class="card-footer p-4 pt-0 border-top-0 bg-transparent"> -->
<!--                                 <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/resources/user/main/product/toothbrush/productView.html">상품 보러가기</a></div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col mb-5"> -->
<!--                         <div class="card h-100"> -->
<!--                             Product image -->
<!--                             <img class="card-img-top" src="/resources/user/main/image/airCleaner.jpg" alt="..." /> -->
<!--                             Product details -->
<!--                             <div class="card-body p-4">  -->
<!--                                 <div class="text-center"> -->
<!--                                     Product name -->
<!--                                     <p class="fw-bolder" style="font-size: 16px;">LG전자 공기청정기 38.9m<sup>2</sup></p> -->
<!--                                     Product price -->
<!--                                     <span class="instant-discount-rate" style="font-size: 14px; color: #999999">2%</span> <del class="base-price" style="font-size: 12px; color: #bcbcbc"> 234,000 </del> -->
<!--                                     <br> <strong class="price-value">229,000</strong>원 -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             Product reviews -->
<!--                          	<div class="d-flex justify-content-center small text-warning mb-2"> -->
<!-- 		                   		<div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!--                            	</div> -->
<!--                             Product actions -->
<!--                             <div class="card-footer p-4 pt-0 border-top-0 bg-transparent"> -->
<!--                                 <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/resources/user/main/product/airCleaner/productView.html">상품 보러가기</a></div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col mb-5"> -->
<!--                         <div class="card h-100"> -->
<!--                             Product image -->
<!--                             <img class="card-img-top" src="/resources/user/main/image/handCream.jpg" alt="..." /> -->
<!--                             Product details -->
<!--                            <div class="card-body p-4">  -->
<!--                                 <div class="text-center"> -->
<!--                                     Product name -->
<!--                                     <p class="fw-bolder" style="font-size: 16px;">카밀 핸드크림 133ml 3p</p> -->
<!--                                     Product price -->
<!--                                     <br> <strong class="price-value">10,000</strong>원 -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             Product reviews -->
<!--                          	<div class="d-flex justify-content-center small text-warning mb-2"> -->
<!-- 		                   		<div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!--                            	</div> -->
<!--                             Product actions -->
<!--                             <div class="card-footer p-4 pt-0 border-top-0 bg-transparent"> -->
<!--                                 <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/resources/user/main/product/handCream/productView.html">상품 보러가기</a></div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col mb-5"> -->
<!--                         <div class="card h-100"> -->
<!--                             Product image -->
<!--                             <img class="card-img-top" src="/resources/user/main/image/sparklingWater.jpg" alt="..." /> -->
<!--                             Product details -->
<!--                            <div class="card-body p-4">  -->
<!--                                 <div class="text-center"> -->
<!--                                     Product name -->
<!--                                     <p class="fw-bolder" style="font-size: 16px;">씨그램 라임향 탄산수 450ml 20개</p> -->
<!--                                     Product price -->
<!--                                     <span class="instant-discount-rate" style="font-size: 14px; color: #999999">25%</span> <del class="base-price" style="font-size: 12px; color: #bcbcbc"> 15,400 </del> -->
<!--                                     <br> <strong class="price-value">11,400</strong>원 -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             Product reviews -->
<!--                          	<div class="d-flex justify-content-center small text-warning mb-2"> -->
<!-- 		                   		<div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!-- 		                        <div class="bi-star-fill"></div> -->
<!--                            	</div> -->
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/resources/user/main/product/sparklingWater/productView.html">상품 보러가기</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Coupang</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="/resources/user/main/template/js/scripts.js"></script>
        
 <!-- end -->
 
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="/resources/demos/style.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 
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
