<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<title>IDWITH - 작가</title>
<!-- Favicon-->
<link rel="icon" href="resources/writer/images\tabIcon.png">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" type="text/css">

<!-- Bootstrap Core Css -->
<link href="resources/writer/plugins/bootstrap/css/bootstrap.css"
	rel="stylesheet">

<!-- Waves Effect Css -->
<link href="resources/writer/plugins/node-waves/waves.css"
	rel="stylesheet" />

<!-- Animation Css -->
<link href="resources/writer/plugins/animate-css/animate.css"
	rel="stylesheet" />

<!-- Morris Chart Css-->
<link href="resources/writer/plugins/morrisjs/morris.css"
	rel="stylesheet" />

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
				<a href="javascript:void(0);" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar-collapse"
					aria-expanded="false"></a> <a href="javascript:void(0);"
					class="bars"></a> <a class="navbar-brand" href="main.wdo"> <span
					class="align-middle"> <img
						src="resources/writer/images/logo.png"
						style="margin-bottom: 0px; margin-top: -10px; margin-left: 10px; max-width: 100px; height: auto;">
				</span>
				</a>

			</div>

			<div class="collapse navbar-collapse" id="navbar-collapse">
				<ul class="nav navbar-nav navbar-right">

					<li class="dropdown"><a href="javascript:void(0);"
						class="dropdown-toggle" data-toggle="dropdown" role="button">
							<i class="material-icons">notifications</i> <span
							class="label-count"></span>
					</a>
						<ul class="dropdown-menu">
							<li class="header">NOTIFICATIONS</li>
							<li class="body">
								<ul class="menu">
								</ul>
							</li>
							<li class="footer"><a href="javascript:void(0);">View
									All Notifications</a></li>
						</ul></li>

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
					<li class="active"><a href="main.wdo"> <i
							class="material-icons">home</i> <span>Home</span>
					</a></li>
					<li><a href="orderList.wdo"> <i class="material-icons">shopping_cart</i>
							<span>주문관리</span>
					</a></li>

					<li><a href="classOpen.wdo"> <i class="material-icons">date_range</i>
							<span>클래스 오픈</span>
					</a></li>

					<li><a href="productManagement.wdo"> <i
							class="material-icons">shop_two</i> <span>작품관리 / 등록</span>
					</a></li>

					<li><a href="classManagement.wdo"> <i
							class="material-icons">shop_two</i> <span>클래스관리 / 등록</span>
					</a></li>

					<li><a href="review.wdo"> <i class="material-icons">thumbs_up_down</i>
							<span>리뷰 관리</span>
					</a></li>

					<li><a href="Follow.wdo"> <i class="material-icons">favorite</i>
							<span>팔로우</span>
					</a></li>

					<li><a href="writerStory.wdo"> <i class="material-icons">chat</i>
							<span>작가 이야기</span>
					</a></li>

					<li><a href="couponRequest.wdo"> <i class="material-icons">more</i>
							<span>쿠폰 발행요청</span>
					</a></li>

					<li><a href="writerSales.wdo"> <i class="material-icons">short_text</i>
							<span>매출 확인</span>
					</a></li>


					<li><a href="sellerCalculate.wdo"> <i
							class="material-icons">star_rate</i> <span>정산</span>
					</a></li>


				</ul>
			</div>

		</aside>

	</section>

	<section class="content">

		<div class="row">
			<div class="container-fluid p-0">
				<div class="row mb-2 mb-xl-3">
					<div class="col-auto d-none d-sm-block">
						<h3>Story</h3>
					</div>
				</div>
			</div>
		</div>
								<div class="card" style="height: 400px;">
						<div class="card-body container-fluid p-0">
							<form id="form-storyModify-writer" name="storyModifyForm" action="updateStoryBoard.wdo" method="post">
								<input type="hidden" name="story_tseq" value="${storyBoard.story_tseq}" />
								<div class="mb-3">
									<label class="form-label">Title</label> 
									<input
										type="text" class="form-control" 
										name="storyBoardTitle" value="${storyBoard.storyBoardTitle}"
										style="width: auto;">
								</div>
								<div class="mb-3">
									<label class="form-label">Time</label> 
									<input
										type="text" class="form-control" 
										name="storyBoardRegDate" value="${storyBoard.storyBoardRegDate}"
										style="width: auto;">
								</div>
								
								<div class="mb-3">
									<label class="form-label">Context</label>
									<textarea class="form-control" rows="10" name="storyBoardContext">${storyBoard.storyBoardContext}</textarea>
								</div>
								<div class="mb-3">
									<label class="form-label w-100">File input</label> 
									<input type="file">
								</div>
								<div class="row">
									<div class="col-md-3 text-center"></div>
									<div class="col-md-3 text-center"></div>
									<div class="col-md-3 text-center"></div>
						            <div class="col-md-3 text-center pull-right">
						<!--       <a href="deleteStoryBoard.wdo?story_tseq=${storyBoard.story_tseq}"><button class="btn btn-danger waves-effect" type="submit">삭제</button></a>
							-->
							  <a href="updateStoryBoard.wdo?story_tseq=${storyBoard.story_tseq}"><button class="btn btn-success btn-sm waves-effect" style=margin:5px; type="submit">수정</button></a>
							
							<a href="writerStory.wdo">
								<button class="btn btn-primary btn-sm waves-effect" type="button">목록</button>
							</a>																	
						</div>
						</div>
						</form>
						</div>
					</div>
				
					
		</section>

	<!-- Jquery Core Js -->
	<script src="resources/writer/plugins/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core Js -->
	<script src="resources/writer/plugins/bootstrap/js/bootstrap.js"></script>

	<!-- Select Plugin Js -->
	<script
		src="resources/writer/plugins/bootstrap-select/js/bootstrap-select.js"></script>

	<!-- Slimscroll Plugin Js -->
	<script
		src="resources/writer/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

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
	<script
		src="resources/writer/plugins/flot-charts/jquery.flot.resize.js"></script>
	<script src="resources/writer/plugins/flot-charts/jquery.flot.pie.js"></script>
	<script
		src="resources/writer/plugins/flot-charts/jquery.flot.categories.js"></script>
	<script src="resources/writer/plugins/flot-charts/jquery.flot.time.js"></script>

	<!-- Sparkline Chart Plugin Js -->
	<script
		src="resources/writer/plugins/jquery-sparkline/jquery.sparkline.js"></script>

	<!-- Custom Js -->
	<script src="resources/writer/js/admin.js"></script>
	<script src="resources/writer/js/pages/index.js"></script>

	<!-- Demo Js -->
	<script src="resources/writer/js/demo.js"></script>
</body>

</html>