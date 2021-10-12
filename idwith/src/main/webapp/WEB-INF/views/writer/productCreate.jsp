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
        <div class="container-fluid">
           
            <!-- Basic Validation -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card" style="height: auto">
                        <div class="header">
                            <h3>작품 등록 </h3>
                          
                        </div>
                        
                        <div class="card-body container-fluid p-0">
                        <form id="form_goods" action="productManagement.wdo" >  
                          
                          <div class="form-group form-float" > 카테고리 &nbsp;&nbsp;
                            <select name='goods_category' id="productCategory">
                             <option value='ceramic'>도자기</option>
                             <option value='doll'>인형</option>
                              <option value='phone_case'>휴대폰 케이스</option>
                            </select>
                          </div>
                          
                          
                          <div class="form-group form-float" style=width:300px;>                                
                                    <div class="form-line">
                                        <input type="text" class="form-control" value="${goods_goods_stock}" name="goods_name" required>
                                        <label class="form-label">수량</label>
                                    </div>
                                </div>
                          
 
                                                        
                                <div class="form-group form-float">                                
                                    <div class="form-line">
                                        <input type="text" class="form-control" value="${goods.goods_name}" name="goods_name" required>
                                        <label class="form-label">작품명</label>
                                    </div>
                                </div>                                                       
                                <div class="form-group form-float">
                                    <div class="form-line">
                                        <input type="text" class="form-control" value="${goods.goods_price}" name="goods_price" required>
                                        <label class="form-label">가격</label>
                                    </div>
                                </div>       
                                
                                <div class="upload-group pull-right">
                                   <button type="button" class="GroupOption" onclick="addOptionGroup()">옵션 추가</button>
                                </div>                         
                               
                               <!-- style.css / admin.js -->
                               <div class="GroupOption">
                                <div class="form-group form-float" style=margin-top:75px;>
                                    <div class="form-line">
                                      <div class="upload-group pull-right">
                                         <button type="button" class="optiongroup" id="Textinput0" onclick="addOption()">상세옵션 추가</button>
                                      </div>
                                      <div class="Big-opt">
                                        <input type="text" class="form-control" value="${goods.goods_op1_code}" name="" required>
                                        <label class="form-label">옵션(대분류)</label>                                                                                
                                      </div>                          
                                    </div>  
                                </div>
                                                                                                            
                                   <div class="form-group form-float">                                  
                                    <div class="col-4" id="price" style=display:inline-flex>
                                      <div class="form-line optSmall" style=width:300px;margin-top:20px;>
                                        <input type="text" class="form-control" name="text" required>
                                        <label class="form-label">옵션(소분류)</label>
                                      </div>
                                      
                                      <div class="form-line optPrice" style=width:300px;margin-left:40px;margin-top:20px;>
                                        <input type="text" class="form-control" name="text" required>
                                        <label class="form-label">옵션(가격)</label>
                                      </div> 
                                    </div>                                                                                                              
                                </div>
                               </div>
                               
                               <div class="optionGroup"></div>
                                
                                <div class="addoption"></div>
                                
                                <div class="form-group form-float">
                                    <div class="form-line">
                                        <textarea placeholder="${goods.goods_info}" name="goods_info" cols="30" rows="5" class="form-control no-resize" required></textarea>
                                        <label class="form-label">작품 상세설명</label>
                                    </div>
                                </div>
                                
                                <div class="form-group form-float" style=display:inline-flex>                                 
                                  
                                      <div class="form-line optSmall" style=width:300px;margin-top:20px;>
                                        <input type="text" class="form-control" name="text" value="${goods.goods_delivery_fee}" required>
                                        <label class="form-label">배송비</label>
                                      </div>
                                      
                                      <div class="form-line" style=width:300px;margin-left:40px;margin-top:20px;>
                                        <input type="text" class="form-control" name="text" value="${goods.goods_delivery_date}" required>
                                        <label class="form-label">배송소요일(평균)</label>
                                      </div> 
                                   </div>                                                                                                              
                               
                                
                                <div class="upload-group">
                                   <label class="input-group-text" for="inputGroupFile01">Upload</label>
                                   <button type="button" class="addimagegroup" onclick="inputGroupAdd()">업로드 파일 추가</button>
                                </div>
                                <div class="image-group">
                                   <div class="input-group mb-3">
                                         <input type="file" class="form-control" name="file" id="imageinput1">
                                      <button onclick="uploadDiscard()" style="display : none;">업로드 파일 취소</button>
                                   </div>                                 
                                </div>
                                <div class="addImage-group">
                                </div>
                                 
                            <div class="col-md-2 text-center pull-right" style=margin-bottom:10px;>
                                <button class="btn btn-primary waves-effect pull-right" type="submit">저장하기</button>
                            </div>                        
                            </form>
                            
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
 <!--     <script src="resources/writer/plugins/bootstrap-select/js/bootstrap-select.js"></script>
  -->
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

