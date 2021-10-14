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
        <div class="row">
            <div class="container-fluid p-0">

                <div class="row mb-2 mb-xl-3">
                    <div class="col-auto d-none d-sm-block">
                        <h3>리뷰 상세</h3>
                    </div>
                </div>

                <div class="card" style="width:auto; height:1100px">
                    <div class="col-mb-4">
                        <div class="card-body">
                            <div class="container-fluid p-0">
                                
                                <form id="form-reviewContent-writer" name="reviewContentForm" action="updateReview.wdo" method="post">
                                  
                                  <div class="row clearfix">
                                  
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <div class="card" style="margin-top: 20px;">
                                            <div class="body" style="width:550px; height:350px;">
                                                <div id="carousel-example-generic" class="carousel slide"
                                                    data-ride="carousel" style=" height:310px; width: 510px;">
                                                    
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0"
                                                            class="active"></li>                                                       
                                                    </ol>
                                                    
                                                    

                                                   
                                                    <div class="carousel-inner" role="listbox">
                                                        <div class="item active">
                                                            <img src="${review.goods_review_image[0]}" style="width:100%; height:310px;"/>                        
                                                        </div>                                                        
                                                   </div>

                                                  
                                                </div>
                                            </div> 
                                        </div>
                                    </div> 
                                </div>
                                
                                
                                  <div class="content" style=display:inline-flex>                             
                                    <div class="mb-3">
                                        <label class="form-label">아이디</label>
                                        <input type="text" class="form-control" name="goods_review_id" placeholder="${review.goods_review_id}" style="width: auto;"
                                            disabled>
                                    </div>
                                    <div class="mb-3" style=margin-left:50px>
                                        <label class="form-label">평점</label>
                                        <input type="text" class="form-control" name="goods_review_point" placeholder="${review.goods_review_point}"
                                            style="width: auto;" disabled>
                                    </div>
                                    
                                    <div class="mb-3" style=margin-left:50px>
                                        <label class="form-label">작성일</label>
                                        <input type="text" class="form-control" name="goods_review_date" placeholder="${review.goods_review_date}" style="width: auto;"
                                            disabled>
                                    </div>
                                 </div>
                                    <div class="mb-3" style="margin-top:15px;">
                                        <label class="form-label">구매 내역</label>
                                        <input type="text" class="form-control" name="goods_review_product" placeholder="${review.goods_review_product}"
                                            style="width: 350px;" disabled>
                                    </div>
                                    
                                    
                                    <div class="mb-3" style="margin-top:15px;">
                                        <label class="form-label">내역</label>
                                        <input type="text" class="form-control" name="goods_review_option1" placeholder="${review.goods_review_option1}"
                                            style="width:1100px;" disabled>
                                    </div>
                                    <div class="mb-3" style="margin-top:15px;">
                                        <label class="form-label">내역</label>
                                        <input type="text" class="form-control" name="goods-review_option2" placeholder="${review.goods_review_option2}"
                                            style="width: 1100px;" disabled>
                                    </div>
                                    <%-- <div class="mb-3" style="margin-top:15px;">
                                        <label class="form-label">옵션3</label>
                                        <input type="text" class="form-control" name="goods_review_option3" placeholder="${review.goods_review_option3}"
                                            style="width: 1100px;;" disabled>
                                    </div> --%>

                                    <div class="mb-3" style="margin-top:15px;">
                                        <label class="form-label">후기</label>
                                        <input type="text" class="form-control" name="goods_review_context" placeholder="${review.goods_review_context}"
                                            style="width: 600px; height: 150px; margin-bottom: 10px;" disabled>
                                    </div>  
                                    
                                    
                                    <div class="mb-3" style="margin-top:15px;">
								      <label class="form-label">Comment</label>
								      <input type="text" class="form-control" name="goods_review_comment" placeholder="답글" value="${review.goods_review_comment}"
								           style="width: 1000px; height: 100px;">
							        </div>
							        
							        
							        <input type="number" name="goods_review_seq" style="display:none;" value="${review.goods_review_seq}">
						            <div class="col-md-3 text-center pull-right" style="margin-top:50px;">
                      
                                      <button class="btn btn-primary" type="submit">등록</button>
                     
                                      <a href="review.wdo">
                                        <button class="btn btn-warning" >목록</button>
                                      </a>
                           
                                    </div>
							   
							        
							        </form>
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