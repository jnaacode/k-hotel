<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>

    <link rel="stylesheet" href="${contextPath}/resources/css/login.css">

    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/7bc7245179.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/CSS/header.css">

    
</head>
<body>

    <jsp:include page="/WEB-INF/views/common/header.jsp"/>

    


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="/Javascipt/header.js"></script>

    
    <div class="k-content">


        

        <div></div>
        <div id="k-login">
            <div>
                <form action="login" method="post">
                    <div id="k-login-letter">로그인</div>
                    <div id="k-login-input">
                        <table>
                            <tr>
                                <td>아이디</td>
                                <td><input type="text" name="inputId" placeholder="아이디를 입력해주세요" autocomplete="off" value="${cookie.saveId.value}"></td>
                                <td rowspan="2"><button id="k-login-btn">로그인</button></td>
                            </tr>
                            <tr>
                                <td>비밀번호</td>
                                <td><input type="text" name="inputPw" placeholder="비밀번호를 입력해주세요" autocomplete="off"></td>
                            </tr>
                        </table>
                    </div>
                

                    <!-- 쿠키에 아이디 저장되어 있는 경우 -->
                    <c:if test="${!empty cookie.saveId.value }">
                        <c:set var="chk" value="checked"></c:set>
                    </c:if>

                    <!-- 쿠키에 토큰(자동로그인용) 저장되어 있는 경우 -->
                    <c:if test="${!empty cookie.autoLogin.value }">
                        <c:set var="auto" value="checked"></c:set>
                    </c:if>
                    <!-- 굳이 변수 안 만들어도 될 것 같기도.. -->
                    
                    <div class="K-cookie">
                        <div>
                            <label class="K-checkbox"> 
                                <input type="checkbox" name="K-saveId" ${ chk } id="K-saveId">아이디 저장
                            </label>
                        </div>
                        <div>
                            <label class="K-checkbox"> 
                                <input type="checkbox" name="K-auto-login" id="K-auto-login">자동 로그인
                            </label>
                        </div>
                    </div>
                </form>
                <div id="k-login-bottom">
                    <a href="#">아이디 찾기</a>
                    <span> | </span>
                    <a href="#">비밀번호 찾기</a>
                    <span> | </span>
                    <a href="#">회원가입</a>
                </div>
            </div>
        </div>
        <div id="k-popup">
            <div id="k-popup-id"> <!-- 아이디찾기 창 -->
                <div class="k-popup-out">
                    <button class="k-x-btn">X</button>
                </div>
                <div class="k-search-letter">아이디 찾기</div>
                <div>
                    <form action="#">
                        <table>
                            <tr>
                                <td class="k-inputName">이름</td>
                                <td>
                                    <input type="text" name="k-inputNm-id" placeholder="이름을 입력하세요">
                                </td>
                                <td rowspan="2">
                                    <button id="k-id-search-btn">아이디찾기</button>
                                </td>
                            </tr>
                            <tr>
                                <td>주민등록번호</td>
                                <td><input type="password" name="k-inputPno-id" placeholder="주민번호를 입력하세요"></td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div>
                    <div id="k-id-result"></div>
                </div>
            </div>

            <div id="k-popup-pw"> <!-- 비번 찾기 창 -->
                <div class="k-popup-out">
                    <button class="k-x-btn">X</button>
                </div>
                <div class="k-search-letter">비밀번호 찾기</div>
                <div>
                    <form action="#">
                        <table>
                            <tr>
                                <td class="k-inputName">이름</td>
                                <td>
                                    <input type="text" name="k-inputNm-id" placeholder="이름을 입력하세요">
                                </td>
                                <td rowspan="3">
                                    <button id="k-pw-search-btn">비밀번호 <br>찾기</button>
                                </td>
                            </tr>
                            <tr>
                                <td>주민등록번호</td>
                                <td><input type="password" name="k-inputPno-id" placeholder="주민번호를 입력하세요"></td>
                            </tr>
                            <tr>
                                <td>아이디</td>
                                <td><input type="text" name="k-inputId-id" placeholder="아이디를 입력하세요"></td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div>
                    <div id="k-pw-result"></div>
                </div>
            </div>
        </div>
        <div></div>


    </div>


    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    
    <script src="${contextPath}/resources/js/login.js"></script>
</body>
</html>