<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>아이디어스 | 주소(배송지) 관리</title>
    <link rel="stylesheet" href="resources/css/mypage.css"/>
    <link rel="stylesheet" href="resources/css/idus.web.min.css"/>
    <link rel="stylesheet" href="resources/css/vendor.client.min.css"/>
    
    <link rel="stylesheet" href="//cdn.flowplayer.com/releases/native/v2.5.14/style/flowplayer.css">
    
    <script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
	

<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
</head>
    <body>
        <div class="wrap">
        <jsp:include page="../header_goods.jsp"/>
                        
<div class="dimmed-background"></div><!-- 회원정보관리 -->
<div id="content" class="content" data-page="mypageinfo address">
    <div class="inner-w layout-split" data-layout-split="orderlist">
       <aside class="my-info">
					<!--메뉴바-->
					<div class="profile-area">
						<div class="outline">
							<label data-profile="image" class="img-bg profile-img"
								style="background-image: url(https://image.idus.com/image/files/d247655ca3e545e89a48a43aa9318b3f.jpg)">
								<input data-change-profile="image" type="file" name="image"
								id="profile-image" class="profile-image-input"
								accept=".png, .jpg, .jpeg"> <span class="link-style">수정</span>

								<a href="/w/me/profile/image" data-modal-trigger="modal-link"
								data-modal-id="modal-profile" class="profile-modal-open"
								style="visibility: hidden">이미지 변경 모달</a>
							</label>
						</div>
						<div class="area-txt">
							<a href="mypage_level.do"> <span class="sp-icon grade-01-s"></span>
								<span>아기손 &gt;</span>
							</a> <strong data-profile="name">${user_name}</strong>
						</div>
					</div>

					<div class="my-point clf">
						<a href="mypage_point.do" class="inner fl"> <span class="label">적립금</span>
							<em>0 P</em>
						</a> <a href="mypage_coupon.do" class="fr"> <span class="label">쿠폰</span>
							<em>2</em>
						</a>
					</div>
					<div data-vue="frequency-event-mobile"></div>
					<div class="my-menu">
						<em>MY MENU</em>
						<nav>
							<b> <span>주문 배송</span>
							</b> <a href="mypage_order_goods.do" class="">주문내역</a> <a
								href="mypage_goods_order_return.do" class="">취소/환불내역</a> <b> <span>알림
									및 메시지</span>
							</b> <a href="alarm.do" class="">알림</a> <a href="message.do"
								class="">메시지</a> <b> <span>나의 구매후기</span>
							</b> <a href="mypage_review_before.do" class="">후기 쓰기</a> <a
								href="mypage_review_after.do" class="">내가 쓴 후기</a> <b> <span>관심리스트</span>
							</b> <a href="mypage_interest_goods.do" class="">찜 목록</a> <a
								href="mypage_follow.do" class="">팔로우하는 작가</a> <a
								href="mypage_recent.do" class="">최근 본 작품</a>
								 <b> <span>할인혜택</span>
							</b> <a href="mypage_coupon.do" class="">쿠폰함</a> <a href="mypage_point.do"
								class="">적립금</a> 
							<b> <span>내 정보</span></b>
								<a href="mypage_level.do" class="">회원 등급</a>
								<a href="mypage_info.do" class="">회원 정보 관리</a>
								<a href="mypage_address.do" class="">주소 (배송지) 관리</a> 
								<a href="mypage_address.do" class="">주소(배송지) 관리</a>
						</nav>
					</div>
				</aside>
        <section>
            <div class="title-style no-mt clf">
                <a href="#" class="txt fl">주소(배송지) 관리</a>
            </div>

			<form class="form-address" action="mypage_address.do" method="post" onsubmit="return false">
                <input type="hidden" name="address_uuid" value="c89bec8d-2490-4686-a697-5dd1f6aaf1c6">
                <div class="section-address">
                    <table class="table-style-head-top">
                        <thead>
                            <tr>
                                <th>배송지 1</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr id="adress_one">
                                <td>
                                    <div class="address-info root">
                                        <div class="address-info item">
                                            <div class="address-info head">
                                                <em class="asterisk red">∗</em>
                                                <label for="receiver">받는분</label>
                                            </div>
                                            <div class="address-info body">
                                                <div class="input-text">
                                                    <input
                                                        class="readonly delivery_name"
                                                        data-address="delivery_name"
                                                        name="delivery_name"
                                                        id="first_name"
                                                        value="${adr1.user_name}"
                                                        type="text"
                                                        required
                                                        autocomplete="off"
                                                        readonly
                                                        placeholder="받는분 이름을 입력해주세요."
                                                    >
                                                </div>
                                            </div>
                                        </div>

                                        <div class="address-info item">
                                            <div class="address-info head">
                                                <em class="asterisk red">∗</em>
                                                <label for="receiver">전화번호</label>
                                            </div>
                                            <div class="address-info body">
                                                <div class="input-text">
                                                    <input
                                                        class="readonly delivery_phone"
                                                        data-address="delivery_phone"
                                                        name="delivery_phone"
                                                        id="first_phone"
                                                        value="${adr1.user_phone}"
                                                        type="text"
                                                        required
                                                        autocomplete="off"
                                                        readonly
                                                        placeholder="전화번호를 입력해주세요"
                                                    >
                                                </div>
                                            </div>
                                        </div>

                                        <div class="address-info item">
                                            <div class="address-info head">
                                                <em class="asterisk red">∗</em>
                                                <label for="receiver">주소</label>
                                            </div>
                                            <div class="address-info body">
                                                        <div class="address-ui root">
            <div class="address-ui address">
                <div class="address-ui row">
                    <div class="input-text address-zip-code">
                        <input
                            data-address="delivery_zipcode"
                            type="text"
                            name="delivery_zipcode"
                            id="first_zipcode"
                            value="${adr1.user_zipcode}"
                            placeholder="우편번호"
                            required
                            autocomplete="off"
                            readonly
                                                            class="readonly delivery_zipcode"
                                                    >
                    </div>
                    <button
                                                    style="display: none"
                                                data-address="open"
                        class="btn btn-m btn-white"
                        type="button"
                    >주소 찾기</button>

                    <!-- 다음주소 layer -->
                    <div
                        class="daum-post-layer"
                        style="display:none;position:relative;width:auto;margin-top:10px;overflow:auto;-webkit-overflow-scrolling:touch;"
                    >
                        <img
                            src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
                            id="btnCloseLayer"
                            style="cursor:pointer;position:absolute;right:0;top:0;z-index:1"
                            alt="닫기 버튼"
                        >
                    </div>
                </div>

                <div class="address-ui row">
                    <div class="input-text address-address">
                        <input
                            data-address="delivery_address1"
                            type="text"
                            name="delivery_address1"
                            id="first_address1"
                            value="${adr1.user_address1}"
                            placeholder="기본 주소"
                            required
                            autocomplete="off"
                            readonly
                                                            class="readonly delivery_address1"
                                                    >
                    </div>
                </div>
                <div class="address-ui row">
                    <div class="input-text address-address2">
                        <input
                            data-address="delivery_address2"
                            type="text"
                            name="delivery_address2"
                            id="first_address2"
                            value="${adr1.user_address2}"
                            autocomplete="off"
                            placeholder="나머지 주소"
                                                        class="readonly delivery_address2"
                            readonly
                                                    >
                    </div>
                </div>

            </div>
        </div>
												<div class="mt10" id="add-btn-first" data-edit-address="done" style="display: none">
												    <button class="btn btn-m btn-white" type="button" id="cancle_btn_first" data-edit-address-btn="cancel" onclick="updateCancle(this.id)">취소</button>
												    <button class="btn btn-m btn-point" type="submit" data-edit-address-btn="submit" id="save_btn_first" onclick="updateAddress(this.id)">저장</button>
												</div>

                                                <div class="mt10" data-edit-address="edit">
                                                    <button data-edit-address-btn="edit" class="btn btn-m btn-white" id="update_btn_first" type="button" onclick="updateBtn(this.id)">수정</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </form>
            <form class="form-address" action="mypage_address.do" method="post" onsubmit="return false">
                <input type="hidden" name="address_uuid" value="149ec997-c398-4c66-b57e-14be4960b47e">
                <div class="section-address">
                    <table class="table-style-head-top">
                        <thead>
                            <tr>
                                <th>배송지 2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr id="adress_second">
                                <td>
                                    <div class="address-info root">
                                        <div class="address-info item">
                                            <div class="address-info head">
                                                <em class="asterisk red">∗</em>
                                                <label for="receiver">받는분</label>
                                            </div>
                                            <div class="address-info body">
                                                <div class="input-text">
                                                    <input
                                                        class="readonly"
                                                        data-address="delivery_name"
                                                        name="delivery_name"
                                                        id="second_name"
                                                        value="${adr2.user_name}"
                                                        type="text"
                                                        required
                                                        autocomplete="off"
                                                        readonly
                                                        placeholder="받는분 이름을 입력해주세요."
                                                    >
                                                </div>
                                            </div>
                                        </div>

                                        <div class="address-info item">
                                            <div class="address-info head">
                                                <em class="asterisk red">∗</em>
                                                <label for="receiver">전화번호</label>
                                            </div>
                                            <div class="address-info body">
                                                <div class="input-text">
                                                    <input
                                                        class="readonly"
                                                        data-address="delivery_phone"
                                                        name="delivery_phone"
                                                        id="second_phone"
                                                        value="${adr2.user_phone}"
                                                        type="text"
                                                        required
                                                        autocomplete="off"
                                                        readonly
                                                        placeholder="전화번호를 입력해주세요"
                                                    >
                                                </div>
                                            </div>
                                        </div>

                                        <div class="address-info item">
                                            <div class="address-info head">
                                                <em class="asterisk red">∗</em>
                                                <label for="receiver">주소</label>
                                            </div>
                                            <div class="address-info body">
                                                        <div class="address-ui root">
            <div class="address-ui address">
                <div class="address-ui row">
                    <div class="input-text address-zip-code">
                        <input
                            data-address="delivery_zipcode"
                            type="text"
                            name="delivery_zipcode"
                            id="second_zipcode"
                            value="${adr2.user_zipcode}"
                            placeholder="우편번호"
                            required
                            autocomplete="off"
                            readonly
                                                            class="readonly"
                                                    >
                    </div>
                    <button
                                                    style="display: none"
                                                data-address="open"
                        class="btn btn-m btn-white"
                        type="button"
                    >주소 찾기</button>

                    <!-- 다음주소 layer -->
                    <div
                        class="daum-post-layer"
                        style="display:none;position:relative;width:auto;margin-top:10px;overflow:auto;-webkit-overflow-scrolling:touch;"
                    >
                        <img
                            src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
                            id="btnCloseLayer"
                            style="cursor:pointer;position:absolute;right:0;top:0;z-index:1"
                            alt="닫기 버튼"
                        >
                    </div>
                </div>

                <div class="address-ui row">
                    <div class="input-text address-address">
                        <input
                            data-address="delivery_address1"
                            type="text"
                            name="delivery_address1"
                            id="second_address1"
                            value="${adr2.user_address1}"
                            placeholder="기본 주소"
                            required
                            autocomplete="off"
                            readonly
                                                            class="readonly"
                                                    >
                    </div>
                </div>
                <div class="address-ui row">
                    <div class="input-text address-address2">
                        <input
                            data-address="delivery_address2"
                            type="text"
                            name="delivery_address2"
                            id="second_address2"
                            value="${adr2.user_address2}"
                            autocomplete="off"
                            placeholder="나머지 주소"
                                                        class="readonly"
                            readonly
                                                    >
                    </div>
                </div>

            </div>
        </div>
                                                        <div class="mt10" id="add-btn-second" data-edit-address="done" style="display: none">
                                                    <button
                                                        class="btn btn-m btn-white"
                                                        type="button"
                                                        data-edit-address-btn="cancel"
                                                        id="cancle_btn_second"
                                                        onclick="updateCancle(this.id)"
                                                    >취소</button>
                                                    <button
                                                        class="btn btn-m btn-point"
                                                        type="submit"
                                                        data-edit-address-btn="submit"
                                                        id="save_btn_second" 
                                                        onclick ="updateAddress(this.id)"
                                                    >저장</button>
                                                </div>

                                                <div class="mt10" data-edit-address="edit">
                                                    <button
                                                        data-edit-address-btn="edit"
                                                        class="btn btn-m btn-white"
                                                        type="button"
														id="update_btn_second"
														onclick="updateBtn(this.id)"
                                                    >수정</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </form>
            <form class="form-address" action="mypage_address.do" method="post" onsubmit="return false">
                <input type="hidden" name="address_uuid" value="4b74b41c-870a-4c02-8d93-66bd5566997e">
                <div class="section-address">
                    <table class="table-style-head-top">
                        <thead>
                            <tr>
                                <th>배송지 3</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr  id="adress_third">
                                <td>
                                    <div class="address-info root">
                                        <div class="address-info item">
                                            <div class="address-info head">
                                                <em class="asterisk red">∗</em>
                                                <label for="receiver">받는분</label>
                                            </div>
                                            <div class="address-info body">
                                                <div class="input-text">
                                                    <input
                                                        class="readonly"
                                                        data-address="delivery_name"
                                                        name="delivery_name"
                                                        id="third_name"
                                                        value="${adr3.user_name}"
                                                        type="text"
                                                        required
                                                        autocomplete="off"
                                                        readonly
                                                        placeholder="받는분 이름을 입력해주세요."
                                                    >
                                                </div>
                                            </div>
                                        </div>

                                        <div class="address-info item">
                                            <div class="address-info head">
                                                <em class="asterisk red">∗</em>
                                                <label for="receiver">전화번호</label>
                                            </div>
                                            <div class="address-info body">
                                                <div class="input-text">
                                                    <input
                                                        class="readonly"
                                                        data-address="delivery_phone"
                                                        name="delivery_phone"
                                                        id="third_phone"
                                                        value="${adr3.user_phone}"
                                                        type="text"
                                                        required
                                                        autocomplete="off"
                                                        readonly
                                                        placeholder="전화번호를 입력해주세요"
                                                    >
                                                </div>
                                            </div>
                                        </div>

                                        <div class="address-info item">
                                            <div class="address-info head">
                                                <em class="asterisk red">∗</em>
                                                <label for="receiver">주소</label>
                                            </div>
                                            <div class="address-info body">
                                                        <div class="address-ui root">
            <div class="address-ui address">
                <div class="address-ui row">
                    <div class="input-text address-zip-code">
                        <input
                            data-address="delivery_zipcode"
                            type="text"
                            name="delivery_zipcode"
                            id="third_zipcode"
                            value="${adr3.user_zipcode}"
                            placeholder="우편번호"
                            required
                            autocomplete="off"
                            readonly
                                                            class="readonly"
                                                    >
                    </div>
                    <button
                                                    style="display: none"
                                                data-address="open"
                        class="btn btn-m btn-white"
                        type="button"
                    >주소 찾기</button>

                    <!-- 다음주소 layer -->
                    <div
                        class="daum-post-layer"
                        style="display:none;position:relative;width:auto;margin-top:10px;overflow:auto;-webkit-overflow-scrolling:touch;"
                    >
                        <img
                            src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
                            id="btnCloseLayer"
                            style="cursor:pointer;position:absolute;right:0;top:0;z-index:1"
                            alt="닫기 버튼"
                        >
                    </div>
                </div>

                <div class="address-ui row">
                    <div class="input-text address-address">
                        <input
                            data-address="delivery_address1"
                            type="text"
                            name="delivery_address1"
                            id="third_address1"
                            value="${adr3.user_address1}"
                            placeholder="기본 주소"
                            required
                            autocomplete="off"
                            readonly
                                                            class="readonly"
                                                    >
                    </div>
                </div>
                <div class="address-ui row">
                    <div class="input-text address-address2">
                        <input
                            data-address="delivery_address2"
                            type="text"
                            name="delivery_address2"
                            id="third_address2"
                            value="${adr3.user_address2}"
                            autocomplete="off"
                            placeholder="나머지 주소"
                                                        class="readonly"
                            readonly
                                                    >
                    </div>
                </div>

            </div>
        </div>

                                                        <div class="mt10" id="add-btn-third" data-edit-address="done" style="display: none">
                                                    <button
                                                        class="btn btn-m btn-white"
                                                        type="button"
                                                        data-edit-address-btn="cancel"
                                                        id="cancle_btn_third"
                                                        onclick="updateCancle(this.id)"
                                                    >취소</button>
                                                    <button
                                                        class="btn btn-m btn-point"
                                                        type="submit"
                                                        data-edit-address-btn="submit"
                                                        id="save_btn_third"
                                                        onclick = "updateAddress(this.id)"
                                                    >저장</button>
                                                </div>

                                                <div class="mt10" data-edit-address="edit">
                                                    <button
                                                        data-edit-address-btn="edit"
                                                        class="btn btn-m btn-white"
                                                        type="button"
                                                        id="update_btn_third"
														onclick="updateBtn(this.id)"
                                                    >수정</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </form>
                    </section>
    </div>
</div>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<a href="#header" class="to-top" data-ui="scroll-to-top" data-page="">
    <img src="/resources/dist/images/go-to-top-image.png" alt="go to top">
</a>
<jsp:include page="../footer.jsp"/>


        </div>
        <!-- div WRAP -->
        
        <script type="text/javascript" src="resources/js/mypage.js"></script>
    </body>
</html>
