<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                            <h3>클래스 수정 </h3>          
                        </div>
                        <div class="body">
                            <form id="form_validation" action="classRegModify.wdo" method="POST" enctype="multipart/form-data" >
                            	<input type="number" name="classRegSeq" style="display:none" value="${classReg.classRegSeq}">
								<div class="form-group form-float"> 카테고리 &nbsp;&nbsp;
								<select name='classCategory' id="productCategory">
									<c:forEach var="classCategory" items="${classCategoryList}">
										<c:choose>
											<c:when test="${classReg.classCategory eq classCategory.classCategoryCode} ">
												<option value='${classCategory.classCategoryCode}' selected="selected">${classCategory.classCategoryName}</option>
											</c:when>
											<c:when test="${classReg.classCategory eq classCategory.classCategoryCode} ">
												<option value='${classCategory.classCategoryCode}'>${classCategory.classCategoryName}</option>
											</c:when>
										</c:choose>
									</c:forEach>
								</select>
								</div>
								<div class="form-group form-float">
                                    <div class="form-line">
                                        <input type="text" class="form-control" name="className" value="${classReg.className}" required>
                                        <label class="form-label" >클래스 주제</label>
                                    </div>
                                </div>						
                                <div class="row">
                                	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: -5px;">
	                                	<div class="form-group form-float">
		                                    <div class="form-line" id="form-line-address">
		                                    	<label class="form-label" id="postlabel">우편번호</label>
		                                   		<input type="text" class="form-control" name="classPostAddress" id="postcode" maxlength="6" value="${classReg.classPostAddress}" readonly required>
		                                   		<button class="address-find" onclick="execDaumPostcode()" style="font-size: 7px; width:100px;">우편번호찾기</button>
		                                    </div>
	                                    </div>
                                    </div>
                                </div>
                                <div class="form-group form-float">
                                    <div class="form-line">
                                        <input type="text" class="form-control" name="classAddress" id="address" value="${classReg.classAddress}" readonly required>
                                        <label class="form-label" id="addrlabel">주소</label>
                                    </div>
                                </div>
                                <div class="form-group form-float">
                                    <div class="form-line">
                                        <input type="text" class="form-control" name="classDetailAddress" id="detailAddress" value="${classReg.classDetailAddress}" required>
                                        <label class="form-label" >상세 주소</label>
                                    </div>
                                </div>
                                <div class="form-group form-float">
                                    <div class="form-line">
                                        <input type="text" class="form-control" name="classReference" id="extraAddress" value="${classReg.classReference}" readonly required>
                                        <label class="form-label" id="extaddrlabel">참고 항목</label>
                                    </div>
                                </div>                            
                                <div class="form-group form-float">
                                    <div class="form-line">
                                        <textarea name="classInfo" cols="30" rows="5" class="form-control no-resize" 
                                            required>${classReg.classInfo}</textarea>
                                        <label class="form-label">수업 상세설명</label>
                                    </div>
                                </div>
                                <div class="form-group form-float">
             							<label class="form-label">업로드한 파일들</label>
									<div class="uploadedGroup">
										<c:forEach var="i" begin="0" end="${fileLength-1}" step="1">						
											<c:choose>
												<c:when test="${classReg.classPhoto[i] ne null}">
													<input type="text" name="uploadedFileList" style="display:none;" value="${classReg.classPhoto[i]}">
													<div>
														<input type="text" name="uploadFileList" style="display:none;" value="${classReg.classPhoto[i]}">
														<img alt="" src="${classReg.classPhoto[i]}" width="30px" height="30px">&nbsp;&nbsp;&nbsp;
														<a href="${classReg.classPhoto[i]}" target="_blank">${fileName[i]}</a>&nbsp;&nbsp;&nbsp;
														<button type="button" onclick="uploadedFileDelete('uploadedFileBtn${i}')" id="uploadedFileBtn${i}">삭제</button>
														<br>
													</div>
												</c:when>
											</c:choose>
										</c:forEach>
									</div>
								</div>
								<div class="form-group form-float">
									<div class="form-line">
										<input type="tel" class="form-control" name="classPhone" id="tel" maxlength="13" value="${classReg.classPhone}" required>
										<label class="form-label">연락처</label>
									</div>
								</div>
                                <div class="upload-group">
                                	<label class="input-group-text" for="inputGroupFile01">Upload</label>
                                	<button type="button" class="addimagegroup" onclick="inputGroupAdd()">업로드 파일 추가</button>
                                </div>                     
                                <div class="image-group">
	                                <div class="input-group mb-3">
	                                   	<input type="file" class="form-control" name="file" id="imageinput1">
	                                	<button style="display : none;" >업로드 파일 취소</button>
	                                </div>                              	
                                </div>
                                <div class="addImage-group">
                                </div>
								
								<button class="btn btn-primary waves-effect" type="submit">수정하기</button>
                                <a href="classManagement.wdo">
                  	              <button class="btn btn-primary waves-effect" type="button">목록으로</button>
                  	            </a>
                  	            <a href="classRegDelete.wdo?classRegSeq=${classReg.classRegSeq}">
                  	              <button class="btn btn-primary waves-effect" type="button">삭제하기</button>
                  	            </a>
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
    <script src="resources/writer/js/demo.js"></script>
</body>

</html>