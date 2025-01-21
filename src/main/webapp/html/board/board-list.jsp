<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>지식의 숲</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/asset/css/board/boardlist.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/asset/css/main/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/asset/css/main/footer.css">
<script defer
	src="${pageContext.request.contextPath}/asset/js/board/boardlist.js"></script>
</head>

<body>

	<!-- 상단 메뉴바  -->
	<jsp:include page="/html/main/header.jsp" />

	<h1 class="board-title ">자유게시판</h1>
	<!-- 검색창 -->
	<form class="boardlist-form-wrapper" action="">
		<input type="text" class="boardlist-input-search"
			placeholder="검색어를 입력하세요." />
		<button class="boardlist-btn-search">
			<img src="./../../asset/img/study/search-btn.png" alt="search"
				class="boardlist-img-search" />
		</button>
	</form>

	<!--타이틀   -->
	<!--    <div class="boardlist-div-list">
      <ul class="boardlist-ul-list">
         <li class="boardlist-li-header"><span class="board-number">카테고리</span>
            <span class="board-title">제목</span> <span class="board-author">작성자</span>
            <span class="board-date">작성일</span></li> -->

	<div class="boardlist-div-list">
		<ul class="boardlist-ul-list">
			<li class="boardlist-li-header"><span class="board-number">카테고리</span>
				<span class="board-title">제목</span> <span class="board-author">작성자</span>
				<span class="board-date">작성일</span></li>

			<c:forEach var="board" items="${boardList}">

				<li class="boardlist-li-item"
					onclick="location.href='boardDetail.jsp?id=${board.id}'"><span
					class="board-number">${board.category}</span> <span
					class="board-title">${board.title}</span> <span
					class="board-author">${board.author}</span> <span
					class="board-date">${board.createdDate}</span></li>
			</c:forEach>
		</ul>
	</div>

	<!-- 메인내용용 내용들 -->
	<li class="boardlist-li-item" onclick="movetodetailedpage()"><span
		class="board-number">카테고리</span> <span class="board-title">게시판
			제목1 [숫자]</span> <span class="board-author">작성자1</span> <span
		class="board-date">2025-01-11</span></li>
	<li class="boardlist-li-item"><span class="board-number">카테고리</span>
		<span class="board-title">게시판 제목2 [숫자]</span> <span
		class="board-author">작성자2</span> <span class="board-date">2025-01-10</span>
	</li>
	<li class="boardlist-li-item"><span class="board-number">카테고리</span>
		<span class="board-title">게시판 제목3 [숫자]</span> <span
		class="board-author">작성자3</span> <span class="board-date">2025-01-10</span>
	</li>
	<li class="boardlist-li-item"><span class="board-number">카테고리</span>
		<span class="board-title">게시판 제목4 [숫자]</span> <span
		class="board-author">작성자4</span> <span class="board-date">2025-01-10</span>
	</li>
	<li class="boardlist-li-item"><span class="board-number">카테고리</span>
		<span class="board-title">게시판 제목5 [숫자]</span> <span
		class="board-author">작성자5</span> <span class="board-date">2025-01-10</span>
	</li>
	<li class="boardlist-li-item"><span class="board-number">카테고리</span>
		<span class="board-title">게시판 제목6 [숫자]</span> <span
		class="board-author">작성자6</span> <span class="board-date">2025-01-10</span>
	</li>
	<li class="boardlist-li-item"><span class="board-number">카테고리</span>
		<span class="board-title">게시판 제목7 [숫자]</span> <span
		class="board-author">작성자7</span> <span class="board-date">2025-01-10</span>
	</li>
	<li class="boardlist-li-item"><span class="board-number">카테고리</span>
		<span class="board-title">게시판 제목8 [숫자]</span> <span
		class="board-author">작성자8</span> <span class="board-date">2025-01-10</span>
	</li>
	<li class="boardlist-li-item"><span class="board-number">카테고리</span>
		<span class="board-title">게시판 제목9 [숫자]</span> <span
		class="board-author">작성자9</span> <span class="board-date">2025-01-10</span>
	</li>
	<li class="boardlist-li-item"><span class="board-number">카테고리</span>
		<span class="board-title">게시판 제목10 [숫자]</span> <span
		class="board-author">작성자10</span> <span class="board-date">2025-01-10</span>
	</li>
	</ul>
	</div>

	<!-- 글쓰기 버튼 -->
	<div class="borderlist-div-writewrap">
		<button class="boardlist-btn-write">글쓰기</button>
	</div>

	<!-- 페이지네이션 -->
	<div class="boardlist-div-paginationwrapper">
		<ul id="BOARDLIST-UL-PAGINATION">
			<li class="boardlist-li-paginationlist pre">&lt;</li>
			<li class="boardlist-li-paginationlist currentpage">1</li>
			<li class="boardlist-li-paginationlist">2</li>
			<li class="boardlist-li-paginationlist">3</li>
			<li class="boardlist-li-paginationlist">4</li>
			<li class="boardlist-li-paginationlist">5</li>
			<li class="boardlist-li-paginationlist next">&#62;</li>
		</ul>
	</div>

	<!-- footer -->
	<jsp:include page="/html/main/footer.jsp" />


</body>

</html>