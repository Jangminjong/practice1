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
    <link href="resource/writer/css/themes/all-themes.css" rel="stylesheet" />
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
        <div class="container-fluid">
          
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h3>작품 수정 </h3>
                            
                        </div>
                        <div class="body">
                            <form id="form_validation" name="goodsModifyForm" action="deleteGoods.wdo" method="POST" enctype="multipart/form-data">
                                <div class="form-group form-float"> 카테고리 &nbsp;&nbsp;
                            <input type="text" value="${goodsCategory.goodsCategoryName}" readonly="readonly">
                            <input type="number" name="goods_seq" value="${goods.goods_seq}" style="display:none">
                            <input type="text" name="goods_code" value="${goods.goods_code}" style="display:none">
                          </div>
                                <div class="form-group form-float">                                
                                    <div class="form-line">
                                        <input type="text" class="form-control" name="goods_name" value="${goods.goods_name}" readonly="readonly" required>
                                        <label class="form-label">작품명</label>
                                    </div>
                                </div>                                                       
                                <div class="form-group form-float">
                                    <div class="form-line">
                                        <input type="text" class="form-control" name="goods_price" value="${goods.goods_price}" readonly="readonly" required>
                                        <label class="form-label">가격</label>
                                    </div>
                                </div>                                
                               
                               <!-- style.css / admin.js -->
                               <c:forEach var="option" items="${goodsOptionList}" varStatus="i">
									<div class="form-group form-float">
										<div class="form-line">
											<div class="upload-group pull-right">
											</div>
											<input type="text" class="form-control" name="options[${i.index}].goodsOp1Name" value="${option.goodsOp1Name}" readonly="readonly">
											<label class="form-label">옵션(대분류)</label>
										</div>
									</div>
									<c:forEach var="sOption" items="${option.goodsOp1Value}" varStatus="j">
										<div class="form-group form-float" id="option1">
											<div class="col-4" style="display: inline-flex">
												<div class="form-line optSmall" style="width: 300px">
													<input type="text" class="form-control" name="options[${i.index}].goodsOp1Value" value="${option.goodsOp1Value[j.index]}" readonly="readonly">
													<label class="form-label">옵션(소분류)</label>
												</div>
									
												<div class="form-line optPrice"
													style="width: 300px; margin-left: 40px">
													<input type="text" class="form-control" name="options[${i.index}].goodsOp1Price" value="${option.goodsOp1Price[j.index]}" readonly="readonly">
													<label class="form-label">옵션(가격)</label>
												</div>
											</div>
										</div>
									</c:forEach>
								</c:forEach>
                               	
                                
                                <div class="form-group form-float">
                                    <div class="form-line">
                                        <textarea name="goods_info" cols="30" rows="5" class="form-control no-resize" readonly="readonly" required>${goods.goods_info}</textarea>
                                        <label class="form-label">작품 상세설명</label>
                                    </div>
                                </div>
                                <div class="form-group form-float">                                
                                    <div class="form-line">
                                        <input type="number" class="form-control" name="goods_delivery_fee" value="${goods.goods_delivery_fee}" readonly="readonly" required>
                                        <label class="form-label">배송비</label>
                                    </div>
                                </div>
                                <div class="form-group form-float">                                
                                    <div class="form-line">
                                        <input type="text" class="form-control" name="goods_delivery_date" value="${goods.goods_delivery_date}" readonly="readonly" required>
                                        <label class="form-label">배송소요일</label>
                                    </div>
                                </div>
                                <div class="form-group form-float">
             							<label class="form-label">업로드한 파일들</label>
									<div class="uploadedGroup">
										<c:forEach var="i" begin="0" end="${fileLength-1}" step="1">						
											<c:choose>
												<c:when test="${goods.goods_photo[i] ne null}">
													<input type="text" name="uploadedFileList" style="display:none;" value="${goods.goods_photo[i]}">
													<div>
														<input type="text" name="uploadFileList" style="display:none;" value="${goods.goods_photo[i]}">
														<img alt="" src="${goods.goods_photo[i]}" width="30px" height="30px">&nbsp;&nbsp;&nbsp;
														<a href="${goods.goods_photo[i]}" target="_blank">${fileName[i]}</a>
														<br>
													</div>
												</c:when>
											</c:choose>
										</c:forEach>
									</div>
								</div>
                               
								<div class="row">
                                    <button class="btn btn-success waves-effect  pull-right" style=margin-right:5px; type="submit">삭제</button>
                                    <a href="productManagement.wdo">
                                   	 <button class="btn btn-primary waves-effect pull-right" type="button">목록</button>
                                 	</a>
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
    <!-- <script src="resources/writer/plugins/bootstrap-select/js/bootstrap-select.js"></script> -->

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
    <script src="resource/writer/js/demo.js"></script>
</body>

</html>