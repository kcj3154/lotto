<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

				<div class="col d-flex justify-content-end">
					<ul class="nav">

						<c:choose>
							<c:when test="${empty sessSeq }">
								<li class="nav-item"><a class="nav-link link-dark" href="/member/login">로그인</a></li>
								<li class="nav-item"><a class="nav-link link-dark" href="/member/signupForm">회원가입</a></li>
							</c:when>
							<c:otherwise>
								
								<li class="nav-item"><a class="nav-link link-dark">
									<span class="fw-bold">
											<c:out value="${sessName}" />
									</span>
										님, 반갑습니다!
									</a>
								</li>
								<li class="nav-item"><a class="nav-link link-dark" href="javascript:logOut()">로그아웃</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			
			
			
