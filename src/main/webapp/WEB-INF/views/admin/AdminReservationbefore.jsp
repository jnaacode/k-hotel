<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 예약 관리</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/AdminReservation.css">
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"
        integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
</head>

<body>
    <jsp:include page="/WEB-INF/views/admin/AdminHeader.jsp" />

    <div class="C-adminrsv-container">
        <div class="C-adminrsv-body">
            <div class="C-adminrsv-sidebar">사이드바</div>

            <div class="C-adminrsv-main">
                <!-- <form action=""> -->
                <div class="C-adminreservation">
                    <div class="C-adminreservation-title1">예약관리</div>
                    <div class="C-adminRsv-div">
                            <select name="C-adminreservation-menu" id="C-adminreservation-menu" onchange="location.href=this.value">
                                <option value="${contextPath}/admin/bookList" >현재예약내역</option>
                                <option value="${contextPath}/admin/bookListbefore" selected>이전예약내역</option>
                            </select>
                    </div>
                    <div class="C-adminrsvlist">
                        <div class="C-adminrsv-main">
                            <div class="C-rsvlist-container Ctitle">
                                <div>예약번호</div>
                                <div>호텔지점</div>
                                <div>방이름</div>
                                <div>예약자</div>
                                <div>체크인날짜</div>
                                <div>체크아웃날짜</div>
                            </div>
                            <c:forEach var="rsv2" items="${rsvList2}">
                                <div class="C-rsvlist-container">
                                    <div>${rsv2.bookNo}</div>
                                    <div>${rsv2.hotelName}</div>
                                    <div>${rsv2.roomName}</div>
                                    <div>${rsv2.memberName}</div>
                                    <div>${rsv2.checkInTime}</div>
                                    <div>${rsv2.checkOutTime}</div>
                                    <div>
                                        <button class="C-cancelbtn">예약취소</button>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <!-- </form> -->
            </div>
        </div>
    </div>
    <script src="${contextPath}/resources/js/AdminReservation.js"></script>
</body>

</html>