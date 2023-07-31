<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


            <!-- map에 저장된 값을 각각 변수에 저장 -->
            <c:set var="boardName" value="${map.boardName}" />
            <c:set var="listCount" value="${map.listCount}" />
            <c:set var="listReportCount" value="${map.listReportCount}" />
            <c:set var="pagination" value="${map.LPagination}" />
            <c:set var="boardList" value="${map.boardList}" />

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>관리자 회원정보관리</title>
                <link rel="stylesheet" href="${contextPath}/resources/css/AdminHeader.css"><!-- 관리자 헤더 -->
                <link rel="stylesheet" href="${contextPath}/resources/css/AdminMember.css">
                <link rel="stylesheet" href="${contextPath}/resources/css/reviewShow.css">
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
                    crossorigin="anonymous">
            </head>

            <body>
                <jsp:include page="/WEB-INF/views/admin/AdminHeader.jsp" />

                <div class="P-All">
                    <jsp:include page="/WEB-INF/views/common/adminSidebar.jsp" />

                    <div class="P-main">
                        <!-- 검색 div -->
                        <div class="P-title1">
                            <input type="text" class="P-adm-search" placeholder="정보조회" name="Pid">
                            <button type="button" class="P-adm-btn">검색</button>
                        </div>

                        <!-- 전체 회원 조회 -->
                        <table class="P-main-menu">


                            <tr class="P-report-tr">
                                <th>회원번호</th>
                                <th>아이디</th>
                                <th>전화번호</th>
                                <th>이메일</th>
                                <th>주소</th>
                                <th>신고된수</th>
                                <th>탈퇴여부</th>
                                <th>탈퇴</th>
                            </tr>


                            <c:choose>
                                <c:when test="${empty boardList}">
                                    <!-- 게시글 목록 조회 결과가 비어있다면 -->
                                    <tr>
                                        <th colspan="12">회원이 존재하지 않습니다.</th>
                                    </tr>
                                </c:when>


                                <c:otherwise>
                                    <!-- 게시글이 있는 경우 -->
                                    <!-- 게시글 리스트 -->
                                    <c:forEach var="board" items="${boardList}">

                                        <c:set var="memberAdd" value="${board.memberAdd}" />
                                        <tr class="P-report-tr">
                                            <td>${board.memberNo}</td>
                                            <td>${board.memberId}</td>
                                            <td>${board.memebrTel}</td>
                                            <td>${board.memberEmail}</td>
                                            <td>${fn:substring(memberAdd, 0, fn:length(memberAdd) - 15)}*****</td>
                                            <td>${listReportCount}</td>
                                            <td>${board.secessionFl}</td>
                                            <td><button id="P-adm-btn">탈퇴</button></td>
                                        </tr>
                                    </c:forEach>

                                </c:otherwise>
                            </c:choose>


                        </table>

                        <div class="P-pagination-area">

                            <c:set var="url" value="memberAdmin?type=1&cp=" />
                            <!-- 나중에 링크에 type 설정해주고 el태그로 변경해줘야함  -->


                            <ul class="P-pagination">
                                <!-- 첫페이지로 이동 -->
                                <li><a href="${url}1">&lt;&lt;</a></li>

                                <!-- 이전 목록 마지막 번호로 이동 -->
                                <li><a href="${url}${pagination.prevPage}">&lt;</a></li>

                                <!-- 범위가 정해진 일반 for문 사용 -->
                                <c:forEach var="i" begin="${pagination.startPage}" end="${pagination.endPage}" step="1">
                                    <c:choose>

                                        <c:when test="${i == pagination.currentPage}">
                                            <!-- 만약 내가 4페이지에 있을때 다시 4페이지를 눌렀다면 이동하지 않고 클래스만부여(동그라미만!) -->
                                            <li><a class="current">${i}</a></li>
                                        </c:when>

                                        <c:otherwise>
                                            <!-- 만약 내가 4페이지에 있을때 다시 4페이지를 눌렀다면 이동하지 않고 클래스만부여(동그라미만!) -->
                                            <!-- type=1 공지사항 cp=2 2page -->
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



                    </div>
                </div>

                <script src="../webapp/resources/js/AdminMember.js"></script>
            </body>

            </html>