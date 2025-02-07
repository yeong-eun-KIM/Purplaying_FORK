<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<!-- meta태그, CSS, JS, 타이틀 인클루드  -->
<%@ include file="meta.jsp"%>
</head>
<body>
	<%@ include file="header.jsp"%>

	<!--메인 컨테이너 -->
	<section>
		<h1 class="visually-hidden">HOME</h1>
		<div class="contentsWrap">
			<!--컨텐츠 영역-->
			<!-- 펀딩 프로젝트 -->
			<div class="album">
				<div class="container py-4">
					<div class="dropdown container">
						<p>
						<!-- 검색 키워드 -->
						<h2>
							"<%=request.getParameter("keyword")%>" 검색 결과
						</h2>
						<!-- 검색결과 펀딩 수 -->
						<h5>검색 결과가 ${prdt_count} 건 있습니다.</h5>
						</p>

					</div>
					<div class="container py-4">
						<h4>
							<a>창작자명</a>
							<!-- 검색결과 유저 수 -->
							<h5>검색 결과가 ${user_count }건 있습니다.</h5>
						</h4>
					</div>
				</div>
				<div class="container py-8">
					<!-- 검색결과 펀딩 리스트 -->
					<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
						<c:forEach var="ProjectDto" items="${keyword }">
			          	<c:set var="doneloop"  value="false"/>
			            <div class="col"><!-- project thumb start -->
			              <div class="card shadow-sm">
			                <!-- 좋아요 버튼 -->
			                 <c:forEach var="like" items="${Likelist }" varStatus="status">
			                 	<c:if test="${not doneloop }">
				                	<c:choose>
				                		<c:when test="${like eq ProjectDto.prdt_id }">
				                			<c:set var="i" value="true" />
				                			<c:set var="doneloop"  value="true"/>
				                		</c:when>
				                		<c:otherwise><c:set var="i" value="false" /></c:otherwise>
				                	</c:choose>
			                	</c:if>
			                </c:forEach>
			                <button class="likeBtn" onclick="clickBtntest()"><i class="fa-regular fa-heart ${i? 'fas active' : 'far' }"></i></button>
				                <div onclick="location.href='/purplaying/project/${ProjectDto.prdt_id}'" id="${ProjectDto.prdt_id }" style="cursor:pointer">
							                	<img class="bd-placeholder-img" width="100%" height="225" id="prdt_thumbnail" name="prdt_thumbnail"
							                		src="${ProjectDto.prdt_thumbnail}" style=" ${ProjectDto.prdt_thumbnail == null ? 'display:none' : '' }">					
							                </div>					               
									<div class="card-body">
										<c:choose>
											<c:when test="${ProjectDto.prdt_genre eq 1 }"><p class="card-cate"onclick="location.href='genre/literature'">문학</p></c:when>
											<c:when test="${ProjectDto.prdt_genre eq 2 }"><p class="card-cate"onclick="location.href='genre/poemessay'">시/에세이</p></c:when>
											<c:when test="${ProjectDto.prdt_genre eq 3 }"><p class="card-cate" onclick="location.href='genre/webtoon'">웹툰</p></c:when>
											<c:otherwise><p class="card-cate">장르</p></c:otherwise>
										</c:choose>
										<div class="link-div"
											onclick="location.href='/purplaying/project/${ProjectDto.prdt_id}'">
											<p class="card-text">
											<h5>${ProjectDto.prdt_name }</h5>
											</p>
										</div>
										<div class="d-flex justify-content-between align-items-center">
											<strong class="text-danger">현재 달성률
												${ProjectDto.prdt_percent }%</strong> <small class="text-muted"><fmt:formatNumber
													type="number" maxFractionDigits="3"
													value="${ProjectDto.prdt_currenttotal }"></fmt:formatNumber>원</small>
											<small class="text-muted text-end">${ProjectDto.prdt_dday}일
												남음</small>
										</div>
										<div class="progress">
											<div
												class="progress-bar progress-bar-striped progress-bar-animated"
												role="progressbar" aria-label="Animated striped example"
												style="width: ${ProjectDto.prdt_percent }%"
												aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
<%-- 						<div class="col">
							<h1 class="row text-muted" onclick="location.href='${pageContext.request.contextPath}/viewMore?page=1'" style="color: #9E62FA; cursor:pointer;">더보기</h1>
						</div> --%>
					<br>
					<!-- 검색결과 X -->
					<div class="pagination mb-0 col-12 justify-content-center">
						<c:if test="${prdt_count == null || prdt_count == 0 }">
							<h6 class="row text-center ">
								"<%=request.getParameter("keyword")%>" 펀딩이 없습니다.
							</h6>
						</c:if>
						<c:if test="${prdt_count > 6 }">
							<h6 class="row text-center " onclick="location.href='${pageContext.request.contextPath}/projectViewMore?page=1&keyword=<%=request.getParameter("keyword")%>'" style="cursor:pointer;" >더보기
							</h6>													
						</c:if>
<%-- 						<c:if test="${prdt_count != null || count != 0 }">
							<c:if test="${pr2.showPrev }">
								<li class="page-item"><a class="page-link"
									href="<c:url value="/searchResult${pr2.sc2.getQueryString(pr2.beginPage-1) }" />">
										&lt; </a></li>
							</c:if>
							<c:forEach var="i" begin="${pr2.beginPage }"
								end="${pr2.endPage }">
								<li class="page-item"><a class="page-link"
									href="<c:url value="/searchResult${pr2.sc2.getQueryString(i)}" />">${i }</a>
								</li>
							</c:forEach>
							<c:if test="${pr2.showNext }">
								<li class="page-item"><a class="page-link"
									href="<c:url value="/searchResult${pr2.sc2.getQueryString(pr2.endPage+1) }" />">
										&gt; </a></li>
							</c:if>
						</c:if> --%>

					</div>

				</div>
			</div>

			<div class="album">
				<div class="container py-4">
					<hr>
					<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
						<c:forEach var="UserDto" items="${U_keyword }">
							<div class="col">
								<!-- 창작자 list -->
								<li class="row d-flex border rounded p-3 m-1">
									<div class="col-4">
										<img src="${UserDto.user_profile }"
											class="img-thumbnail rounded-circle" alt="유저 프로필">
									</div>
									<div class="col">
										<h5 class="row text-primary mt-2">${UserDto.user_nickname }</h5>
										<h6 class="row text-muted">${UserDto.user_id }</h6>
										<h6 class="row text-muted" onclick="location.href='${pageContext.request.contextPath}/creatorSearch/${UserDto.user_id}/'" 
													style="color: #9E62FA; cursor:pointer;">올린 프로젝트 더보기</h6> 
									</div>
								</li>
								<!-- 창작자 list end -->
							</div>
						</c:forEach>
					</div>
					<br> <br>
					<!-- 검색결과 유저수 X -->
					<div class="pagination mb-0 col-12 justify-content-center">
						<c:if test="${user_count == null || user_count == 0 }">
							<h6 class="row text-center ">
								"<%=request.getParameter("keyword")%>"이라는 제작자가 없습니다.
							</h6>
						</c:if>
						<c:if test="${user_count > 6 }">
							<h6 class="row text-center " onclick="location.href='${pageContext.request.contextPath}/creatorViewMore?page=1&keyword=<%=request.getParameter("keyword")%>'" style="cursor:pointer;" >더보기
							</h6>													
						</c:if>						

					</div>
				</div>
			</div>

			<div class="container py-4">
				<h4>
					<a>이런 프로젝트는 어떠세요?</a>
				</h4>
				<%@ include file="projectSuggest.jsp"%>
			</div>
		</div>

	</section>




	<!--푸터 인클루드-->
	<%@ include file="footer.jsp"%>
</body>
</html>