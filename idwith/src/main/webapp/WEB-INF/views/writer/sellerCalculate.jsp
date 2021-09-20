<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
                        <a href="sellerCalculate.wdo">
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
            정산 요청
        </h3>

        
        

        <div class="container-fluid">

            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                     
                        <div class="body table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>No.</th>
                                        <th>기간</th>
                                        <th>매출</th>
                                        <th>수수료</th>
                                        <th>후원금</th>
                                        <th>순 수익</th>
                                        <th>진행상황</th>
                                        <th>요청</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>21-08-01 ~ 08-31</td>
                                        <td>10,000,000</td>
                                        <td>3,000,000</td>
                                        <td>150,000</td>
                                        <td>7,150,000</td>
                                        <td><span class="badge bg-green" style="width: 100px;">정산 요청가능</span></td>
                                        <td><button type="button" class="btn btn-warning" data-toggle="modal"
                                            data-target="#defaultModalwaring">
                                            정산요청
                                        </button>
                                        <div class="modal fade" id="defaultModalwaring" tabindex="-1"
                                            role="dialog" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title">정산</h5>
                                                        <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body m-3">
                                                        <p class="mb-0">해당달의 정산을 요청하시겠습니까??</p>
                                                    </div>
                                                    <div class="modal-footer">                                                        
                                                        <button type="button"
                                                            class="btn btn-primary">요청하기</button>
                                                            <button type="button" class="btn btn-secondary"
                                                            data-dismiss="modal">닫기</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>21-08-01 ~ 08-31</td>
                                        <td>10,000,000</td>
                                        <td>3,000,000</td>
                                        <td>150,000</td>
                                        <td>7,150,000</td>
                                        <td><span class="badge bg-black" style="width: 100px;">정산 완료</span></td>
                                        <td><button type="button" class="btn btn-warning" data-toggle="modal"
                                            data-target="#defaultModalwaring" disabled>
                                            정산요청
                                        </button>
                                        <div class="modal fade" id="defaultModalwaring" tabindex="-1"
                                            role="dialog" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title">정산</h5>
                                                        <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body m-3">
                                                        <p class="mb-0">해당달의 정산을 요청하시겠습니까??</p>
                                                    </div>
                                                    <div class="modal-footer">                                                        
                                                        <button type="button"
                                                            class="btn btn-primary">요청하기</button>
                                                            <button type="button" class="btn btn-secondary"
                                                            data-dismiss="modal">닫기</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>21-08-01 ~ 08-31</td>
                                        <td>10,000,000</td>
                                        <td>3,000,000</td>
                                        <td>150,000</td>
                                        <td>7,150,000</td>
                                        <td><span class="badge bg-gray" style="width: 100px;">정산 진행중</span></td>
                                        <td><button type="button" class="btn btn-warning" data-toggle="modal"
                                            data-target="#defaultModalwaring" disabled>
                                            정산요청
                                        </button>
                                        <div class="modal fade" id="defaultModalwaring" tabindex="-1"
                                            role="dialog" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title">정산</h5>
                                                        <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body m-3">
                                                        <p class="mb-0">해당달의 정산을 요청하시겠습니까??</p>
                                                    </div>
                                                    <div class="modal-footer">                                                        
                                                        <button type="button"
                                                            class="btn btn-primary">요청하기</button>
                                                            <button type="button" class="btn btn-secondary"
                                                            data-dismiss="modal">닫기</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </tr>
                                    <tr>
                                        <th scope="row">4</th>
                                        <td>21-08-01 ~ 08-31</td>
                                        <td>10,000,000</td>
                                        <td>3,000,000</td>
                                        <td>150,000</td>
                                        <td>7,150,000</td>
                                        <td><span class="badge bg-black" style="width: 100px;">정산 완료</span></td>
                                        <td><button type="button" class="btn btn-warning" data-toggle="modal"
                                            data-target="#defaultModalwaring" disabled>
                                            정산요청
                                        </button>
                                        <div class="modal fade" id="defaultModalwaring" tabindex="-1"
                                            role="dialog" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title">정산</h5>
                                                        <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body m-3">
                                                        <p class="mb-0">해당달의 정산을 요청하시겠습니까??</p>
                                                    </div>
                                                    <div class="modal-footer">                                                        
                                                        <button type="button"
                                                            class="btn btn-primary">요청하기</button>
                                                            <button type="button" class="btn btn-secondary"
                                                            data-dismiss="modal">닫기</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </tr>                                
                                </tbody>
                            </table>
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
</body>

</html>