<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>IDWITH - 작가</title>
    <!-- Favicon-->
    <link rel="icon" href="resources/writer/images\tabIcon.png">

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
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button">
                            <i class="material-icons">notifications</i>
                            <span class="label-count"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">NOTIFICATIONS</li>
                            <li class="body">
                                <ul class="menu">                                   
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="javascript:void(0);">View All Notifications</a>
                            </li>
                        </ul>
                    </li>
                    
                    <!-- #END# Tasks -->
                    <!-- <li class="pull-right"><a href="javascript:void(0);" class="js-right-sidebar" data-close="true"><i class="material-icons">more_vert</i></a></li> -->
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
                        <a href="Follow.wdo">
                            <i class="material-icons">favorite</i>
                            <span>팔로우</span>
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
                        <a href="sellercalCulate.wdo">
                            <i class="material-icons">star_rate</i>
                            <span>정산</span>
                        </a>
                    </li>


                </ul>
            </div> 
          
        </aside>
        
    </section>

    <section class="content">

        <h3>
            쿠폰발행 요청리스트
        </h3>

        
        <div class="col-md-2 text-center pull-right" style="margin-bottom: 10px;">
            <a href="couponWriting.wdo">
                <button class="btn btn-warning">요청하기</button>
            </a>
        </div>
        <div class="container-fluid">

            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                      
                        <div class="body table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>No.</th>
                                        <th>제목</th>
                                        <th>발급대상</th>
                                        <th>요청날짜</th>
                                        <th>진행 상황</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  <c:forEach var="writerCoupon" items="${writerCouponViewAll}">
                                    <tr>
                                        <th scope="row">${writerCoupon.rownum}</th>  
                                        <td>
                                            <a href="coupon.wdo?request_cp_seq=${writerCoupon.request_cp_seq}">${writerCoupon.request_cp_name}</a>
                                        </td>
                                        <td>${writerCoupon.request_cp_target}</td>
                                        <td><fmt:formatDate value="${writerCoupon.request_cp_date}" pattern="yyyy.MM.dd"/></td>
                                        <c:choose>
													<c:when test="${ writerCoupon.request_cp_state eq 0 }">
															<c:if test="${ writerCoupon.request_cp_state eq 0 }">
																<td><span class="badge bg-blue">발행 요청</span></td>
															</c:if>
															<c:if test="${ writerCoupon.request_cp_state eq 1 }">
																<td><span class="badge bg-green">발행 처리중</span></td>
															</c:if>
															<c:if test="${ writerCoupon.request_cp_state eq 2 }">
																<td><span class="badge bg-green">배포 거절</span></td>
															</c:if>
															<c:if test="${ writerCoupon.request_cp_state eq 3 }">
																<td><span class="badge bg-red">배포 완료</span></td>
															</c:if>
													</c:when>																									
									   </c:choose>
                                      <!--   <td><span class="badge bg-blue">발행 요청중</span></td> -->
                                    </tr>
                                    </c:forEach>
                                             
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                
                	<!-- 페이징 처리 -->
					  	<div class="paging container-fluid" data-ui="paging" data-sync="false" >
							<nav style="float:center;" aria-label="Page navigation example">
								<ul class="pagination justify-content-end">
									<c:choose>
										<c:when test="${paging.nowPage eq 1 }">
											<li class="page-item"><span style="width: auto;"
												class="page-link">Previous</span></li>
										</c:when>
										<c:when test="${paging.nowPage ne 1 }">
											<li class="page-item"><a
												href="/mpweb/couponRequest.wdo?nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage}"
												style="width: auto;" class="page-link">Previous</a></li>
										</c:when>
									</c:choose>
									<c:forEach begin="${paging.startPage }"
										end="${paging.endPage }" var="p">
										<c:choose>
											<c:when test="${p eq paging.nowPage }">
												<li class="page-item"><a
													href="/mpweb/couponRequest.wdo?nowPage=${p }&cntPerPage=${paging.cntPerPage}&set=${paging.set}"
													onclick="return false" class="page-link">${p }</a></li>
											</c:when>
											<c:when test="${p ne paging.nowPage }">
												<li class="page-item"><a
													href="/mpweb/couponRequest.wdo?nowPage=${p }&cntPerPage=${paging.cntPerPage}&set=${paging.set}"
													class="page-link">${p }</a></li>
											</c:when>
										</c:choose>
									</c:forEach>
									<c:choose>
										<c:when test="${paging.endPage eq paging.lastPage}">
											<li class="page-item"><span style="width: auto;"
												class="page-link">Next</span></li>
										</c:when>
										<c:when test="${paging.endPage ne paging.lastPage}">
											<li class="page-item"><a
												href="/mpweb/couponRequest.wdo?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&set=${paging.set}"
												style="width: auto;" class="page-link">Next</a></li>
										</c:when>
									</c:choose>
								</ul>
							</nav>
						</div> 
						
						<!-- 페이징 처리 끝 -->
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
</body>

</html>