<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <%@ include file ="meta.jsp" %>
</head>

<body>
  <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol id="bootstrap" viewBox="0 0 118 94">
      <path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z"></path>
    </symbol>
    <symbol id="home" viewBox="0 0 16 16">
      <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z"/>
    </symbol>
    <symbol id="speedometer2" viewBox="0 0 16 16">
      <path d="M8 4a.5.5 0 0 1 .5.5V6a.5.5 0 0 1-1 0V4.5A.5.5 0 0 1 8 4zM3.732 5.732a.5.5 0 0 1 .707 0l.915.914a.5.5 0 1 1-.708.708l-.914-.915a.5.5 0 0 1 0-.707zM2 10a.5.5 0 0 1 .5-.5h1.586a.5.5 0 0 1 0 1H2.5A.5.5 0 0 1 2 10zm9.5 0a.5.5 0 0 1 .5-.5h1.5a.5.5 0 0 1 0 1H12a.5.5 0 0 1-.5-.5zm.754-4.246a.389.389 0 0 0-.527-.02L7.547 9.31a.91.91 0 1 0 1.302 1.258l3.434-4.297a.389.389 0 0 0-.029-.518z"/>
      <path fill-rule="evenodd" d="M0 10a8 8 0 1 1 15.547 2.661c-.442 1.253-1.845 1.602-2.932 1.25C11.309 13.488 9.475 13 8 13c-1.474 0-3.31.488-4.615.911-1.087.352-2.49.003-2.932-1.25A7.988 7.988 0 0 1 0 10zm8-7a7 7 0 0 0-6.603 9.329c.203.575.923.876 1.68.63C4.397 12.533 6.358 12 8 12s3.604.532 4.923.96c.757.245 1.477-.056 1.68-.631A7 7 0 0 0 8 3z"/>
    </symbol>
    <symbol id="table" viewBox="0 0 16 16">
      <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm15 2h-4v3h4V4zm0 4h-4v3h4V8zm0 4h-4v3h3a1 1 0 0 0 1-1v-2zm-5 3v-3H6v3h4zm-5 0v-3H1v2a1 1 0 0 0 1 1h3zm-4-4h4V8H1v3zm0-4h4V4H1v3zm5-3v3h4V4H6zm4 4H6v3h4V8z"/>
    </symbol>
    <symbol id="people-circle" viewBox="0 0 16 16">
      <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
      <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
    </symbol>
    <symbol id="grid" viewBox="0 0 16 16">
      <path d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zM2.5 2a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zM1 10.5A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z"/>
    </symbol>
  </svg>
  	
 
  <!--헤더 컨테이너-->
  <h1 class="visually-hidden">Header</h1>
  <header class="p-3 border-bottom">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
          <svg class="logo" width="140" height="36" aria-label="Bootstrap"></svg>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="#" class="nav-link px-2 link-secondary">장르별</a></li>
          <li><a href="#" class="nav-link px-2 link-dark">인기펀딩</a></li>
          <li><a href="#" class="nav-link px-2 link-dark">신규펀딩</a></li>
          <li><a href="#" class="nav-link px-2 link-dark">펀딩예정</a></li>
        </ul>

        <!-- 검색창 -->
        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
          <input type="search" class="form-control" placeholder="Search..." aria-label="Search">
        </form>

        <div class="dropdown text-end">
          <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            <img src="https://github.com/mdo.png" alt="mdo" width="32" height="32" class="rounded-circle">
          </a>
          <ul class="dropdown-menu text-small">
            <li><a class="dropdown-item" href="mypage.html">마이페이지</a></li>
            <li><a class="dropdown-item" href="#">설정</a></li>
            <li><a class="dropdown-item" href="#">고객센터</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">로그아웃</a></li>
          </ul>
        </div>
      </div>
    </div>
  </header>
  <!-- 카로셀 -->
  <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active" id="item02">
        <div class="container">
          <div class="carousel-caption text-start">
            <h1>물고기는 존재하지 않는다</h1>
            <p>Some representative placeholder content for the first slide of the carousel.</p>
            <p><a class="btn btn-lg btn-primary" href="#">Sign up today</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item"  id="item01">
        <div class="container">
          <div class="carousel-caption">
            <h1>Another example headline.</h1>
            <p>Some representative placeholder content for the second slide of the carousel.</p>
            <p><a class="btn btn-lg btn-primary" href="#">Learn more</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item" id="item03">
        <div class="container">
          <div class="carousel-caption text-end">
            <h1>One more for good measure.</h1>
            <p>Some representative placeholder content for the third slide of this carousel.</p>
            <p><a class="btn btn-lg btn-primary" href="#">Browse gallery</a></p>
          </div>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>

  <!--메인 컨테이너 -->
  <section>
    <h1 class="visually-hidden">HOME</h1>
    <div class="contentsWrap">
      <!--컨텐츠 영역-->
      <!-- 펀딩 프로젝트 -->
      <div class="album py-5">
        <div class="container">
          <h4>지금 달성률이 높은 펀딩</h4>
          <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
            <div class="col"><!-- project thumb start -->
              <div class="card shadow-sm">
                <!-- 좋아요 버튼 -->
                <button class="likeBtn"><i class="fa-regular fa-heart"></i></button>
                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
                <div class="card-body">
                  <p class="card-cate">웹툰</p>
                  <p class="card-text"><h5>1999년 감성으로 찾아온 '세기말 풋사과 보습학원'</h5></p>
                  <div class="d-flex justify-content-between align-items-center">
                    <strong class="text-danger">현재 달성률 00%</strong>
                  </div>
                </div>
              </div>
            </div><!-- project thumb end -->
            <div class="col"><!-- project thumb start -->
              <div class="card shadow-sm">
                <!-- 좋아요 버튼 -->
                <button class="likeBtn"><i class="fa-regular fa-heart"></i></button>
                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
                <div class="card-body">
                  <p class="card-cate">웹툰</p>
                  <p class="card-text"><h5>1999년 감성으로 찾아온 '세기말 풋사과 보습학원'</h5></p>
                  <div class="d-flex justify-content-between align-items-center">
                    <strong class="text-danger">현재 달성률 00%</strong>
                  </div>
                </div>
              </div>
            </div><!-- project thumb end -->
            <div class="col"><!-- project thumb start -->
              <div class="card shadow-sm">
                <!-- 좋아요 버튼 -->
                <button class="likeBtn"><i class="fa-regular fa-heart"></i></button>
                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
                <div class="card-body">
                  <p class="card-cate">웹툰</p>
                  <p class="card-text"><h5>1999년 감성으로 찾아온 '세기말 풋사과 보습학원'</h5></p>
                  <div class="d-flex justify-content-between align-items-center">
                    <strong class="text-danger">현재 달성률 00%</strong>
                  </div>
                </div>
              </div>
            </div><!-- project thumb end -->

          </div>

          <h4>오늘의 신규펀딩</h4>
          <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
            <div class="col"><!-- project thumb start -->
              <div class="card shadow-sm">
                <!-- 좋아요 버튼 -->
                <button class="likeBtn"><i class="fa-regular fa-heart"></i></button>
                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
                <div class="card-body">
                  <p class="card-cate">웹툰</p>
                  <p class="card-text"><h5>1999년 감성으로 찾아온 '세기말 풋사과 보습학원'</h5></p>
                  <div class="d-flex justify-content-between align-items-center">
                    <strong class="text-danger">현재 달성률 00%</strong>
                  </div>
                </div>
              </div>
            </div><!-- project thumb end -->
            <div class="col"><!-- project thumb start -->
              <div class="card shadow-sm">
                <!-- 좋아요 버튼 -->
                <button class="likeBtn"><i class="fa-regular fa-heart"></i></button>
                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
                <div class="card-body">
                  <p class="card-cate">웹툰</p>
                  <p class="card-text"><h5>1999년 감성으로 찾아온 '세기말 풋사과 보습학원'</h5></p>
                  <div class="d-flex justify-content-between align-items-center">
                    <strong class="text-danger">현재 달성률 00%</strong>
                  </div>
                </div>
              </div>
            </div><!-- project thumb end -->
            <div class="col"><!-- project thumb start -->
              <div class="card shadow-sm">
                <!-- 좋아요 버튼 -->
                <button class="likeBtn"><i class="fa-regular fa-heart"></i></button>
                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
                <div class="card-body">
                  <p class="card-cate">웹툰</p>
                  <p class="card-text"><h5>1999년 감성으로 찾아온 '세기말 풋사과 보습학원'</h5></p>
                  <div class="d-flex justify-content-between align-items-center">
                    <strong class="text-danger">현재 달성률 00%</strong>
                  </div>
                </div>
              </div>
            </div><!-- project thumb end -->

          </div>
          
        </div>
      </div>
    </div>

  </section>
  

  <!--푸터 인클루드-->
  <footer class="py-5">
    <div class="row">
      <div class="col-6 col-md-2 mb-3">
        <h5>퍼플레잉</h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">공지사항</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">서비스 소개</a></li>
        </ul>
      </div>

      <div class="col-6 col-md-2 mb-3">
        <h5>이용안내</h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">창작 가이드</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">후원 가이드</a></li>
        </ul>
      </div>

      <div class="col-6 col-md-2 mb-3">
        <h5>정책</h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">이용약관</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">개인정보처리 방침</a></li>
        </ul>
      </div>

      <div class="col-md-5 offset-md-1 mb-3 text-end">
        <form>
          <h5>고객지원</h5>
          <ul class="nav flex-column">
            <li class="nav-item mb-2"><button class="btn btn-primary" type="button">고객센터 문의하기</button></li>
          </ul>
        </form>
      </div>
    </div>

    <div class="py-4 border-top">
      <p class="nav flex-column mb-3">
        회사명  퍼플레잉㈜  |  주소  서울 서초구 서초대로 77길, 54 (서초더블유타워 13,14층)  |  대표  이순신  |  사업자등록번호  167-85-00921  |  통신판매업 신고번호  제2018-서울서초-0507호 | 대표번호  1644-0685  &copy; 2022 Purplaying Inc.
      </p>
      <p class="nav flex-column text-small text-muted">퍼플레잉은 플랫폼 제공자로서 프로젝트의 당사자가 아니며, 직접적인 통신판매를 진행하지 않습니다. 프로젝트의 완수 및 선물제공의 책임은 해당 프로젝트의 창작자에게 있으며, 프로젝트와 관련하여 후원자와 발생하는 법적 분쟁에 대한 책임은 해당 창작자가 부담합니다.
      </p>
    </div>
  </footer>
  <script>includeHTML();</script>
</body>
</html>