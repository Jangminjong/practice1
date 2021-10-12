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
        <div class="container-fluid">
           
           
            
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                               작품 주문목록
                            </h2>
                            
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover js-basic-example dataTable">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>주문번호</th>
                                            <th>상품명</th>                                            
                                            <th>수량</th>
                                            <th>주문날짜</th>
                                            <th>배송상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                     <c:forEach var="order" items="${GoodsOrderViewAll}" varStatus="i">
                                       <tr>
                                            <th scope="row">${total-((paging.nowPage-1)*5)-i.index}</th>
                                            <td>
                                                <a href="productDetails.wdo?order_detail_code=${order.order_detail_code}">${order.order_detail_code}</a>
                                            </td>                                            
                                            <td>${order.order_goods_name}</td>
                                            <td>${order.order_detail_quantity}</td>
                                            <td><fmt:formatDate value="" pattern="yyyy.MM.dd"/></td>
                                            <td>${order.order_delivery_state}</td>
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
												href="/mpweb/orderList.wdo?nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage}"
												style="width: auto;" class="page-link">Previous</a></li>
										</c:when>
									</c:choose>
									<c:forEach begin="${paging.startPage }"
										end="${paging.endPage }" var="p">
										<c:choose>
											<c:when test="${p eq paging.nowPage }">
												<li class="page-item"><a
													href="/mpweb/orderList.wdo?nowPage=${p }&cntPerPage=${paging.cntPerPage}&set=${paging.set}"
													onclick="return false" class="page-link">${p }</a></li>
											</c:when>
											<c:when test="${p ne paging.nowPage }">
												<li class="page-item"><a
													href="/mpweb/orderList.wdo?nowPage=${p }&cntPerPage=${paging.cntPerPage}&set=${paging.set}"
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
												href="/mpweb/orderList.wdo?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&set=${paging.set}"
												style="width: auto;" class="page-link">Next</a></li>
										</c:when>
									</c:choose>
								</ul>
							</nav>
						</div> 
						
						<!-- 페이징 처리 끝 -->
                </div>
            </div>
            </div>
            </section>
           




    <!-- Jquery Core Js -->
    <script src="resources/writer/plugins\jquery\jquery.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="resources/writer/plugins\bootstrap\js\bootstrap.js"></script>

    <!-- Select Plugin Js -->
    <script src="resources/writer/plugins\bootstrap-select\js\bootstrap-select.js"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="resources/writer/plugins\jquery-slimscroll\jquery.slimscroll.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="resources/writer/plugins\node-waves\waves.js"></script>

    <!-- Jquery DataTable Plugin Js -->
    <script src="resources/writer/plugins/jquery-datatable/jquery.dataTables.js"></script>
    <script src="resources/writer/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
    <script src="resources/writer/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
    <script src="resources/writer/plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
    <script src="resources/writer/plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
    <script src="resources/writer/plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
    <script src="resources/writer/plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
    <script src="resources/writer/plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
    <script src="resources/writer/plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>

    <!-- Custom Js -->
    <script src="resources/writer/js/admin.js"></script>
    <script src="resources/writer/js/pages/tables/jquery-datatable.js"></script>

    <!-- Demo Js -->
    <script src="resources/writer/js/demo.js"></script>
</body>

</html>