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
    <link rel="icon" href="resources/writer/images\tabIcon.png">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet"
        type="text/css">
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
    <link href="resources/writer/css/css/main.css" rel="stylesheet">

    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="resources/writer/css/themes/all-themes.css" rel="stylesheet" />


    <link href="resources/writer/vendor\css\bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="resources/writer/vendor/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/writer/vendor/css/fullcalendar.min.css" rel="stylesheet">
    <link href="resources/writer/vendor/css/material-icon.css" rel="stylesheet">
    <link href="resources/writer/vendor/css/roboto.css" rel="stylesheet">
    <link href="resources/writer/vendor/css/select2.min.css" rel="stylesheet">
</head>

<body class="theme-red">



    <div class="overlay"></div>

    <nav class="navbar bg-orange navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#navbar-collapse" aria-expanded="false"></a>
                <a href="javascript:void(0);" class="bars"></a>

                <a class="navbar-brand" href="main.wdo">
                <span class="align-middle">
                    <img src="resources/writer/images\logo.png"
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


        <div class="container">

            <!-- 일자 클릭시 메뉴오픈 -->
            <div id="contextMenu" class="dropdown clearfix">
                <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
                    style="display:block;position:static;margin-bottom:5px;">
                    <li><a tabindex="-1" href="#">카테고리1</a></li>
                    <li><a tabindex="-1" href="#">카테고리2</a></li>
                    <li><a tabindex="-1" href="#">카테고리3</a></li>
                    <li><a tabindex="-1" href="#">카테고리4</a></li>
                    <li class="divider"></li>
                    <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
                </ul>
            </div>
    
            <div id="wrapper">
                <div id="loading"></div>
                <div id="calendar"></div>
            </div>
    
    
            <!-- 일정 추가 MODAL -->
            <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title"></h4>
                        </div>
                        <div class="modal-body">
    
                            <div class="row">
                                <div class="col-xs-12">
                                    <label class="col-xs-4" for="edit-allDay">하루종일</label>
                                    <input class='allDayNewEvent' id="edit-allDay" type="checkbox"></label>
                                </div>
                            </div>
    
                            <div class="row">
                                <div class="col-xs-12">
                                    <label class="col-xs-4" for="edit-title">일정명</label>
                                    <input class="inputModal" type="text" name="edit-title" id="edit-title"
                                        required="required" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <label class="col-xs-4" for="edit-start">시작</label>
                                    <input class="inputModal" type="text" name="edit-start" id="edit-start" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <label class="col-xs-4" for="edit-end">끝</label>
                                    <input class="inputModal" type="text" name="edit-end" id="edit-end" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <label class="col-xs-4" for="edit-type">구분</label>
                                    <select class="inputModal" type="text" name="edit-type" id="edit-type">
                                        <option value="카테고리1">카테고리1</option>
                                        <option value="카테고리2">카테고리2</option>
                                        <option value="카테고리3">카테고리3</option>
                                        <option value="카테고리4">카테고리4</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <label class="col-xs-4" for="edit-color">색상</label>
                                    <select class="inputModal" name="color" id="edit-color">
                                        <option value="#D25565" style="color:#D25565;">빨간색</option>
                                        <option value="#9775fa" style="color:#9775fa;">보라색</option>
                                        <option value="#ffa94d" style="color:#ffa94d;">주황색</option>
                                        <option value="#74c0fc" style="color:#74c0fc;">파란색</option>
                                        <option value="#f06595" style="color:#f06595;">핑크색</option>
                                        <option value="#63e6be" style="color:#63e6be;">연두색</option>
                                        <option value="#a9e34b" style="color:#a9e34b;">초록색</option>
                                        <option value="#4d638c" style="color:#4d638c;">남색</option>
                                        <option value="#495057" style="color:#495057;">검정색</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <label class="col-xs-4" for="edit-desc">설명</label>
                                    <textarea rows="4" cols="50" class="inputModal" name="edit-desc"
                                        id="edit-desc"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer modalBtnContainer-addEvent">
                            <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                            <button type="button" class="btn btn-primary" id="save-event">저장</button>
                        </div>
                        <div class="modal-footer modalBtnContainer-modifyEvent">
                            <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                            <button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
                            <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
    
            <div class="panel panel-default">
    
                <div class="panel-heading">
                    <h3 class="panel-title">필터</h3>
                </div>
    
                <div class="panel-body">
    
                    <div class="col-lg-6">
                        <label for="calendar_view">구분별</label>
                        <div class="input-group">
                            <select class="filter" id="type_filter" multiple="multiple">
                                <option value="카테고리1">카테고리1</option>
                                <option value="카테고리2">카테고리2</option>
                                <option value="카테고리3">카테고리3</option>
                                <option value="카테고리4">카테고리4</option>
                            </select>
                        </div>
                    </div>
    
                </div>
            </div>
            <!-- /.filter panel -->
        </div>
        <!-- /.container -->

        <!-- <div calss="card">
            <header>
                <h1>
                    <i class="far fa-calendar-check"></i>
                    <span>캘린더</span>
                </h1>
                <div class="calendar_title">
                    <button class="prev">&#60;</button>
                    <span class="current-year-month"></span>
                    <button class="next">&#62;</button>
                </div>
            </header>
            <section class="content-left">
                <div class="left-main">
                    <div class="main-wrap">
                        <div class="main-day"></div>
                        <div class="main-date"></div>
                    </div>
                    <div class="todo-wrap">
                        <div class="todo-title">Todo List</div>
                        <form class="input-form">
                            <input type="text" placeholder="write here!!" class="input-box" />
                            <button type="submit" class="input-btn clickBtn">INPUT</button>
                        </form>
                        <ul class="todoList"></ul>
                        <div class="showList">
                            <span class="listText"></span>
                            <span class="createDate"></span>
                            <button class="closed">close</button>
                        </div>
                        <div class="bgblack"></div>
                    </div>
                </div>
            </section>
            <section class="content-right">
                <div class="day-of-week">
                    <div class="dayHeader sun">Sun</div>
                    <div class="dayHeader">Mon</div>
                    <div class="dayHeader">Tue</div>
                    <div class="dayHeader">Wed</div>
                    <div class="dayHeader">Thu</div>
                    <div class="dayHeader">Fri</div>
                    <div class="dayHeader sat">Sat</div>
                </div>
                <div class="calendar-body"></div>


            </section>

            <div id='calendar'>
            <div id='datepicker'>
                <div class="modal fade" tabindex="-1" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4><input class="modal-title" type="text" name="title" id="title"
                                        placeholder="Event Title/Description" /></h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <label class="col-xs-4" for="starts-at">Starts at</label>
                                        <input type="text" name="starts_at" id="starts-at" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <label class="col-xs-4" for="ends-at">Ends at</label>
                                        <input type="text" name="ends_at" id="ends-at" />
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary" id="save-event">Save</button>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div> -->
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

    <!-- Calender Js -->
    <script src="resources/writer/js/main.js"></script>
    <script src="resources/writer/js/data.js"></script>



    <script src="resources/writer/vendor/js/jquery.min.js"></script>
    <script src="resources/writer/vendor/js/bootstrap.min.js"></script>
    <script src="resources/writer/vendor/js/moment.min.js"></script>
    <script src="resources/writer/vendor/js/fullcalendar.min.js"></script>
    <script src="resources/writer/vendor/js/ko.js"></script>
    <script src="resources/writer/vendor/js/select2.min.js"></script>
    <script src="resources/writer/vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="resources/writer/js/js/main.js"></script>
    <script src="resources/writer/js/js/addEvent.js"></script>
    <script src="resources/writer/js/js/editEvent.js"></script>
    <script src="resources/writer/js/js/etcSetting.js"></script>
</body>

</html>