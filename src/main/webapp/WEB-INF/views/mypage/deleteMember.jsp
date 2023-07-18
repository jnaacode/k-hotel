<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 탈퇴</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/7bc7245179.js" crossorigin="anonymous"></script>
</head>

<body>
    <!-- 헤더 -->
    <div class="P-container">
        <div class="P-header">
            <div class="P-header_left">
                <div class="P-blank">
                </div>
                <div class="P-btn1">
                    <a href="#">호텔찾기 <i class="fa-solid fa-magnifying-glass"></i></a>
                    <a href="#">예약 <i class="fa-solid fa-calendar-days"></i></a>
                </div>
            </div>
            <!-- 로고 클릭 시 메인페이지로 이동 -->
            <div>
                <a href="#" class="P-header_middle">
                    <img src="../webapp/resources/images/logo_b_2.png">
                </a>
            </div>
            <div class="modal" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Modal title</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <p>Modal body text goes here.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="P-header_rigtht">
                <!-- 로그인 -->
                <div class="P-btn2">
                    <ul>
                        <a href="#">로그인</a>
                        <span> | </span>
                        <a href="#">로그아웃</a>
                        <span> | </span>
                        <a href="#">마이페이지</a>
                        <span> | </span>
                        <a href="#">회원가입</a>
                    </ul>
                </div>
                <div class="P-btn3">
                    <a href="#">커뮤니티</a>
                    <a href="#">이벤트</a>
                </div>
            </div>
        </div>
    </div>
    <!-- 헤더 -->
    <!-- 바디 -->
    <form action="#">
        <div class="C-deleteMember-container">
            <div class="C-deleteMember-body">
                <div class="C-deleteMember-sidebar">사이드바</div>
                <div class="C-delete-main">
                    <div class="C-delete-main-div">
                        <div class="C-delete-title">회원탈퇴</div>
                        <div class="C-delete-title2">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인합니다.</div>
                        <div class="C-delete-inputpassword-div">
                            <div class="C-deleteMemberpassword-div">
                                <div class="C-deleteMember-table">
                                    <div>비밀번호 입력</div>
                                    <div>
                                        <input type="password">
                                    </div>
                                </div>
                                <div>비밀번호 형식이 올바르지 않습니다.</div>
                            </div>
                        </div>
                        <div class="C-secession-div">
                            
                            <div class="C-secession-title">회원 탈퇴 약관</div>
                            <pre id="secession-terms">
제1조
이 약관은 샘플 약관입니다.

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
                        <div class="C-deleteMember-checkbox">
                            <input type="checkbox" name="agree" id="agree">
                            <label>위 약관에 동의합니다.</label>
                            <button id="info-update-btn">탈퇴</button>
                        </div>
                        <div class="C-delete-btn">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </form>
    <!-- 바디 -->
    <!-- 풋터 -->
    <footer>

        <div class="k-first-div">
            <div class="k-f-container">
                <div>
                    <img src="../webapp/resources/images/logo_b_2.png" style="width: 180px;">
                </div>
                <div></div>
                <div>
                    <span>호텔소식</span>
                    <span> | </span>
                    <span>갤러리</span>
                    <span> | </span>
                    <span>고객문의</span>
                </div>
                <div></div>
                <div id="k-sns">
                    <div>
                        <a href="#">
                            <img
                                src="https://www.lottehotel.com/content/dam/lotte-hotel/common/footer/footer-sns-blog.png">
                        </a>
                    </div>
                    <div>
                        <a href="#">
                            <img
                                src="https://www.lottehotel.com/content/dam/lotte-hotel/common/footer/footer-sns-instagram.png">
                        </a>
                    </div>
                    <div>
                        <a href="#">
                            <img
                                src="https://www.lottehotel.com/content/dam/lotte-hotel/common/footer/footer-sns-youtube.png">
                        </a>
                    </div>
                    <div>
                        <a href="#">
                            <img
                                src="https://www.lottehotel.com/content/dam/lotte-hotel/common/footer/footer-sns-facebook.png">
                        </a>
                    </div>

                </div>
            </div>
        </div>

        <div class="k-second-div">
            <div>
                <span>케이호텔 소개</span>
                <span> | </span>
                <span>사이트맵</span>
                <span> | </span>
                <span>개인정보처리방침</span>
                <span> | </span>
                <span>이메일무단수집금지</span>
                <span> | </span>
                <span>윤리경영(부정제보)</span>
            </div>
        </div>

        <div class="k-third-div">
            <div>
                <div>케이호텔(주) 서울특별시 강남구 테헤란로 14길 6</div>
                <div>TEL 1544-9970</div>
                <div>Copyright © 2023 khotel.co.,Ltd. All rights reserved.</div>
            </div>
            <div></div>
            <div>
                <img src="resources/images/copyright.png">
            </div>
        </div>


    </footer>
    <!-- 풋터 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../webapp/resources/css/deleteMember.css">
</body>

</html>