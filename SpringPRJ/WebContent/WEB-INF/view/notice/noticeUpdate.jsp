<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="poly.dto.NoticeDTO" %>
<%@ page import="java.util.List" %>
<%
	NoticeDTO nDTO = (NoticeDTO)request.getAttribute("nDTO");
 %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 수정</title>
<%@ include file="/WEB-INF/view/mainCss.jsp" %>
<script>
function noticeRegCancel(){
	var ntRegCancel = confirm("수정을 취소하시겠습니까?");
	if(ntRegCancel==true){
		location.href="/notice/noticeList.do";
	}
}
</script>
</head>
<body id="page-top">
	<%@ include file="/WEB-INF/view/homeNav.jsp" %>
	<header class="masthead text-center text-white d-flex">
		<div class="container my-auto">
			<div class="row">
				<div class="col-lg-10 mx-auto">
					<h1 class="text-uppercase">
						<strong>공지사항 수정</strong>
					</h1>
				</div>
			</div>
		</div>
	</header>
	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<form class="form-horizontal" method="post" action="noticeUpdateProc.do">
						<div class="form-group">
							<h4 class="section-heading">
								제목
							</h4>
							<hr class="my-4">
							<div class="col-sm-12">
								<div class="input-group">
									<input class="form-control" id="noticeTitle" name="noticeTitle" type="text" value="<%= nDTO.getNoticeTitle() %>" />
								</div>
							</div>
							<br>
							<h4 class="section-heading">
								내용
							</h4>
							<hr class="my-4">
							<div class="col-sm-12">
								<div class="input-group">
									<textarea class="form-control" rows="10" id="noticeContent" name="noticeContent" style="resize:none;"><%= nDTO.getNoticeContent() %></textarea>
								</div>
								<input type="hidden" id="noticeWriter" name="noticeWriter" value="<%= userName %>" />
								<input type="hidden" id="regNo" name="regNo" value="<%= regNo %>" />
								<input type="hidden" id="noticeNo" name="noticeNo" value="<%= nDTO.getNoticeNo() %>" />
							</div>
							<br>
							<div class="col-sm-12">
								<button class="btn btn-primary" id="noticeUpdateSub" type="submit" style="width:30%;" onclick="if(!noticeSubmit(this.form)){return false;}">
									등록
								</button>
							</div>
						</div>
					</form>
					<div class="col-sm-12 text-center">
						<button class="btn btn-danger" onclick="noticeRegCancel()" style="width:30%;">
							취소
						</button>					
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="/WEB-INF/view/homeFooter.jsp" %>
	<%@ include file="/WEB-INF/view/mainJs.jsp" %>
	<script>
		function noticeSubmit(check){
			if(check.noticeTitle.value==""){
				alert("제목을 입력하지 않았습니다.")
				check.noticeTitle.focus()
				return false;
			} else if(check.noticeContent.value==""){
				alert("내용을 입력하지 않았습니다.")
				check.noticeContent.focus()
				return false;
			} else {
				var noticeSubmitConfirm = confirm("공지사항을 수정하시겠습니까?");
				if(noticeSubmitConfirm == true){
					return true;
				}	
			}
		}
	</script>
</body>
</html>