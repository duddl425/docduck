<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>회원가입</title>
<%@ include file="/WEB-INF/view/mainCss.jsp" %>
</head>
<body id="page-top">
	<%@ include file="/WEB-INF/view/homeNav.jsp" %>
	<header class="masthead text-center text-white d-flex">
		<div class="container my-auto">
			<div class="row">
				<div class="col-lg-10 mx-auto">
					<h1 class="text-uppercase">
						<strong>회원가입</strong>
					</h1>
					<hr>
				</div>
			</div>
		</div>
	</header>
	
	<section id="userRegForm">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<form class="form-horizontal" action="/user/userProc.do" method="post">
						<div class="form-gourp">
							<h4 class="section-heading">
								아이디
							</h4>
							<hr class="my-4">
							<div class="col-sm-12">
								<div class="input-group">
									<input type="text" class="form-control" id="id" name="id" placeholder="아이디">
									<span class="input-group-btn">
										<input type="button" class="btn btn-primary" value="중복체크" id="idCheck">
										<input type="hidden" id="conf" value="0">
									</span>
								</div>
							</div>
							<br>
							<h4 class="section-heading">
								비밀번호
							</h4>
							<hr class="my-4">
							<div class="col-sm-12">
								<div class="input-group">
									<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호" maxlength="20" value="">
								</div>
								<p><font id="length" size="2" color="red">8자리 이상 20자리 이하의 [영문 + 숫자] 조합</font></p>
							</div>
							<div class="col-sm-12">
								<div class="input-group">
									<input type="password" class="form-control" id="passwordCheck"  name="passwordCheck" placeholder="비밀번호 확인" maxlength="20" value="">
								</div>
							</div>
							<br>
							<h4 class="section--heading">
								이름
							</h4>
							<hr class="my-4">
							<div class="col-sm-12">
								<div class="input-group">
									<input type="text" class="form-control" id="userName" name="userName" placeholder="이름">
								</div>
							</div>
							<br>
							<h4 class="section-heading">
								전화번호
							</h4>
							<hr class="my-4">
							<div class="col-sm-12">
								<div class="input-group">
									<input type="text" class="form-control" id="userTel" name="userTel" placeholder="전화번호">
								</div>
							</div>
							<br>
						</div>
						<div class="col-sm-12 text-center">
							<button class="btn btn-danger" type="reset">
								취소하기
							</button>
							<button class="btn btn-primary" id="regSub" type="submit">
								회원가입
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="/WEB-INF/view/mainJs.jsp" %>
</body>
</html>