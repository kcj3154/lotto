<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>

<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>주문/결제</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
     <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/user/main/template/assets/favicon.ico" />
</head>
<body>

<!-- start -->

<div class="container px-4 px-lg-5">
		<form id="formCheck1" method="post" action="">
			<input type="hidden" name="ifmmSeq" value="1">
			<input type="hidden" id="ifsaSeq" name="ifsaSeq">
			<input type="hidden" id="trorRequest" name="trorRequest" value="문 앞">

			<div class="row border-bottom py-3 pt-6">
				<div class="col offset-0">
					<a href="/main">
						<img src="/resources/user/main/image/cou.jpg" style="width: 150px;">
					</a>
				</div>
			</div>

			<div class="">
				<div class="row border-bottom border-4 py-2 mt-2 align-items-end">
					<div class="col p-0">
						<h2>주문/결제</h2>
					</div>
					<div class="col text-end p-0">주문결제>주문완료</div>
				</div>

				<div class="row py-3">
					<p class="col-12 p-0 mb-0 fw-bold fs-5">구매자</p>
					<div class="col p-0 pt-2">
						<div class="table-responsive">
							<table class="table table-sm p-0 border-top border-3">
								<tr>
									<th class="bg-light px-2">이름</th>
									<td class="px-2">
										관리자
									</td>
								</tr>
								<tr>
									<th class="bg-light px-2">이메일</th>
									<td class="px-2">
										admin@admin.com
									</td>
								</tr>
								<tr>
									<th class="bg-light px-2">휴대폰 번호</th>
									<td class="px-2">
										010-0000-0000
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>

				<div class="row py-3">
					<p class="p-0 mb-0 fw-bold fs-5 d-inline" style="width: 135px;">받는 사람</p>
					<div id="ShippingAnchorDiv" class="d-inline-block" style="width: 200px;">
						<a class="btn btn-dark border container4" style="width: 60%; font-size: small;" data-bs-toggle="modal" data-bs-target="#addressModal">배송지 변경</a>
					</div>
					<div id="ShippingContentDiv" class="col-12 p-0 pt-2">
						<div class="table-responsive">
							<table class="table table-sm p-0 border-top border-3">
								<tr>
									<th class="bg-light px-2">이름</th>
									<td class="px-2">
										관리자
									</td>
								</tr>
								<tr>
									<th class="bg-light px-2">배송주소</th>
									<td class="px-2">
										서울시 강동구 천호대로 193길 37 
										<br>
										길동 우성아파트 103동 1301호
									</td>
								</tr>
								<tr>
									<th class="bg-light px-2">연락처</th>
									<td class="px-2">
												010-0000-0000
									</td>
								</tr>
								<tr>
									<th class="bg-light px-2">배송 요청사항</th>
									<td class="px-2">
										<span id="deliveryRequestSpan" class="pe-3">문 앞</span>
										<button type="button" class="btn btn-sm btn-dark" data-bs-toggle="modal" data-bs-target="#deliveryRequestModal">변경</button>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>

				<!-- Modal -->
				<div class="modal fade" id="addressAddModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 style="padding-left: 190px;" class="modal-title" id="exampleModalLabel">배송지 추가</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body px-5">
								<div class="row">
									<div class="input-group flex-nowrap mb-2">
										<span class="input-group-text">
											<i class="bi bi-person"></i>
										</span>
										<input id="ifsaName" name="ifsaName" type="text" class="form-control" placeholder="받는 사람">
									</div>
									<div class="input-group flex-nowrap">
										<span class="input-group-text">
											<i class="bi bi-geo-alt"></i>
										</span>
										<input id="ifsaZipCode" name="ifsaZipCode" type="text" class="form-control" placeholder="우편번호" readonly>
										<button type="button" class="btn btn-sm btn-outline-dark" id="btnAddress">우편번호 검색</button>
										<!--  onclick="sample6_execDaumPostcode()" -->
										<button type="button" class="btn btn-outline-dark" id="btnAddressClear">X</button>
									</div>
									<div class="input-group flex-nowrap">
										<input id="ifsaAddress1" name="ifsaAddress1" type="text" class="form-control" placeholder="주소" readonly>
									</div>
									<div class="input-group flex-nowrap mb-2">
										<input id="ifsaAddress2" name="ifsaAddress2" type="text" class="form-control" placeholder="상세주소">
									</div>
									<div class="input-group flex-nowrap mb-2">
										<span class="input-group-text">
											<i class="bi bi-phone"></i>
										</span>
										<input id="ifsaContact" name="ifsaContact" type="text" class="form-control" placeholder="연락처">
									</div>
								</div>
							</div>
							<div class="modal-footer px-5">
								<a type="button" class="btn btn- w-100" href="javascript:addShippingAddress();">배송지 추가</a>
							</div>
						</div>
					</div>
				</div>


				<div class="modal fade" id="addressEditModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#addressModal">
									<i class="bi bi-arrow-left"></i>
								</button>
								<h5 style="padding-left: 140px;" class="modal-title" id="exampleModalLabel">배송지 수정</h5>
								<button type="button" class="btn-close pe-5" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body px-5">
								<div class="row">
									<div class="input-group flex-nowrap mb-2">
										<span class="input-group-text">
											<i class="bi bi-person"></i>
										</span>
										<input id="ifsaSeqEdit" name="ifsaSeqEdit" type="hidden">
										<input id="ifsaNameEdit" name="ifsaNameEdit" type="text" class="form-control" placeholder="받는 사람">
									</div>
									<div class="input-group flex-nowrap">
										<span class="input-group-text">
											<i class="bi bi-geo-alt"></i>
										</span>
										<input id="ifsaZipCodeEdit" name="ifsaZipCodeEdit" type="text" class="form-control" placeholder="우편번호" readonly>
										<button type="button" class="btn btn-sm btn-outline-" id="btnAddress">우편번호 검색</button>
										<!--  onclick="sample6_execDaumPostcode()" -->
										<button type="button" class="btn btn-outline-danger" id="btnAddressClearEdit">X</button>
									</div>
									<div class="input-group flex-nowrap">
										<input id="ifsaAddress1Edit" name="ifsaAddress1Edit" type="text" class="form-control" placeholder="주소" readonly>
									</div>
									<div class="input-group flex-nowrap mb-2">
										<input id="ifsaAddress2Edit" name="ifsaAddress2Edit" type="text" class="form-control" placeholder="상세주소">
									</div>
									<div class="input-group flex-nowrap mb-2">
										<span class="input-group-text">
											<i class="bi bi-phone"></i>
										</span>
										<input id="ifsaContactEdit" name="ifsaContactEdit" type="text" class="form-control" placeholder="연락처">
									</div>
									<div class="form-check-inline">
										<input id="ifsaDefaultEdit" name="ifsaDefaultEdit" type="checkbox" class="form-check-input">
										<input type="hidden" id="ifsaDefaultNyEdit" name="ifsaDefaultNyEdit" value="0">
										<label for="ifsaDefaultEdit" class="form-check-label">기본 배송지로 선택</label>
									</div>
								</div>
							</div>
							<div class="modal-footer px-5">
								<a type="button" class="btn btn- w-100" href="javascript:updateShippingAddress();">저장</a>
								<a type="button" class="btn text-danger border w-100" href="javascript:deleteShippingAddress();">삭제</a>
							</div>
						</div>
					</div>
				</div>


				<div class="modal fade" id="addressModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 style="padding-left: 190px;" class="modal-title" id="exampleModalLabel">배송지 변경</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body px-5">
								<div id="addRow" class="row">
									
										<div class="col-12">
											<div class="card" style="width: 100%;">
												<div class="card-body">
													<h5 class="card-title">
														관리자
													</h5>
													<p class="card-text">
														서울시 강동구 천호대로 193길 37
														,
														길동 우성아파트 103동 1301호
													</p>
													<p class="card-text">
														010-0000-0000
													</p>
												</div>
											</div>
										</div>
								</div>
							</div>
							<div class="modal-footer px-5">
								<button type="button" class="btn btn-dark w-100" data-bs-toggle="modal" data-bs-target="#addressAddModal">배송지 변경</button>
							</div>
						</div>
					</div>
				</div>

				<div class="modal fade" id="deliveryRequestModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 style="padding-left: 170px;" class="modal-title" id="exampleModalLabel">배송 요청사항</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<div class="d-flex align-items-center border px-2">
									<input id="trorDeliveryRequest1" name="trorDeliveryRequest" class="form-check-input m-0" type="radio" value="1" checked>
									<label class="form-check-label btn w-100 text-start" for="trorDeliveryRequest1">문 앞</label>
								</div>
								<div class="d-flex align-items-center border px-2">
									<input id="trorDeliveryRequest3" name="trorDeliveryRequest" class="form-check-input m-0" type="radio" value="3">
									<label class="form-check-label btn w-100 text-start" for="trorDeliveryRequest3">경비실</label>
								</div>
							</div>
							<div class="modal-footer">
								<a type="button" class="btn btn-dark w-100" href="javascript:saveDeliveryRequest();">확인</a>
							</div>
						</div>
					</div>
				</div>

				<div class="row py-3">
					<p class="col-12 p-0 mb-0 fw-bold fs-5">배송 1건 중 1</p>
					<div class="col p-0 pt-2">
						<div class="table-responsive">
							
							<table class="table table-sm p-0">
								<tr>
									<td colspan="2" class="bg-light px-2">
										<span id="arrivalDate" class="arrivalDate"></span>
										<strong style="color: #1baa40">내일(목)</strong> 도착 보장
									</td>
								</tr>
								
									<tr>
										<td class="productName px-2">
											<input type="hidden" name="checkboxTrprArray" placeholder="시퀀스" value="82">
											<strong>아이시스 8.0 생수 2L, 24개</strong>
											<input type="hidden" name="trprFullNameArray" placeholder="풀네임" value="아이시스 8.0 생수 2L, 24개">
										</td>
										<td class="text-end px-2" style="font-weight: lighter;">
											수량 1개 / 무료배송
											<input type="hidden" name="trctQuantityArray" placeholder="수량" value="1">
										</td>
									</tr>
								
							</table>
						</div>
					</div>
				</div>

				<div class="row py-3">
					<p class="col-12 p-0 mb-0 fw-bold fs-5">결제정보</p>
					<div class="col p-0 pt-2">
						<div class="table-responsive">
							<table class="table table-sm p-0 border-top border-3">
								<tr>
									<th class="bg-light px-2">총상품가격</th>
									<td class="px-2">
										17,140
										<input type="hidden" name="totalProduct" value="43120">
									</td>
								</tr>
								<tr>
									<th class="bg-light px-2">배송비</th>
									<td class="px-2">
										0
										<input type="hidden" name="totalDelivery" value="0">
									</td>
								</tr>
								<tr>
									<th class="bg-light px-2">총결제금액</th>
									<td class="px-2">
										17,140
										<input type="hidden" name="totalMoney" value="17,140">
									</td>
								</tr>
								<tr>
									<th class="bg-light px-2">결제방법</th>
									<td class="px-2">
										<div class="form-check form-check-inline">
											<input name="paymentMethod" id="paymentMethod1" type="radio" class="form-check-input" value="kakao">
											<label for="paymentMethod1" style="cursor: pointer;">카카오페이</label>
										</div>
										<div class="form-check form-check-inline">
											<input name="paymentMethod" id="paymentMethod2" type="radio" class="form-check-input" disabled>
											<label for="paymentMethod2" style="cursor: pointer;">계좌이체</label>
										</div>
										<div class="form-check form-check-inline">
											<input name="paymentMethod" id="paymentMethod3" type="radio" class="form-check-input" disabled>
											<label for="paymentMethod3" style="cursor: pointer;">신용/체크카드</label>
										</div>
										<div class="form-check form-check-inline">
											<input name="paymentMethod" id="paymentMethod4" type="radio" class="form-check-input" disabled>
											<label for="paymentMethod4" style="cursor: pointer;">무통장입금(가상계좌)</label>
										</div>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col text-center">
						<a class="lh-lg btn btn-outline-dark rounded-0"  style="width: 200px;">취소</a>
						<a class="lh-lg btn btn-outline-dark rounded-0" href="javascript:goPurchase();"  style="width: 200px;">결제하기</a>
					</div>
				</div>
			</div>


		</form>
		

	</div>
	
	<br><br>
	 <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Coupang</p></div>
        </footer>


	
<!-- end -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="/resources/demos/style.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- 결제 -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

	<script type="text/javascript">
	var IMP = window.IMP;
	
	IMP.init('imp77780712');
	
	</script>

<script type="text/javascript">

goPurchase = function() {
			
			
			if($("#paymentMethod1"){
				
				IMP.request_pay({ // param
					pg: 'kakaopay',
					pay_method : 'card',
					merchant_uid : 'iamport_test_id' + new Date().getTime(), // 주문번호
					name : '쿠팡 상품주문',
					amount : "17,140"
				}, function(rsp) {
					if(rsp.success) {
						console.log("빌링키 발급 성공", rsp);
						$("#formCheck1").attr("action", "/infra/member/user/productOrder").submit();
					} else {
						var msg = "결제에 실패하였습니다.\n";
						msg += rsp.error_msg;
						alert(msg);
						return false;
					}
				})
				
			} else {
				alert("결제방법을 선택해주세요.");
			}
			
			
			
			
		}
	</script>
 
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>