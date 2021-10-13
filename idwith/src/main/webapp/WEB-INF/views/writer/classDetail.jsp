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
        <div class="content">
            <div class="row">
                <div class="card container-fluid p-0">
  
                    <div class="row mb-3">
                        <div class="col-auto d-none d-sm-block container-fluid p-0">
                            <h3>클래스 신청 상세</h3>
                        </div>
                    </div>
                    
                    <form id="form-goodsOrder-writer" name="classOrderForm" action="orderClass.wdo"  style=margin-top:20px;>
                               <input type="hidden" name="class_order_seq" value="${WriterClassOrder.class_order_seq}" />                      
                       <div class="row" >
                            <div class="col-md-3">
                                <label class="form-label">아이디</label>
                                <input type="text" class="form-control" value="${writerClassOrder.class_order_id}" style="width: 200px;"
                                    id="class_order_id" disabled>
                            </div>
                            <div class="col-md-3">
                                <label class="form-label">이름</label>
                                <input type="text" class="form-control" value="" style="width: auto;"
                                    id="cpEndDate" disabled>
                            </div>
                            <div class="col-md-3">
                                <label class="form-label">연락처</label>
                                <input type="text" class="form-control" placeholder="" style="width: auto;"
                                    id="cpEndDate" disabled>
                            </div>
                            <div class="col-md-3">
                                <label class="form-label">신청 날짜(결제한날)</label>
                                <fmt:formatDate value="${writerClassOrder.class_payment_date}" var="payment"  pattern="yyyy.MM.dd"/>
                                <input type="text" class="form-control" value="${payment}" style="width: auto;"
                                    id="class_payment_date" disabled>
                            </div>
                        </div>
                        <div class="row" style=margin-top:30px;>
                            <div class="col-md-3">
                                <label class="form-label">클래스 코드</label>
                                <input type="text" class="form-control" value="${writerClassOrder.class_order_code}" style="width: auto;"
                                    id="class_order_code" disabled>
                            </div>
                            <div class="col-md-3">
                                <label class="form-label">신청 클래스명</label>
                                <input type="text" class="form-control" value="${writerClassOrder.class_order_name}" style="width: auto;"
                                    id="cpStartDate" disabled>
                            </div>
                            <div class="col-md-3">
                                <label class="form-label">신청인원</label>
                                <input type="text" class="form-control" value="${writerClassOrder.class_order_people}" style="width: auto;"
                                    id="class_order_people" disabled>
                            </div>
                                                      
                        </div>                     
                       
                        <div class="row" style=margin-top:30px;>
                           
                            <div class="col-md-3">
                                <label class="form-label">수업 날짜</label>
                                 <fmt:formatDate value="${writerClassOrder.class_order_date}" var="Date"  pattern="yyyy.MM.dd"/>
                                <input type="text" class="form-control"  value="${Date }" style="width: auto;"
                                    id="class_order_date" disabled>
                            </div>
                            <div class="col-md-3">                               
                                <label class="form-label">수업 시간</label>
                                <fmt:formatDate value="${writerClassOrder.class_order_time}" var="classTime"  pattern="a HH:mm"/>
                                <input type="text" class="form-control" value="${classTime }" style="width: auto;"
                                    id="class_order_time" disabled>
                            </div>
                            <div class="col-md-3">
                                <label class="form-label">후원금액</label>
                                <input type="text" class="form-control" value="${writerClassOrder.class_order_donation }" style="width: auto;"
                                    id="class_order_donation" disabled>
                            </div>
                            <div class="col-md-3">
                                <label class="form-label">결제금액</label>
                                <input type="text" class="form-control" value="${writerClassOrder.class_order_price }" style="width: auto;"
                                    id="class_order_price" disabled>
                            </div>
                        </div>
                        
                         <div class="mb-3" style=margin-top:10px;>
                            <label class="form-label">요청 사항</label>
                            <input type="text" class="form-control" value="${writerClassOrder.class_order_demand}"  style=height:65px;
                                    id="calss_order_demand" disabled>
                        </div>
                        
                        
                         <div class="col-3 pull-right" style=margin-top:15px;margin-bottom:15px;>   
                
                          <div class="col-md-2 text-center">
                            <a href="orderClass.wdo">
                              <button class="btn btn-primary">클래스목록</button>
                           </a>
                         </div>
                        </div>
                    </form>

                </div>
            </div>


            <div class="row">
                <div class="col-md-2 text-center"></div>
                <div class="col-md-2 text-center"></div>
                <div class="col-md-2 text-center"></div>
                <div class="col-md-2 text-center"></div>
                <div class="col-md-2 text-center"></div>
            
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