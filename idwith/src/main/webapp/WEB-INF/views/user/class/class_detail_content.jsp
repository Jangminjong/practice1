<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<!--[if lt IE 7]><html class="lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if IE 7]><html class="lt-ie9 lt-ie8"><![endif]-->
<!--[if IE 8]><html class="lt-ie9"><![endif]-->
<!--[if gt IE 8]><html class="ie9"><![endif]-->
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="naver-site-verification"
	content="a8c6e5633b597db7b48d05e4a7d247011f6794ec" />
<meta name="google-site-verification"
	content="NnaPRa-jWBb5SnBiwjEZkMqm1pFS2Y8mVdUG0nJqO4c" />
<title>${classVO.class_open_name } | 아이디위드 - 핸드메이드, 수공예, 수제 먹거리</title>
<link rel="stylesheet" href="resources/css/detail_content.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

<script type="text/javascript" src="resources/js/common/common.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/idus.web.min.js"></script>
<script type="text/javascript" src="resources/js/vendor.client.min.js"></script>
<script type="text/javascript" src="resources/js/vuepack.js"></script>
<script type="text/javascript" src="resources/js/detail_content.js"></script>

<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">

<meta name="theme-color" content="#ffffff" />
<link rel="manifest" href="/manifest.json">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=0 viewport-fit=cover" />
<meta name="application-name" content="아이디위드" />
<meta name="keywords" content="핸드메이드, 수공예, 수제 먹거리" />

<meta property="og:image"
	content="resources/images/category_class/${classVO.class_open_photo[0] }">
<meta property="og:title" content="${classVO.class_open_name }">
<meta property="og:description"
	content="${classVO.class_open_info }">
<meta property="og:url" content="">
<meta property="og:site_name" content="아이디위드">
<meta property="description"
	content="${classVO.class_open_info }">
<meta property="product:price:amount" content="${classVO.class_open_price }" />
<meta property="product:price:currency" content="KRW" />

<!-- project src -->
<link rel="icon" href="resources/favicon_32.ico" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<div class="wrap">
		<jsp:include page="../header_goods.jsp"/>
		
		<div class="dimmed-background"></div>

		<section class="ui-img-viewer" data-ui="img-viewer"
			style="display: none">
			<span class="close"></span>
			<div class="ui-slider view-main" data-resize="true" data-zoom="false">
				<div class="outer-frame current-view">
					<ul class="inner-frame"></ul>
				</div>
				<fieldset class="ui-control">
					<button type="button" class="ui-btn prev" aria-label="이전">
						<i class="fa fa-2x fa-angle-left" aria-hidden="true"></i>
					</button>
					<ul class="indicator thumb-list"></ul>
					<button type="button" class="ui-btn next" aria-label="다음">
						<i class="fa  fa-angle-right" aria-hidden="true"></i>
					</button>
				</fieldset>
			</div>
		</section>

		<div id="content" class="content relative" data-page="prd-detail">
			<div class="inner-w mobile-full" id="edu_artist">
				<section id="img-section" class="prd-detail-section">
					<!-- ui image preview -->
					<div class="image-preview ui-slider edu-spacing" data-ui="slider">
						<div class="outer-frame">
							<ul class="img-view inner-frame">
							<c:forEach var="photo" items="${classVO.class_open_photo}">
								<li class="ui-slide" data-trigger-preview="open"
									style="background-image: url(resources/images/category_class/${photo})"></li>
							</c:forEach>
							</ul>
						</div>
						<fieldset class="ui-control">
							<button type="button" class="ui-btn prev" aria-label="이전">
								<i class="fa fa-arrow-left" aria-hidden="true"></i>
							</button>
							<!-- 사진 슬라이드 하단의 작은 미리보기들 -->
							<ul class="img-list indicator" data-size="${fn:length(classVO.class_open_photo) }">
								<c:forEach var="photo" items="${classVO.class_open_photo}">
								<li class="indicator-btn active"
									style="background-image: url(resources/images/category_class/${photo})">
								</li>
								</c:forEach>
							</ul>
							<button type="button" class="ui-btn next" aria-label="다음">
								<i class="fa fa-arrow-right" aria-hidden="true"></i>
							</button>
						</fieldset>
					</div>
				</section>

				<!-- ui-product-detail -->
				<aside class="sticky_aside" data-ui="sticky_aside"
					data-state="" data-offset="36" data-stick="false">

					<small class="sticky_aside__small">${classVO.class_category_name }</small>
					<h2 class="sticky_aside__title">${classVO.class_open_name }</h2>

					<!-- artist_card -->
					<!-- artist_card -->
					<div class="artist_card">
						<div class="artist_card__split">
							<a class="artist_card__link"
								href="seller_goods.do">
								<div class="artist_card__img"
									style="background-image: url(resources/images/seller_profile/${sellerVO.seller_profile_img[0]});"></div>
								<span class="artist_card__label"> ${sellerVO.store_name }
									<i class="fa fa-arrow-right" aria-hidden="true"></i>
							</span>
							</a>
						</div>
						<div class="artist_card__split"></div>
					</div>

					<!-- price_tag -->
					<div class="price_tag">
						 <span class="price_tag__strong"> <strong class="sold-price">${classVO.class_open_price }</strong>원
						</span>
						
					</div>

					<!-- <div class="prd-stats">0명의 고객님들이 금손 클래스를 구경했어요!</div> -->

					<!-- user interaction -->
					<fieldset class="btn-group">
						<button type="button" class="ui_btn " aria-label="찜하기"
							data-ui="stats-star" data-starred-type="edu"
							data-target-id="3063" data-state="" data-stats-artist="2310246"
							data-stats-category-depth1="6" data-stats-category-depth2="40">
							<i class="fa fa-heart-o" aria-hidden="true"></i> <span>찜하기
							</span> <em data-ui="like-count" data-id="#" data-endpoint="#"></em>
						</button>
						<button type="button" class="ui_btn" data-ui="url-copy"
							data-ui-option="short" data-icon-event="hover"
							data-clipboard-message="작품 URL이 복사되었습니다." data-target-id="3063"
							data-stats-artist="2310246" data-stats-category-depth1="6"
							data-stats-category-depth2="40">
							<i class="fa fa-share-alt" aria-hidden="true"></i> <span>공유하기</span>
						</button>
					</fieldset>

					<div class="def_group">
						<dl>
							<dt>난이도</dt>
							<dd>${classVO.class_open_difficult }</dd>
						</dl>
						<dl>
							<dt>소요시간</dt>
							<dd>${classVO.time }</dd>
						</dl>
						<dl>
							<dt>수업인원</dt>
							<dd>${classVO.class_open_max_person }</dd>
						</dl>
					</div>

					<fieldset class="btn-group mobile_bottom_container--fix">
						<div class="btn_width_wrap">
							<div data-v-29616b27="">
								<fieldset data-v-29616b27="">
									<button data-v-29616b27="" class="ui_btn--red--large" onclick="openCalendar();">
										예약하기</button>
								</fieldset>
								
								
								<!-- 
									<div data-v-29616b27="" class="vue-curtain" id="vue-curtain" style="display: none;"></div>
									<div data-v-29616b27="" class="ui_modal" id="ui_modal" style="display: none">
								 -->
								<!-- 달력 부분 -->
								<div data-v-29616b27="" class="vue-curtain" id="calendar_background" style="display:none;"></div>
								<div data-v-29616b27="" class="ui_modal" id="calendar" style="display:none;">
									<button data-v-29616b27="" type="button"
										class="ui_modal__crossbtn" onclick="closeCalendar();">×</button>
									<h2 data-v-29616b27="" class="ui_modal__title">언제 참여하고
										싶나요?</h2>
									<div data-v-29616b27="" class="fluid" style="display:flex; justify-content:space-between;">
										<div class="container">
            
            <div id="div_calendar" style="width:300px;">
              <div>
                <button type="button" onclick="changeMonth(-1);"><i class="fa fa-chevron-left"></i></button>
                <input type="number" id="year" value="2020" style="width:80px;display:initial;" class="form-control" />
                <select id="month" class="form-control" style="width:80px;display:initial;" onchange="changeMonth();">
                  <option value="1">1월</option>
                  <option value="2">2월</option>
                  <option value="3">3월</option>
                  <option value="4">4월</option>
                  <option value="5">5월</option>
                  <option value="6">6월</option>
                  <option value="7">7월</option>
                  <option value="8">8월</option>
                  <option value="9">9월</option>
                  <option value="10">10월</option>
                  <option value="11">11월</option>
                  <option value="12">12월</option>
                </select>
                <button type="button" onclick="changeMonth(1);"><i class="fa fa-chevron-right"></i></button>
              </div>
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th>일</th>
                    <th>월</th>
                    <th>화</th>
                    <th>수</th>
                    <th>목</th>
                    <th>금</th>
                    <th>토</th>
                  </tr>
                </thead>
                <tbody id="tb_body"></tbody>
              </table>
            </div>
          </div>
          <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
										
										
										
										<div data-v-29616b27="" class="form_container" style="width:100%;">
											<form data-v-29616b27="">
												<dl data-v-29616b27="" class="border_block">
													<dt data-v-29616b27="">
														<strong data-v-29616b27="">2021년 9월 17일 (금)</strong>
														<input type="text" id="input_date" value="${classVO.class_open_date }" />
													</dt>
													<dd data-v-29616b27="">
														<!---->
													</dd>
												</dl>
												<div data-v-1e70de7c="" data-v-29616b27="">
													<dl data-v-29616b27="" data-v-1e70de7c=""
														class="border_block no_top">
														<dt data-v-29616b27="" data-v-1e70de7c="">
															<strong data-v-29616b27="" data-v-1e70de7c="">시간
																선택</strong>
														</dt>
														<dd data-v-29616b27="" data-v-1e70de7c="">
															<i data-v-29616b27="" data-v-1e70de7c=""
																class="idus-icon-arrow-up"></i>
														</dd>
													</dl>
													<ul data-v-29616b27="" data-v-1e70de7c=""
														class="options_list">
														<li data-v-29616b27="" data-v-1e70de7c="" class=""><span
															data-v-29616b27="" data-v-1e70de7c="">오전 10:00 ~
																오후 1:00</span>
															<dl data-v-29616b27="" data-v-1e70de7c="">
																<dt data-v-29616b27="" data-v-1e70de7c="">47,500원</dt>
																<dd data-v-29616b27="" data-v-1e70de7c="" class="">
																	0/2</dd>
															</dl></li>
														<li data-v-29616b27="" data-v-1e70de7c="" class=""><span
															data-v-29616b27="" data-v-1e70de7c="">오후 2:00 ~ 오후
																5:00</span>
															<dl data-v-29616b27="" data-v-1e70de7c="">
																<dt data-v-29616b27="" data-v-1e70de7c="">47,500원</dt>
																<dd data-v-29616b27="" data-v-1e70de7c="" class="">
																	0/2</dd>
															</dl></li>
														<li data-v-29616b27="" data-v-1e70de7c="" class=""><span
															data-v-29616b27="" data-v-1e70de7c="">오후 7:00 ~ 오후
																10:00</span>
															<dl data-v-29616b27="" data-v-1e70de7c="">
																<dt data-v-29616b27="" data-v-1e70de7c="">47,500원</dt>
																<dd data-v-29616b27="" data-v-1e70de7c="" class="">
																	0/2</dd>
															</dl></li>
													</ul>
												</div>
												<dl data-v-29616b27="" class="border_block vam">
													<dt data-v-29616b27="">
														<strong data-v-29616b27="">인원</strong>
													</dt>
													<dd data-v-29616b27="">
														<label data-v-9b324a5a="" data-v-29616b27="" for="counter"
															class="NumberCounter"><button data-v-9b324a5a=""
																type="button" disabled="disabled"
																class="NumberCounter__button">-</button> <input
															data-v-9b324a5a="" name="counter" type="text"
															disabled="disabled" class="NumberCounter__input">
															<button data-v-9b324a5a="" type="button"
																disabled="disabled" class="NumberCounter__button">
																+</button></label>
													</dd>
												</dl>
												<!---->
												<div data-v-29616b27="" class="ui_bottom">
													<!---->
													<button data-v-29616b27="" type="submit"
														disabled="disabled" class="ui_btn--red">
														<!---->
														<span data-v-29616b27="">결제하기</span>
													</button>
												</div>
											</form>
										</div>
									</div>
								</div>
								
								
							</div>
						</div>
						<button type="button" class="ui_btn mobile-show " aria-label="찜하기"
							data-ui="stats-star" data-starred-type="edu" data-target-id="491"
							data-state="" data-stats-artist="4114379"
							data-stats-category-depth1="4" data-stats-category-depth2="28">
							<i class="idus-icon-favorite-border-p-5" style="font-size: 24px;"></i>
						</button>
					</fieldset>
				</aside>
				<a data-vue-ref="artist_message_url"
					href="message_detail.do?msgd_id=${sellerVO.seller_code }"
					class="artist-inquire-float-btn" target="_blank"
					data-ui="inquire-float-btn" style="bottom: 102px;"> <img
					src="resources/images/seller_profile/artist-inquire-icon.svg"
					style="bottom: 102px;">
				</a>
			</div>

			<div data-trigger="fixposition"></div>
			<div class="inner-w">
				<nav class="nav_style_5 mobile-hide" data-ui-position="default"
					data-ui="tab-control">
					<a href="#edu-info" data-id="edu-info" class="active">소개</a> <a
						href="#edu-location" data-id="edu-location">장소</a> <a
						href="#edu-comment" data-id="edu-comment">댓글</a> <a
						href="#edu-artist" data-id="edu-artist">작가정보</a>
				</nav>
				<!-- 소개 -->
				<section id="edu-info" class="article_block prd-detail-section"
					data-scroll="hashChecker">
					<div class="article_block__header">
						<h3 class="article_block__title">
							안녕하세요. <br>${sellerVO.store_name } 입니다.
						</h3>
						<div>
							<a href="seller_goods.do?seller_code=${sellerVO.seller_code }"
								target="_blank" class="article_block__circle"
								style="background-image: url(resources/images/seller_profile/${sellerVO.seller_profile_img[0]});"></a>
						</div>
					</div>
					<!-- 클래스 소개 -->
					<h3 class="article_block__subtitle">제가 진행할 금손 클래스는...</h3>
					<p class="article_block__para">
						${classVO.class_open_info }
					</p>
					<!-- 주요대상 -->
					<!-- <h3 class="article_block__subtitle">이런 분들에게 추천드려요!</h3>
					<p class="article_block__para">- 천연비누에 관심이 많아 배우고 싶으신 분 - 건강한
						두피를 위한 약산성 샴푸에 관심이 많으신 분 - 손으로 만드는 핸드메이드가 좋으신 분 - 나와 가족이 쓸 샴푸바를
						만들고 싶으신 분</p> -->
					<!-- 메모 -->
					<!-- <h3 class="article_block__subtitle">메모</h3>
					<p class="article_block__para">- 경복궁역 2번 출구에서 도보 5분 거리입니다. - 일정
						협의 가능합니다. (메시지로 문의 주세요!) - 수강료는 재료비 포함 가격입니다. - 소요시간은 개인차가 있어 변동될
						수 있습니다.</p> -->
				</section>
				<!-- 장소 -->
				<section id="edu-location" class="article_block prd-detail-section"
					data-scroll="hashChecker">
					<h3 class="article_block__subtitle">장소 및 편의시설</h3>
					<div data-vue="map"></div>
					<div class="map__labelbox">
						<strong>${classVO.class_open_address }</strong> <span>정확한 위치는 예약 완료 시 확인할 수 있습니다.</span>
					</div>

					<div class="hashtag-box">
						<div class="center-txt">
							<span class="txt">Category &amp; Keyword</span> <a
								class="txt-strong" href="class_category.do?class_open_address=${classVO.class_open_category }">${classVO.class_category_name }</a>
						</div>
					</div>

					<div class="tab-style" data-ui="toggle-tab">
						<div class="split">
							<div class="tab active" data-ui-id="info-refund">
								<span>취소 및 환불 정책</span> <i class="fa fa-angle-down"></i>
							</div>
							<table class="table-style column active" data-ui="tab-panel"
								data-panel-id="info-refund">
								<colgroup>
									<col width="30%">
									<col width="*">
								</colgroup>
								<tbody>
									<tr>
										<th>클래스 5일 전 취소 시</th>
										<td><span style="color: #22a7af">100%</span> 환불</td>
									</tr>
									<tr>
										<th>클래스 4일 전 취소 시</th>
										<td>클래스 금액의 <span style="color: #22a7af">5%</span> 차감 후
											환불
										</td>
									</tr>
									<tr>
										<th>클래스 3일 전 취소 시</th>
										<td>클래스 금액의 <span style="color: #22a7af">10%</span> 차감 후
											환불
										</td>
									</tr>
									<tr>
										<th>클래스 2일 전 취소 시</th>
										<td>클래스 금액의 <span style="color: #22a7af">20%</span> 차감 후
											환불
										</td>
									</tr>
									<tr>
										<th>클래스 1일 전 취소 시</th>
										<td>클래스 금액의 <span style="color: #22a7af">30%</span> 차감 후
											환불
										</td>
									</tr>
									<tr>
										<th>클래스 당일 취소나 불참 시</th>
										<td><span style="color: #c74f48">환불 불가</span></td>
									</tr>
									<tr>
										<th>예약 당일 밤 12시 이전 취소 시</th>
										<td><span style="color: #22a7af">100%</span> 환불</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</section>
			</div>

			<!-- 작가 정보 -->
			<div class="full-w bg-gray" id="edu-artist"
				class="prd-detail-section" data-scroll="hashChecker">
				<div id="sticky-end" class="inner-w banner-artist clf layout-split "
					data-layout-split="artist-banner" data-trigger="nav-end" style="margin-top: 48px;">
					<div class="ui_grid">
						<div class="title-style-sub">
							<h1 class="txt">작가님의 다른 금손 클래스</h1>
							<!-- <a href="#" class="to-right btn btn-xs btn-white">더보기</a> -->
						</div>

						<ul class="ui_grid__cols--4">
						<c:forEach var="class_" items="${classList }">
							<li class="ui_grid__item">
								<div class="ui_card--white loadevent" data-ui="eduCard"
									data-target-id="970" data-stats-artist="2310246"
									data-stats-category-depth1="6" data-stats-category-depth2="40"
									data-lazy-loaded="false" data-logging="edu_list_item">
									<span class="ui_card__overlay--label">${class_.class_open_address }</span>

									<button type="button"
										class="ui_card__overlay btn-ico sp-icon icon-favorite "
										aria-label="좋아하는 클래스 추가" data-ui="stats-star"
										data-starred-type="edu" data-target-id="970"
										data-stats-artist="2310246" data-stats-category-depth1="6"
										data-stats-category-depth2="40" data-state=""></button>
									<div class="ui_card__imgcover">
										<a href="class_detail_content.do" target="_blank" class="ui_card__img"
											data-lazy-img="resourecs/images/category_class/${class_.class_open_photo[0] }"
											style="background-image: url(resourecs/images/category_class/${class_.class_open_photo[0] });">
										</a>
									</div>
									<div class="ui_card__txtarea">
										<div class="ui_card__info">
											<a href="class_detail_content.do" target="_blank" class="ui_card__label">${class_.class_category_name }</a>
											<a href="class_detail_content.do" target="_blank" class="ui_card__title"><b>
													${class_.class_open_name}</b></a>
										</div>
										<div class="ui_card__rating">
											<div class="ui_card__vcenter">
												<div class="ui_rating" data-ui="rating" data-value="5">
													<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
													<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
													<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
													<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
													<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
													 <em
														class="ui_rating__label">(4)</em>
												</div>
											</div>
										</div>
									</div>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>

					<!-- ArtistCard -->
					<div class="card-style-profile  ">
						<div class="bordering">
							<div class="split">
								<div class="img-bg"
									style="background-image: url(resources/images/seller_profile/${sellerVO.seller_profile_img[0]})">
								</div>
								<a href="/studioheulin" target="" class="img-profile"
									style="background-image: url(resources/images/seller_profile/${sellerVO.seller_profile_img[1]});">
								</a>
							</div>
							<div class="split">
								<div class="area-txt">
									<a href="/studioheulin" class="title" target="">${sellerVO.store_name }</a>
									<div class="ui_rating" data-ui="rating" data-value="5">
										<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
										<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
										<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
										<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
										<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
									</div>
									<p class="desc">${sellerVO.seller_profile }</p>
								</div>
								<div class="area-btns">
									<div class="col">
										<a href="#" class="btn btn-s btn-white toggle-heart"
											data-name="starred-toolbar" data-starred-type="artist"
											data-init="" data-starred="" target=""
											data-target-id="8329ae04-a7ae-4b1f-9413-2c9b5a716144"> <em
											class="txt">팔로우</em> <em class="txt active">팔로우하는 작가</em>
										</a>
									</div>
									<div class="col">
										<a class="btn btn-s btn-white" target="" href="seller_goods.do?seller_code=${sellerVO.seller_code }">
											작가 홈 </a>
									</div>
									<a href="message_detail.do?msgd_id=${sellerVO.seller_code }"
										target="" class="btn btn-s btn-white full-w"> 메시지 보내기 </a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

		<div data-vue="ToastPopup"></div>
		<div data-vue="BottomSheet"></div>
		<div data-vue="WideBottomSheet"></div>
		<div data-vue="FooterModal"></div>
		<div data-vue="InactiveToast"></div>
		<a href="#header" class="to-top" data-ui="scroll-to-top" data-page=""
			style="display: flex;"> <img
			src="resources/images/common/go-to-top-image.png">
		</a>
		<jsp:include page="../footer.jsp" />
		
	</div>
	<!-- div WRAP -->
</body>
</html>
