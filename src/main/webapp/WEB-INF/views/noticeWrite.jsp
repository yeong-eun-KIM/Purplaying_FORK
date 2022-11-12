<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<!-- meta태그, CSS, JS, 타이틀 인클루드  -->
<%@ include file="meta4.jsp"%>
</head>

<body>
	<!--헤더 인클루드-->
	<%@ include file="header.jsp"%>

	<!--페이지 내용 시작-->
	<section>
		<h1 class="visually-hidden">고객센터</h1>
		<!--컨텐츠 영역-->
		<div class="w-75 mx-auto justify-contents-center">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
			  <ol class="breadcrumb fs-6 mt-4">
			    <li class="breadcrumb-item"><a href="/purplaying/servicecenter">고객센터</a></li>
			    <li class="breadcrumb-item"><a href="/purplaying/notice">공지사항</a></li>
			    <li class="breadcrumb-item active" aria-current="page">공지사항 작성하기</li>
			  </ol>
			</nav>
        	<h2 class="mx-auto text-center py-3">공지사항 작성하기</h2>
      	</div>
		<form class="w-75 mx-auto" id="form" action="" method="">
			<input type="hidden" name="notice_id" value="${noticeDto.notice_id }">
			<!-- 상단영역(제목,작성자,공개여부) -->
			<table class="table project-table table-centered bg-light border-top border-2">
				<tbody>
				  <tr>
				    <th scope="col">제목</th>
				    <td scope="col" class="col-2">
	              		<select class="form-select fs-6" id="noticeCate" name="noticeCate">
						  	<option selected>카테고리</option>
						 	<option value="1">공지사항</option>
						  	<option value="2">이벤트</option>
						  	<option value="3">기타</option>
						</select>
				    </td>
				    <td>
  						<input type="text" class="form-control" placeholder="제목을 입력하세요" name="notice_title" value="${noticeDto.notice_title}">
				    </td>
				  </tr>
				  <tr>
				    <th scope="col">작성자</th>
				    <td colspan="2">
  						<input type="text" class="form-control" placeholder="${noticeDto.writer}" readonly>
				    </td>
				  </tr>
				  <tr>
				    <th scope="col">공개여부</th>
				    <td colspan="2">
  						<input class="form-check-input" name="notice_private" type="radio" value="${noticeDto.notice_private = true}"> <label>공개</label>
  						<input class="form-check-input" name="notice_private" type="radio" value="${noticeDto.notice_private = false}"> <label>비공개</label>
				    </td>
				  </tr>
				</tbody>
			</table>
			<!-- 글작성 영역 summernote -->
			<div style="height: 500px;">
				<textarea class="summernote" placeholder="내용을 입력하세요​">${noticeDto.notice_context}</textarea>
			</div>

				<div class="text-end my-5">
					<button class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#noticeWriteCancelModal">작성취소</button>
					<!-- 작성취소 모달창 start -->
					<div class="modal fade" id="noticeWriteCancelModal" tabindex="-1"
						aria-labelledby="noticeWriteCancelModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="noticeWriteCancelModalLabel">작성 취소</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
								<div class="modal-body text-center">
									<h6 class="form-label">공지사항 작성을 취소하시겠습니까?</h6>
									<p>[확인]버튼 클릭시 작성중인 글은 저장되지 않습니다.</p>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal" aria-label="Close" onclick="location.href='servicecenter'">확인</button>
								</div>
							</div>
						</div>
					</div>
					<!-- 작성취소 모달창 end -->
					<!-- 작성완료 모달창 start -->
					<button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#noticeWriteFinishModal" id="writeNewBtn">게 시</button>
					<div class="modal fade" id="noticeWriteFinishModal" aria-labelledby="noticeWriteFinishModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="noticeWriteFinishLabel">작성 완료</h5>
								</div>
								<div class="modal-body text-center">
									<label class="form-label">공지사항 등록완료</label>
									<div class="invalid-feedback">공지사항 등록이 완료되었습니다.</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary" data-bs-dismiss="modal" aria-label="Close" onclick="/notice/list">확인</button>
								</div>
							</div>
						</div>
					</div>
					<!-- 작성완료 모달창 end -->
				</div>
		</form>
	</section>
	<!--페이지 내용 종료-->
	
	<!--푸터 인클루드-->
	<%@ include file="footer.jsp"%>
	
	<script type="text/javascript">
		$("#writeBtn").on("click", function() {
			let form = $("#form");
			form.attr("action", "<c:url value='/notice/write' />")
			form.attr("method", "post")
			
			if(formCheck())
				form.submit()					
		})
			
		let formCheck = function() {
			let form = document.getElementById("form")
			if(form.title.value=="") {
				alert("제목을 입력해 주세요.")
				form.title.focus()
				return false
			}
			if(form.content.value=="") {
				alert("내용을 입력해 주세요.")
				form.content.focus()
				return false
			}	
			return true;
		}
	</script>
	<script type="text/javascript">
		let msg = "${msg}"
		if(msg == "WRT_ERR") alert("게시물 등록에 실패하였습니다. 다시 시도해 주세요.")
		if(msg == "MOD_ERR") alert("게시물 수정에 실패하였습니다. 다시 시도해 주세요.")
	</script>
</body>
</html>