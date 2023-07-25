<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="boardName" value="${map.boardName}"/>
<c:set var="pagination" value="${map.pagination}"/>
<c:set var="boardList" value="${map.boardList}"/>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>qnaList</title>

    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
    crossorigin="anonymous">
    <link rel="stylesheet" href="${contextPath}/resources/css/qnaList.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/header.css">

</head>
<body>

    <jsp:include page="/WEB-INF/views/common/header.jsp"/>

    <div id="k-qList-content">

        <jsp:include page="/WEB-INF/views/common/boardSidebar.jsp"/>

        <div class="k-qna">

            <div>

                <div>${boardName}</div>
                
                <div>
                    <button id="q-btn">게시글 작성</button>
                </div>
            </div>

            <div class="K-qnaList"> <!-- 질문게시판 목록 -->

                
                <c:if test="${empty boardList}">
                    <div id="K-none">게시글이 존재하지 않습니다.</div>
                </c:if>
                
                <c:if test="${!empty boardList}">
                    <div class="k-q-list k-title">
                        <div>글 번호</div>
                        <div>글 제목</div>
                        <div></div>
                        <div>작성자</div>
                        <div>작성일</div>
                    </div>

                    <div id="k-empty"></div>

                    <c:forEach var="board" items = "${boardList}">

                        <a href="#" style="text-decoration: none;">
                            <div class="k-q-list">
                                <div>${board.boardNo}</div>
                                <div>${board.boardTitle}</div>
                                <div></div>
                                <div>${board.memberName}</div>
                                <div>${board.boardDate}</div>
                            </div>
                        </a>

                    </c:forEach>


                </c:if>

            </div>

            <!-- 페이지네이션 -->
            <div class="K-qna-page">
                <c:set var="url" value="qna?type=2&cp="/>

                <ul class="K-pagination">
                    <!-- 첫 페이지로 이동 -->
                    <li><a href="${url}1">&lt;&lt;</a></li>
                    <!-- 이전 목록 마지막 번호로 이동 -->
                    <li><a href="${url}${pagination.prevPage}">&lt;</a></li>

                    <!-- 범위가 정해진 일반 for문 사용 -->
                    <c:forEach var="i" begin="${pagination.startPage}" end="${pagination.endPage}">
                        <c:choose>
                            <c:when test="${i==pagination.currentPage}">
                                <li><a class="K-current">${i}</a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a href="${url}${i}">${i}</a></li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>

                    <!-- 다음 목록 시작 번호로 이동 -->
                    <li><a href="${url}${pagination.nextPage}">&gt;</a></li>
                    <!-- 끝 페이지로 이동 -->
                    <li><a href="${url}${pagination.maxPage}">&gt;&gt;</a></li>
                </ul>

            </div>

            <form action="qna/search?type=2">
                <div class="k-search-div"> <!-- 하단 검색 부분 -->
                    <div>
                        <select name="k-search-s" id="k-search">
                            <option value="1">제목 + 내용</option>
                            <option value="BOARD_TITLE">제목</option>
                            <option value="BOARD_CONTENT">내용</option>
                        </select>
                    </div>
                    <div><input type="search" name="k-search-c" id="k-search-c"></div>
                    <div><img src="${contextPath}/resources/images/search.png"></div>
                    <div>
                        <button id="k-search-btn">검색</button>
                    </div>
                </div>
            </form>
        </div>

    </div>

    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
      
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"
        integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <script src="../resources/js/qnaList.js"></script>
</body>
</html>