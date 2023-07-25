<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 정보 확인</title>

    <link rel="stylesheet" href="${contextPath}/resources/css/confirmMember.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/header.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/footer.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/sidebar.css">

    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
</head>
<body>

    <jsp:include page="/WEB-INF/views/common/header.jsp"/>

    <div class="K-alll">
        <jsp:include page="/WEB-INF/views/common/sidebar.jsp"/> <!-- 사이드바 -->
        <div class="K-all">
            <div class="K-content"> <!-- 찐 내용 -->
                <div>회원 정보 확인</div>
                <div>회원님의 정보를 쉽게 확인하실 수 있습니다.</div>

                <c:set var="memberPno" value="${loginMember.memberPno}"/>
                <c:set var="addr" value="${fn:split(loginMember.memberAddress, ',,') }"></c:set>
        
                <div>
                    <table>
                        <tr>
                            <td class="K-bold">이름</td>
                            <td class="K-small">${loginMember.memberName}</td>
                        </tr>
                        <tr>
                            <td class="K-bold">주민등록번호</td>
                            <td class="K-small">${fn:substring(memberPno, 0,8)}******</td>
                        </tr>
                        <tr>
                            <td class="K-bold">아이디</td>
                            <td class="K-small">${loginMember.memberId}</td>
                        </tr>
                        <tr>
                            <td class="K-bold">이메일</td>
                            <td class="K-small">${loginMember.memberEmail}</td>
                        </tr>
                        <tr>
                            <td class="K-bold">휴대전화</td>
                            <td class="K-small">${loginMember.memberTel}</td>
                        </tr>
                        <tr>
                            <td class="K-bold">주소</td> <!-- 우편번호 -->
                            <td class="K-small">${addr[0]}</td>
                        </tr>
                        <tr>
                            <td class="K-td-none"></td>
                            <td class="K-small">${addr[1]}</td>
                        </tr>
                        <tr>
                            <td class="K-td-none"></td>
                            <td class="K-small">${addr[2]}</td>
                        </tr>
                    </table>

                    <div class="K-agree">
                        <div>
                            <span class="K-bold">개인정보 마케팅 활용 동의</span> <br>
                            <span>K-Hotel에서의 개인정보 마케팅 활용에 동의하시겠습니까?</span>
                        </div>
                        <div>
                            <button class="K-agree-btn" type="button">약관 확인</button>
                        </div>
                    </div>
                    <div class="K-agree-confirm">
                        <label for="K-agree1">동의함</label><input type="radio" id="K-agree1" name="K-agree1" checked>
                        <label for="K-disagree1">동의하지 않음</label><input type="radio" id="K-disagree1" name="K-agree1" disabled>
                    </div>
                    <div class="K-agree">
                        <div>
                            <span class="K-bold">개인정보 제3자 제공 동의</span> <br>
                            <span>K-Hotel서비스 제공을 위한 개인정보 제3자 제공에 동의하시겠습니까?</span>
                        </div>
                        <div>
                            <button class="K-agree-btn1"  type="button">약관 확인</button>
                        </div>
                    </div>
                    <div class="K-agree-confirm">
                        <label for="K-agree2">동의함</label><input type="radio" id="K-agree2" name="K-agree2" checked>
                        <label for="K-disagree2">동의하지 않음</label><input type="radio" id="K-disagree2" name="K-agree2" disabled>
                    </div>
                </div>
        
                <div>
                    <a href="changeMember"><button type="button" id="K-update-btn">개인 정보 수정</button></a>
                </div>
            </div>

            <div class="K-popup"></div>
            <div class="K-pop">
                <div>
                    <a href="#">
                        <button type="button" class="K-pop-btn">X</button>
                    </a>
                </div>
                <div>
                    <pre>
제1조
이 약관은 마케팅 활용 동의 샘플 약관입니다.

① 약관 내용 1

② 약관 내용 2

③ 약관 내용 3

④ 약관 내용 4


제2조
이 약관은 샘플 약관입니다.

① 약관 내용 1

② 약관 내용 2

③ 약관 내용 3

④ 약관 내용 4
                    </pre>
                </div>
            </div>
            <div class="K-popup"></div>
            <div class="K-pop1">
                <div>
                    <button type="button" class="K-pop-btn">X</button>
                </div>
                <div>
                    <pre>
제1조
이 약관은 제3자 제공 동의 샘플 약관입니다.

① 약관 내용 1

② 약관 내용 2

③ 약관 내용 3

④ 약관 내용 4


제2조
이 약관은 샘플 약관입니다.

① 약관 내용 1

② 약관 내용 2

③ 약관 내용 3

④ 약관 내용 4
                    </pre>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    
    <script src="${contextPath}/resources/js/confirmMember.js"></script>

</body>
</html>