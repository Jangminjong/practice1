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
    <link rel="icon" href="resources\writer\images\tabIcon.png">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet"
        type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="resources\writer\plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

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
    
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    
   
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
                            <li class="header" style=color:gray;>입점취소 신청하기</li>
                            <li class="body text-center">
                                <button type="button" class="btn btn-primary" id="deleteShop" name="deleteShop" onclick="enrollmentCancle()">취소신청</button>                        
                            </li>
                        </ul>
                  </li>
                    
                  
					
	
                    
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
            <div class="block-header">
                <h2>Status board</h2>
            </div>

            <!-- Widgets -->
            <div class="row clearfix">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" style=width:350px;>
                    <div class="info-box bg-pink hover-expand-effect">
                        <div class="icon">
                            <i class="material-icons">playlist_add_check</i>
                        </div>
                        <div class="content">
                            <div class="text">오늘의 주문 수</div>
                            <div class="number count-to" data-from="0" data-to="${todayOrder}" data-speed="15"
                                data-fresh-interval="20">${todayOrder}</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" style=margin-left:50px;width:350px;>
                    <div class="info-box bg-cyan hover-expand-effect">
                        <div class="icon">
                            <i class="material-icons">payment</i>
                        </div>
                        <div class="content">
                            <div class="text">오늘 매출 액</div>
                            <div class="number count-to" data-from="0" data-to="${todaySales}" data-speed="1000"
                                data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>           
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" style=margin-left:50px;width:350px;>
                    <div class="info-box bg-orange hover-expand-effect">
                        <div class="icon">
                            <i class="material-icons">person_add</i>
                        </div>
                        <div class="content">
                            <div class="text">팔로우 수</div>
                            <div class="number count-to" data-from="0" data-to="${follower}" data-speed="1000"
                                data-fresh-interval="20">${follower}</div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row clearfix">
                <div class="container-fluid">
                    <!-- Task Info -->
                    <div class="col-12">
                        <div class="card">
                            <div class="header">
                                <h2>작품 주문내역</h2>
                            </div>

                            <div class="body">
                                <div class="table-responsive">
                                    <table class="table table-hover dashboard-task-infos">
                                        <thead>
                                        <tr>
                                            <th>상품 명</th>                                            
                                            <th>수량</th>
                                            <th>가격</th>
                                            <th>주문 날짜</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                    
                                    <c:forEach var="goodsOrder" items="${goodsOrderList}">
                                      <tr>
                                        <td>
                                            <a href="orderList.wdo">${goodsOrder.order_goods_name}</a>
                                        </td>
                                        <td>${goodsOrder.order_detail_quantity}</td>
                                        <td>${goodsOrder.order_detail_price}</td>
                                        <td><fmt:formatDate value="${goodsOrder.order_date}" pattern="yyyy.MM.dd"/></td>
                                      </tr>  
                                    </c:forEach>
                                          
                                        
                                    
                                       
                                    </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row clearfix">
                <div class="container-fluid">
                    <!-- Task Info -->
                    <div class="col-12">
                        <div class="card">
                            <div class="header">
                                <h2>클래스 신청내역</h2>
                            </div>

                            <div class="body">
                                <div class="table-responsive">
                                    <table class="table table-hover dashboard-task-infos">
                                        <thead>
                                        <tr>
                                            <th>클래스명</th>                                            
                                            <th>신청인원</th>
                                            <th>가격</th>
                                            <th>주문 날짜</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="classOrder" items="${classOrderList}">
		                                   <tr>
		                                      <td>
		                                         <a href="orderClass.wdo">${classOrder.class_order_title}</a>
		                                      </td>
		                                      <td>${classOrder.class_order_people}</td>
		                                      <td>${classOrder.class_order_price}</td>
		                                      <td><fmt:formatDate value="${classOrder.class_order_date}" pattern="yyyy.MM.dd"/></td>
		                                   </tr>  
                                    	</c:forEach>
                                   
                                       
                                    </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- #END# CPU Usage -->
            <div class="row clearfix">
                <!-- Visitors -->
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" style=width:450px;>
                    <div class="card">
                        <div class="body bg-pink" style="height: 186px;">
                            <div class="sparkline" data-type="line" data-spot-Radius="4"
                                data-highlight-Spot-Color="rgb(233, 30, 99)" data-highlight-Line-Color="#fff"
                                data-min-Spot-Color="rgb(255,255,255)" data-max-Spot-Color="rgb(255,255,255)"
                                data-spot-Color="rgb(255,255,255)" data-offset="90" data-width="100%"
                                data-height="100px" data-line-Width="2" data-line-Color="rgba(255,255,255,0.7)"
                                data-fill-Color="rgba(0, 188, 212, 0)">
                            </div>
                            <div class="m-b--35 font-bold">주문량</div>
                            <ul class="dashboard-stat-list">
                                <li>
                                    TODAY
                                    <span class="pull-right"><b>${todayOrder}</b> <small>Orders</small></span>
                                </li>
                                <li>
                                    YESTERDAY
                                    <span class="pull-right"><b>${yesterdayOrder}</b> <small>Orders</small></span>
                                </li>
                                <li>
                                    LAST WEEK
                                    <span class="pull-right"><b>${weekOrder}</b> <small>Orders</small></span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- #END# Visitors -->
                <!-- Latest Social Trends -->
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" style=width:450px;>
                    <div class="card">
                        <div class="body bg-cyan">
                            <div class="m-b--35 font-bold">매출 액</div>
                            <ul class="dashboard-stat-list">
                                <li>
                                    TODAY
                                    <span class="pull-right"><b>${todaySales}</b> <small>Sales</small></span>
                                </li>
                                <li>
                                    YESTERDAY
                                    <span class="pull-right"><b>${yesterdaySales}</b> <small>Sales</small></span>
                                </li>
                                <li>
                                    LAST WEEK
                                    <span class="pull-right"><b>${weekSales}</b> <small>Sales</small></span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- #END# Answered Tickets -->
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

    <!-- Jquery CountTo Plugin Js -->
    <script src="resources/writer/plugins/jquery-countto/jquery.countTo.js"></script>

    <!-- Morris Plugin Js -->
    <script src="resources/writer/plugins/raphael/raphael.min.js"></script>
    <script src="resources/writer/plugins/morrisjs/morris.js"></script>

    <!-- ChartJs -->
    <script src="resources/writer/plugins/chartjs/Chart.bundle.js"></script>

    <!-- Flot Charts Plugin Js -->
    <script src="resources/writer/plugins/flot-charts/jquery.flot.js"></script>
    <script src="resources/writer/plugins/flot-charts/jquery.flot.resize.js"></script>
    <script src="resources/writer/plugins/flot-charts/jquery.flot.pie.js"></script>
    <script src="resources/writer/plugins/flot-charts/jquery.flot.categories.js"></script>
    <script src="resources/writer/plugins/flot-charts/jquery.flot.time.js"></script>

    <!-- Sparkline Chart Plugin Js -->
    <script src="resources/writer/plugins/jquery-sparkline/jquery.sparkline.js"></script>

    <!-- Custom Js -->
    <script src="resources/writer/js/admin.js"></script>
    <script src="resources/writer/js/pages/index.js"></script>

    <!-- Demo Js -->
    <script src="resources/writer/js/demo.js"></script>
</body>

</html>