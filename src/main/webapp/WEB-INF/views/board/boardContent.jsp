<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>질문게시판 상세페이지</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="${contextPath}/resources/css/boardContent.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/reply.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/header.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/footer.css">
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
</head>
<body>


    <jsp:include page="/WEB-INF/views/common/header.jsp"/>

    <div class="L-main">

        <div class="L-title1">질문 게시판 상세페이지</div>
        
        <form class="L-form-main">
            <div class="L-title L-detail">
                <div>제목</div>
                <div><input type="text" name="L-input-title" value="" placeholder="제목"></div>
            </div>

            <div class="L-person L-detail">
                <div>작성자</div>
                <div><input type="text" name="L-input-person" value="" placeholder="작성자"></div>
                <div>작성일</div>
                <div><input type="text" name="L-date" value="" placeholder="작성일"></div>
            </div>

            <div class="L-picture L-detail">
                <div>사진</div>
                <div>사진 들어갈 공간</div>
            </div>

            <div class="L-text L-detail">
                <div>내용</div>
                <div><textarea name="L-textarea-text"></textarea></div>
            </div>

            <div class="L-btn">
                <div><button type="button">목록으로</button></div>
                <div><button>게시글 수정</button></div>
                <div><button>게시글 삭제</button></div>
            </div>
        </form>

        <jsp:include page="/WEB-INF/views/board/reply.jsp"/>


    </div>



    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>





    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/js/boardContent.js"></script>
</body>
</html>