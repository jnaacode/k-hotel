<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예약 확인창</title>
    <link rel="stylesheet" href="resources/css/header.css"> <!-- 헤더 스타일 -->
    <link rel="stylesheet" href="resources/css/reservationFinal.css"> <!-- 예약확인창 스타일 -->
    <link rel="stylesheet" href="resources/css/footer.css"><!-- 풋터 스타일 -->
    <!-- j쿼리 url -->
    <script src="resources/js/jquery-3.7.0.min.js"></script>
    <!-- 폰트 url -->
    <script src="https://kit.fontawesome.com/7bc7245179.js" crossorigin="anonymous"></script>
    <!-- 부트스트랩 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
    <!----------------------------------------헤더 --------------------------------------------->
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <!----------------------------------------헤더 --------------------------------------------->

    <!----------------------------------------바디 --------------------------------------------->
    <form action="" method="get">
        <div class="C-body">
            <div class="C-Final-rsv">
                <div class="C-body-first-div">예약하기</div>
                <div class="C-body-rsvInfo">
                    <div class="C-rsvInfo">
                        <table class="C-rsvInfo-table">
                            <tr>
                                <td></td>
                                <td><strong>예약자 정보</strong></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>이름</td>
                                <td><input type="text" id="C-rsvName" name="C-rsvName" autocomplete="off"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>이메일</td>
                                <td><input type="text" id="C-rsvEmail" name="C-revEmail" autocomplete="off"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>전화번호</td>
                                <td><input type="text" id="C-rsvTel" name="C-rsvTel" autocomplete="off"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>주소</td>
                                <td><input type="text" id="C-rsvAddress" name="C-rsvAddress" autocomplete="off"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>호텔 이용안내</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td colspan="2">
                                    <textarea name="C-rsvOrder" id="C-rsvOrder" cols="65" rows="3" autocomplete="off" disabled>
① 요금에는 10% 부가가치세가 부과됩니다.

② 2인 1실 기준 객실 이용 시 1박당 5,000원의 주차 요금이 부과됩니다.

③ 유료 주차는 객실당 1대에 한하며, 추가 차량은 이용이 어려운 점 양해 부탁드립니다.

④ 체크인 시 등록카드 작성 및 투숙객 본인 확인을 위해 본인 사진이 포함된 신분증을 반드시 제시해 주시기 바랍니다.

⑤ 13세 이하 어린이는 객실 인원 추가 요금을 받지 않습니다.

⑥ 37개월 미만 유아는 조식이 무료입니다.

⑦ 안내견을 제외한 애완견 등 동물 입장은 불가합니다.

⑧ 부모를 동반하지 않은 만 19세 미만 미성년자는 투숙할 수 없습니다. (청소년 보호법 30조/58조)

⑨ 상기 요금은 할인 요금이며, 중복 할인은 적용되지 않습니다.

⑩ 객실 이용 시 1박당 5,000원의 주차 요금이 부과됩니다. (객실당 1대에 한하며, 추가 차량 이용 불가)
자세한 객실안내는 02-2231-0707로 문의 바랍니다.
                                    </textarea>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="C-moneyAll">
                        <div class="C-moneyInfo">
                            <table class="C-moneyInfo-table">
                                <tr>
                                    <td><strong>결제정보</strong></td>
                                </tr>
                                <tr>
                                    <td>결제수단</td>
                                    <td>
                                        <select name="C-payplan" id="C-payplan">
                                            <option value="none" selected>결제수단선택</option>
                                            <option id="C-bank" value="무통장입금">무통장입금</option>
                                            <option value="none">선불/체크카드</option>
                                            <option value="none">신용카드</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr id="C-display-change">
                                    <td>입금계좌</td>
                                    <td>
                                        <select name="C-account" id="C-account">
                                            <option value="none" selected>은행 / 계좌 선택</option>
                                            <option id="C-tossBank" value="토스뱅크">토스뱅크 1000-2161-7612</option>
                                            <option value="C-kakaoBack">카카오뱅크 3333-05-265481</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr id="C-display-change2">
                                    <td>입금자명</td>
                                    <td>
                                        <input type="text" id="C-accountName" name="C-accountName" value="K-호텔" autocomplete="off" disabled>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="C-payInfo">
                            <table class="C-payInfo-table">
                                <tr>
                                    <td><strong>요금안내</strong></td>
                                </tr>
                                <tr>
                                    <td>객실요금</td>
                                    <td><input type="text" id="C-hotelPay" name="C-hotelPay" autocomplete="off"></td>
                                </tr>
                                <tr>
                                    <td>쿠폰선택</td>
                                    <td>
                                        <select name="C-rsv-coupon" id="C-rsv-coupon">
                                            <option value="none" selected>쿠폰선택</option>
                                            <option name="discountCoupon" value="discountcoupon">3만원 할인 쿠폰</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>할인요금</td>
                                    <td><input type="text" name="C-couponPay" id="C-couponPay" autocomplete="off" disabled>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="Iwantgohome">결제금액</td>
                                    <td><input type="text" name="C-finalpay" id="C-finalpay" autocomplete="off"></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="C-rsv-agree">
                    <div>
                        <strong>이용약관 동의</strong>
                    </div>
                    <div>
                        <textarea name="C-rsvOrder" id="C-rsvagree" cols="90" rows="3" disabled>
K-호텔 객실예약과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다.

<개인정보의 수집 · 이용에 관한 사항>
① 수집 이용 항목 | 카드정보(카드종류, 카드번호, 유효기간)
② 수집 이용 목적 | 호텔 객실 예약 시 저장하신 결제정보 활용
* 신용카드 정보 수집으로 직접 결제가 이루어지는 것은 아니며, 다음 호텔 객실 예약 이용 시 카드정보를 다시 입력하지 않아도 되는 편의 제공 목적입니다.

③ 보유 이용 기간 | 예약일 후 1년
※ 위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 다음 호텔 객실 및 서비스 결제 시, 다시 해당 결제 정보를 입력해야 함을 알려드립니다.</textarea>
                    </div>
                    <div>
                        <label for="C-revAgreeYes">동의함</label>&nbsp;&nbsp;<input type="radio" name="C-revAgree" value="C-rsv-agree-yes" id="C-revAgreeYes"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <label for="C-revAgreeNo">동의하지 않음</label>&nbsp;&nbsp;<input type="radio" name="C-revAgree" value="C-rsv-agree-yes" id="C-revAgreeNo" >
                    </div>
                </div>
                <span class="C-rsv-bottom-btn">
                    <button type="button" id="C-rsvBeforeBtn"><a href="RoomChoice.html">이전으로</a></button>
                    <button type="submit" id="C-rsvClearBtn">예약 완료</button>
                </span>
            </div>
        </div>
    </form>

    <!----------------------------------------바디 --------------------------------------------->

    <!----------------------------------------풋터 --------------------------------------------->
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    <!----------------------------------------풋터 --------------------------------------------->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
    <script src="resources/js/header.js"></script>
    <script src="resources/js/reservationFinal.js"></script>
</body>

</html>