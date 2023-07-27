<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 이벤트 작성</title>
    
    <link rel="stylesheet" href="${contextPath}/resources/css/AdminEventWrite.css">

    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
</head>
<body>

    <jsp:include page="/WEB-INF/views/common/AdminHeader.jsp"/>

    <div class="K-first">
        <div>
            <jsp:include page="/WEB-INF/views/common/adminSidebar.jsp"/>
            <div class="K-all">
                <div>
                    <div>이벤트 작성</div>

                    <form action="#" id="K-form">
                        <div>제목 입력</div>
                        <div>
                            <input type="text" placeholder="내용을 입력해주세요" name="K-title">
                        </div>
                        <div>
                            <span>내용입력</span>
                            <div>
                                <input type="file" name="K-photo" id="K-photo" multiple/>
                                <div id="K-image-select"></div>
                            </div>
                        </div>
                        <div>
                            <textarea name="K-content" cols="100" rows="20" placeholder="내용을 입력해주세요"></textarea>
                        </div>
                        <div>
                            <a href="#">
                                <button type="button" id="K-cancel">작성 취소</button>
                            </a>
                            <button id="K-write">작성</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div id="sample"></div>

    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script src="${contextPath}/resources/js/AdminEventWrite.js"></script>
</body>
</html>