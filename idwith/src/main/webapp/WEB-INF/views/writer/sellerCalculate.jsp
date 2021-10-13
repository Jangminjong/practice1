<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>IDWITH - 작가</title>
    <!-- Favicon-->
    <link rel="icon" href="resource/writer/images\tabIcon.png">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="resources/writer/plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="resources/writer/plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="resources/writer/plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- Morris Chart Css-->
    <link href="resources/writer/plugins/morrisjs/morris.css" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="resources/writer/css/style.css" rel="stylesheet">

    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="resources/writer/css/themes/all-themes.css" rel="stylesheet" />
</head>

<body class="theme-red">
    
   
    
    <div class="overlay"></div>
    
    <nav class="navbar bg-orange">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#navbar-collapse" aria-expanded="false"></a>
                <a href="javascript:void(0);" class="bars"></a>

                <a class="navbar-brand" href="main.wdo">
                <span class="align-middle">
                    <img src="resources/writer/images/logo.png"
                        style="margin-bottom: 0px; margin-top: -10px; margin-left: 10px; max-width: 100px; height: auto;">
                </span>
            </a>

            </div>

  <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                          <a href="logout.wdo">
                            <i class="material-icons">logout</i>
                          </a>
                        
                    </li>
                    
                    

                    <!-- #END# Tasks -->
                  <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button">
                             <i class="material-icons">delete</i>
                            <span class="label-count"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">입점취소 신청하기</li>
                            <li class="body text-center"><a href="">취소신청</a>
                                <ul class="menu">
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="javascript:void(0);">입점취소신청하기</a>
                            </li>
                           
                        </ul>
                    </li>
                    <!-- <li class="pull-right"><a href="javascript:void(0);" class="js-right-sidebar" data-close="true">
                      <i class="material-icons">delete</i></a>
                    </li>  -->
                </ul>
            </div>
        </div>
    </nav>
    <!-- #Top Bar -->
    <section>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
          
            <!-- #User Info -->
            <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    <li class="header">MAIN NAVIGATION</li>
                    <li class="active">
                        <a href="main.wdo">
                            <i class="material-icons">home</i>
                            <span>Home</span>
                        </a>
                    </li>
                    <li>
                        <a href="orderList.wdo">
                            <i class="material-icons">shopping_cart</i>
                            <span>주문관리</span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="orderClass.wdo">
                            <i class="material-icons">airplay</i>
                            <span>클래스 신청관리</span>
                        </a>
                    </li>

                    <li>
                        <a href="classOpen.wdo">
                            <i class="material-icons">date_range</i>
                            <span>클래스 오픈</span>
                        </a>
                    </li>

                    <li>
                        <a href="productManagement.wdo">
                            <i class="material-icons">shop_two</i>
                            <span>작품관리 / 등록</span>
                        </a>
                    </li>

                    <li>
                        <a href="classManagement.wdo">
                            <i class="material-icons">shop_two</i>
                            <span>클래스관리 / 등록</span>
                        </a>
                    </li>

                    <li>
                        <a href="review.wdo">
                            <i class="material-icons">thumbs_up_down</i>
                            <span>리뷰 관리</span>
                        </a>
                    </li>

                    <li>
                        <a href="writerStory.wdo">
                            <i class="material-icons">chat</i>
                            <span>작가 이야기</span>
                        </a>
                    </li>

                    <li>
                        <a href="couponRequest.wdo">
                            <i class="material-icons">more</i>
                            <span>쿠폰 발행요청</span>
                        </a>
                    </li>

                    <li>
                        <a href="writerSales.wdo">
                            <i class="material-icons">short_text</i>
                            <span>매출 확인</span>
                        </a>
                    </li>

                    <li>
                        <a href="sellerCalculate.wdo">
                            <i class="material-icons">star_rate</i>
                            <span>정산</span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="index.do">
                            <i class="material-icons">contact_page</i>
                            <span>Idwith</span>
                        </a>
                    </li>

                </ul>
            </div>

        </aside>

    </section>

    <section class="content">

        <h3>
            정산 요청
        </h3>

        
        

        <div class="container-fluid">

            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card" style="height:670px">
                     	<ul class="nav nav-tabs">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#qwe">상품 정산</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#asd">클래스 정산</a></li>
						</ul>

						<div class="tab-content">
							<div class="tab-pane fade show active" id="qwe">
								<div class="row" style="margin-bottom:5px;">
									<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
									 </div>
									 <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
									 </div>
									 <div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
								<button type="button" class="btn btn-warning" >
                                            영수증 출력
                                        </button>
                                      </div>
                                </div>
								<div class="body table-responsive">
		                            <table class="table table-striped">
		                                <thead>
		                                    <tr>
		                                        <th>No.</th>
		                                        <th>결제일</th>
		                                        <th>가격</th>
		                                        <th>후원금</th>
		                                        <th>수수료</th>
		                                        <th>정산금액</th>
		                                        <th>정산상황</th>
		                                        <th>정산</th>
		                                    </tr>
		                                </thead>
		                                <tbody>
		                                    <c:forEach var="goodsOrder" items="${goodsOrderList}" varStatus="i" >
												<tr>
													<th scope="row">${goodsTotal-((goodsPaging.nowPage-1)*10)-i.index}</th>
													<td><fmt:formatDate type="date" value="${goodsOrder.order_date}"/></td>
													<td><fmt:formatNumber type="number" value="${goodsOrder.order_detail_price}"/></td>
													<td><fmt:formatNumber type="number" value="${goodsOrder.order_detail_donation}"/></td>
													<td><fmt:formatNumber type="number" maxFractionDigits="0" value="${goodsOrder.order_detail_price*0.1}"/></td>
													<td><fmt:formatNumber type="number" maxFractionDigits="0" value="${goodsOrder.order_detail_price*0.9+goodsOrder.order_detail_donation}"/></td>
													
														<c:choose>
															<c:when test="${goodsOrder.order_detail_status eq 0}">
																<td><span class="badge bg-green" style="width: 90px;">정산 요청가능</span></td>
																<td>
																	<button type="button"  class="btn btn-warning" onclick="goodsCalcReq('${goodsOrder.order_detail_code}')">
																		정산요청</button>
																</td>
															</c:when>
															<c:when test="${goodsOrder.order_detail_status eq 1}">
																<td><span class="badge bg-gray" style="width: 90px;">정산 진행중</span></td>
																<td>
																	<button type="button" class="btn btn-warning"
																	disabled>정산요청</button>
																</td>
															</c:when>
															<c:when test="${goodsOrder.order_detail_status eq 2}">
																<td><span class="badge bg-black" style="width: 90px;">정산 완료</span></td>
																<td>
																	<button type="button" class="btn btn-warning"
																	disabled>정산요청</button>
																</td>
															</c:when>
														</c:choose>
											
												</tr>
											</c:forEach>
		                                    
		                                </tbody>
		                            </table>
		                        </div>
		                        <!-- 페이징 -->
								<div class="paging" >
								<div class="col-sm-9"></div>
								<div class="col-sm-3" id="paging">
									<div class="dataTables_paginate paging_simple_numbers"
										data-ui="paging" data-sync="false">
										<nav>
											<c:choose>
												<c:when test="${goodsPaging.nowPage eq 1 }">
													<span style="width: auto;">◀ 이전 |</span>
												</c:when>
												<c:when test="${goodsPaging.nowPage ne 1 }">
													<a
														href="sellerCalculate.wdo?goodsNowPage=${goodsPaging.nowPage - 1 }&goodsCntPerPage=${goodsPaging.cntPerPage}&classNowPage=${classPaging.nowPage }&classCntPerPage=${classPaging.cntPerPage}"
														style="width: auto;">◀ 이전 |</a>
												</c:when>
											</c:choose>
											<c:forEach begin="${goodsPaging.startPage }" end="${goodsPaging.endPage }" var="p">
												<c:choose>
													<c:when test="${p eq goodsPaging.nowPage }">
														<a
															href="sellerCalculate.wdo?goodsNowPage=${p }&goodsCntPerPage=${goodsPaging.cntPerPage}&classNowPage=${classPaging.nowPage}&classCntPerPage=${classPaging.cntPerPage}"
															class="active" onclick="return false">${p }</a>
													</c:when>
													<c:when test="${p ne goodsPaging.nowPage }">
														<a
															href="sellerCalculate.wdo?goodsNowPage=${p }&goodsCntPerPage=${goodsPaging.cntPerPage}&classNowPage=${classPaging.nowPage}&classCntPerPage=${classPaging.cntPerPage}">${p }</a>
													</c:when>
												</c:choose>
											</c:forEach>
											<c:choose>
												<c:when test="${goodsPaging.endPage eq goodsPaging.lastPage}">
													<span style="width: auto;">| 다음 ▶</span>
												</c:when>
												<c:when test="${goodsPaging.endPage ne goodsPaging.lastPage}">
													<a
														href="sellerCalculate.wdo?goodsNowPage=${goodsPaging.endPage+1 }&goodsCntPerPage=${goodsPaging.cntPerPage}&classNowPage=${classPaging.nowPage}&classCntPerPage=${classPaging.cntPerPage}"
														style="width: auto;">| 다음 ▶</a>
												</c:when>
											</c:choose>
											<!-- <a href="/w/board/notice?&amp;page=1" class="active">1</a> <a
													href="/w/board/notice?&amp;page=2" class="">2</a> <a
													href="/w/board/notice?&amp;page=2" class="next" aria-label="다음">
													<span>다음</span> <i class="fa fa-chevron-right" disabled=""></i>
												</a> -->
										</nav>
									</div>
									</div>
								</div>
		                        
							</div>
							<div class="tab-pane fade" id="asd">
								<div class="row" style="margin-bottom:5px;">
									<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
									 </div>
									 <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
									 </div>
									 <div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
								<button type="button" class="btn btn-warning" >
                                            영수증 출력
                                        </button>
                                        
                                      </div>
                                </div>
								<div class="body table-responsive">
		                            <table class="table table-striped">
		                                <thead>
		                                    <tr>
		                                        <th>No.</th>
		                                        <th>결제일</th>
		                                        <th>가격</th>
		                                        <th>수수료</th>
		                                        <th>정산금액</th>
		                                        <th>정산상황</th>
		                                        <th>정산</th>
		                                    </tr>
		                                </thead>
		                                <tbody>
		                                     <c:forEach var="classOrder" items="${classOrderList}" varStatus="i" >
												<tr>
													<th scope="row">${classTotal-((classPaging.nowPage-1)*10)-i.index}</th>
													<td><fmt:formatDate type="date" value="${classOrder.class_payment_date}"/></td>
													<td><fmt:formatNumber type="number" value="${classOrder.class_order_price}"/></td>
													<td><fmt:formatNumber type="number" maxFractionDigits="0" value="${classOrder.class_order_price*0.1}"/></td>
													<td><fmt:formatNumber type="number" maxFractionDigits="0" value="${classOrder.class_order_price*0.9}"/></td>
														<c:choose>
															<c:when test="${classOrder.class_order_status eq 0}">
																<td><span class="badge bg-green" style="width: 90px;">정산 요청가능</span></td>
																<td>
																	<button type="button"  class="btn btn-warning" onclick="classCalcReq(${classOrder.class_order_seq})">
																		정산요청</button>
																</td>
															</c:when>
															<c:when test="${classOrder.class_order_status eq 1}">
																<td><span class="badge bg-gray" style="width: 90px;">정산 진행중</span></td>
																<td>
																	<button type="button" class="btn btn-warning"
																	disabled>정산요청</button>
																</td>
															</c:when>
															<c:when test="${classOrder.class_order_status eq 2}">
																<td><span class="badge bg-black" style="width: 90px;">정산 완료</span></td>
																<td>
																	<button type="button" class="btn btn-warning"
																	disabled>정산요청</button>
																</td>
															</c:when>
														</c:choose>
												</tr>
											</c:forEach>
		                                </tbody>
		                            </table>
		                        </div>
		                        <!-- 페이징 -->
		                        <div class="paging">
								<div class="col-sm-9"></div>
								<div class="col-sm-3">
									<div class="dataTables_paginate paging_simple_numbers"
										data-ui="paging" data-sync="false">
										<nav>
											<c:choose>
												<c:when test="${classPaging.nowPage eq 1 }">
													<span style="width: auto;">◀ 이전 |</span>
												</c:when>
												<c:when test="${classPaging.nowPage ne 1 }">
													<a
														href="sellerCalculate.wdo?classNowPage=${classPaging.nowPage - 1 }&classCntPerPage=${classPaging.cntPerPage}&goodsNowPage=${goodsPaging.nowPage }&goodsCntPerPage=${goodsPaging.cntPerPage}"
														style="width: auto;">◀ 이전 |</a>
												</c:when>
											</c:choose>
											<c:forEach begin="${classPaging.startPage }" end="${classPaging.endPage }" var="p">
												<c:choose>
													<c:when test="${p eq classPaging.nowPage }">
														<a
															href="sellerCalculate.wdo?classNowPage=${p }&classCntPerPage=${classPaging.cntPerPage}&goodsNowPage=${goodsPaging.nowPage}&goodsCntPerPage=${goodsPaging.cntPerPage}"
															class="active" onclick="return false">${p }</a>
													</c:when>
													<c:when test="${p ne classPaging.nowPage }">
														<a
															href="sellerCalculate.wdo?classNowPage=${p }&classCntPerPage=${classPaging.cntPerPage}&goodsNowPage=${goodsPaging.nowPage}&goodsCntPerPage=${goodsPaging.cntPerPage}">${p }</a>
													</c:when>
												</c:choose>
											</c:forEach>
											<c:choose>
												<c:when test="${classPaging.endPage eq classPaging.lastPage}">
													<span style="width: auto;">| 다음 ▶</span>
												</c:when>
												<c:when test="${classPaging.endPage ne classPaging.lastPage}">
													<a
														href="sellerCalculate.wdo?classNowPage=${classPaging.endPage+1 }&classCntPerPage=${classPaging.cntPerPage}&goodsNowPage=${goodsPaging.nowPage}&goodsCntPerPage=${goodsPaging.cntPerPage}"
														style="width: auto;">| 다음 ▶</a>
												</c:when>
											</c:choose>
											<!-- <a href="/w/board/notice?&amp;page=1" class="active">1</a> <a
													href="/w/board/notice?&amp;page=2" class="">2</a> <a
													href="/w/board/notice?&amp;page=2" class="next" aria-label="다음">
													<span>다음</span> <i class="fa fa-chevron-right" disabled=""></i>
												</a> -->
										</nav>
									</div>
									</div>
								</div>
							</div>
						</div>
                        
                    </div>
                </div>
            </div>
        </div>


    </section>

    <!-- Jquery Core Js -->
    <script src="resources/writer/plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="resources/writer/plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Select Plugin Js -->
    <script src="resources/writer/plugins/bootstrap-select/js/bootstrap-select.js"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="resources/writer/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="resources/writer/plugins/node-waves/waves.js"></script>

    <!-- Custom Js -->
    <script src="resources/writer/js/admin.js"></script>

    <!-- Demo Js -->
    <script src="resources/writer/js/demo.js"></script>
    
    <script src="resources/admin/js/app.js"></script>
</body>

</html>