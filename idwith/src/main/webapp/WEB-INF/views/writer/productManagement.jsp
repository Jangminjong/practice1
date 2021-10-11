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
                        <h2>
                            작품 관리
                            
                        </h2>
                       
                    </div>

                    <div class="body table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>작품명</th>
                                    <th>카테고리</th>
                                    <th>가격</th>
                                    <th>등록일</th>
                                    <th>평점</th>                                   
                                </tr>
                            </thead>
                            <tbody>
                              <c:forEach var="goods" items="${ProductViewAll}">
                                <tr>
                                    <th scope="row">${goods.rownum}</th>
                                    <td><a href="productModify.wdo?goods_seq=${goods.goods_seq}"> ${goods.goods_name}</a></td>
                                    <td>${goods.goods_category}</td>
                                    <td>${goods.goods_price}</td>
                                    <td><fmt:formatDate value="${goods.goods_apply_date}"  pattern="yyyy.MM.dd"/></td>
                                    <td>${goods.goods_grade}</td>
                                     <!--    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#defaultModalPrimary" id=>
                                            삭제
                                        </button>
                                          <div class="modal fade" id="defaultModalPrimary" tabindex="-1"
                                            role="dialog" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title"></h5>
                                                        <button type="button" class="close"
                                                            data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body m-3">
                                                        <p class="mb-0">해당 작품을 삭제하시겠습니까??</p>
                                                    </div>
                                                    <div class="modal-footer">                                                
                                                        <button type="button"
                                                            class="btn btn-warning"  data-dismiss="modal">닫기</button>
                                                         <a href="deleteGoods.wdo?goods_seq${goods.goods_seq}">
                                                              <button type="button" class="btn btn-secondary" data-dismiss="modal">삭제</button>
                                                         </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    -->                                           
                                </tr>  
                                </c:forEach>                              
                                                                                           
                            </tbody>
                        </table>
							<div class="body pull-right">
								<div class="button">
									<a href="productCreate.wdo">
										<button type="button" class="btn bg-deep-purple waves-effect">작품등록</button>
									</a>
								</div>
							</div>
						</div>
                </div>
            </div>
            
            	<!-- 페이징 처리 -->
					  	<div class="paging container-fluid" data-ui="paging" data-sync="false">
							<nav style="float:center;" aria-label="Page navigation example">
								<ul class="pagination justify-content-end">
									<c:choose>
										<c:when test="${paging.nowPage eq 1 }">
											<li class="page-item"><span style="width: auto;"
												class="page-link">이전</span></li>
										</c:when>
										<c:when test="${paging.nowPage ne 1 }">
											<li class="page-item"><a
												href="/mpweb/productManagement.wdo?nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage}"
												style="width: auto;" class="page-link">이전</a></li>
										</c:when>
									</c:choose>
									<c:forEach begin="${paging.startPage }"
										end="${paging.endPage }" var="p">
										<c:choose>
											<c:when test="${p eq paging.nowPage }">
												<li class="page-item"><a
													href="/mpweb/productManagement.wdo?nowPage=${p }&cntPerPage=${paging.cntPerPage}&set=${paging.set}"
													onclick="return false" class="page-link">${p }</a></li>
											</c:when>
											<c:when test="${p ne paging.nowPage }">
												<li class="page-item"><a
													href="/mpweb/productManagement.wdo?nowPage=${p }&cntPerPage=${paging.cntPerPage}&set=${paging.set}"
													class="page-link">${p }</a></li>
											</c:when>
										</c:choose>
									</c:forEach>
									<c:choose>
										<c:when test="${paging.endPage eq paging.lastPage}">
											<li class="page-item"><span style="width: auto;"
												class="page-link">다음</span></li>
										</c:when>
										<c:when test="${paging.endPage ne paging.lastPage}">
											<li class="page-item"><a
												href="/mpweb/productManagement.wdo?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&set=${paging.set}"
												style="width: auto;" class="page-link">다음</a></li>
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
    
     <script>
				$().ready(function (){ 
					$("#deleteGoods").click(function (){ 
						Swal.fire({ 
							title: '해당 작품을 삭제하시겠습니까?', 
							text: "", 
							icon: 'warning', 
							showCancelButton: true, 
							confirmButtonColor: '#FF7B30', 
							confirmButtonBorderColor : "#FF7B30",
							cancelButtonColor: '#15283D', 
							confirmButtonText: '삭제', 
							cancelButtonText: '취소' 
						}).then((result) => { 
							if (result.isConfirmed) { 
								Swal.fire(
									'해당 작품이 삭제되었습니다.', 
									 
								) 
							} 
						}) 
					}); 
				});
			</script>

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