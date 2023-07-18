<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../webapp/resources/css/couponList.css">

    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>   

    <script>
        $(document).ready(function() {
          $(".H-side-bar .H-side-item").click(function(e) {
            e.preventDefault();
            var $this = $(this);
            var $parent = $this.closest('li');
            var $siblings = $this.siblings('dl');
    
            if ($siblings.length && !$siblings.is(':visible')) {
              $parent.addClass('H-active').siblings('li').removeClass('H-active').find('dl').removeClass('H-block').addClass('none');
              $siblings.removeClass('H-none').addClass('H-block');
            } else {
              $parent.removeClass('H-active');
              $siblings.removeClass('H-block').addClass('H-none');
            }
          });
        });
      </script>
</head>

<body>
    <div>헤더</div>
    <div class="C-body-container">
        <div class="C-body-coupon">
            <div class="C-body-sidebar">
                <div class="H-snb">
                    <ul class="H-side-bar">
                        <li class="">
                            <a href="#" class="H-side-item">내 정보</a>
                            <dl class="H-none">
                                <dd class="H-active"><a href="#">- 프로필 수정</a></dd>
                                <dd class=""><a href="#">- 비밀번호 변경</a></dd>
                                <dd class=""><a href="#">- 문의 내역</a></dd>
                                <dd class=""><a href="#">- 탈퇴 요청</a></dd>
                            </dl>
                        </li>
                        <li>
                            <a href="#" class="H-side-item">예약</a>
                            <dl class="H-none">
                                <dd class=""><a href="#">- 현재 예약 확인</a></dd>
                                <dd class=""><a href="#">- 이전 예약 확인</a></dd>
                            </dl>
                        </li>
                        <li>
                            <a href="#" class="H-side-item">쿠폰</a>
                            <dl class="H-none">
                                <dd class=""><a href="#">- 쿠폰함</a></dd>
                            </dl>
                        </li>
                        <li>
                            <a href="#" class="H-side-item">내가 쓴 글</a>
                            <dl class="H-none">
                                <dd class=""><a href="#">- 내가 쓴 글</a></dd>
                            </dl>
                        </li>
                        <li>
                            <a href="#" class="H-side-item">찜</a>
                            <dl class="H-none">
                                <dd class=""><a href="#">- 찜 목록</a></dd>
                            </dl>
                        </li>
                    </ul>
                    
                </div>
            
            </div>
            <div class="C-body-couponlist">
                <div class="C-couponlist-div">
                    <div class="C-couponlist-title">쿠폰함</div>
                    <div class="C-couponlist-inner">
                        <div class="C-inner-img">
                            <img src="../webapp/resources/images/30000만원 할인 쿠폰.png" class="C-coupon-img">
                        </div>
                        <div class="C-inner-text">
                            <ul>
                                <li> 이벤트 성공 축하 3만원 할인 쿠폰</li>
                                <li> 사용기한 : ~ 2023-12-31 </li>
                                <li> 게임 성공 시 3만원 할인쿠폰 자동 지급됩니다.
                                    <br>
                                    구매 페이지에서 쿠폰 적용 가능합니다.
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="C-couponlist-inner">
                        <div class="C-inner-img">
                            <img src="../webapp/resources/images/30000만원 할인 쿠폰.png" class="C-coupon-img">
                        </div>
                        <div class="C-inner-text">
                            <ul>
                                <li> 이벤트 성공 축하 3만원 할인 쿠폰</li>
                                <li> 사용기한 : ~ 2023-12-31 </li>
                                <li> 게임 성공 시 3만원 할인쿠폰 자동 지급됩니다.
                                    <br>
                                    구매 페이지에서 쿠폰 적용 가능합니다.
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="C-couponlist-inner">
                        <div class="C-inner-img">
                            <img src="../webapp/resources/images/30000만원 할인 쿠폰.png" class="C-coupon-img">
                        </div>
                        <div class="C-inner-text">
                            <ul>
                                <li> 이벤트 성공 축하 3만원 할인 쿠폰</li>
                                <li> 사용기한 : ~ 2023-12-31 </li>
                                <li> 게임 성공 시 3만원 할인쿠폰 자동 지급됩니다.
                                    <br>
                                    구매 페이지에서 쿠폰 적용 가능합니다.
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="C-pagenation">
                        <nav aria-label="Page navigation example" class="k-pg">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>풋터</div>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
       
        
</body>

</html>