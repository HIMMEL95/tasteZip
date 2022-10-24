<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<%-- <jsp:useBean id="CodeServiceImpl" class="com.spopia.infra.modules.code.CodeServiceImpl"/> --%>

<!doctype html> 
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
    <title>Story</title>
    <link href="https://cdn-icons-png.flaticon.com/128/553/553416.png" rel="shortcut icon" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="/resources/css/order/mapBasic.css">
	<link rel="stylesheet" href="/resources/css/story/story.css">
	<script defer type="text/javascript" src="/resources/js/order/mapBasic.js"></script>
</head>

<body>
    <!-- start -->
    
    <main class="clearfix">
		<div id="sidebar" class="sidebar">
			<div class="d-flex flex-column flex-shrink-0 bg-dark align-center" style="width: 4.5rem; height: 100vh;">
				<a href="/tasteMain" class="d-block p-3 link-dark text-decoration-none" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Icon-only">
					<img alt="" src="/resources/images/main/logo2.png" width="40" height="30">
					<span class="visually-hidden">Icon-only</span>
				</a>
				<ul class="nav nav-pills nav-flush flex-column mb-auto text-center">
					<li class="nav-item">
						<a href="/order" class="nav-link py-3 rounded-0 align-center" aria-current="page" data-bs-toggle="tooltip" data-bs-placement="right" aria-label="Home" data-bs-original-title="Home">
							<i class="fas fa-light fa-credit-card text-white" style="font-size: 22px;"></i>
						</a>
					</li>
					<li>
						<a href="/favorite" class="nav-link py-3 rounded-0 align-center" aria-current="page" data-bs-toggle="tooltip" data-bs-placement="right" aria-label="Home" data-bs-original-title="Home">
							<i class="fas fa-light fa-heart text-white" style="font-size: 22px;"></i>
						</a>
					</li>
					<li>
						<a href="/chat" class="nav-link py-3 rounded-0 align-center" aria-current="page" data-bs-toggle="tooltip" data-bs-placement="right" aria-label="Home" data-bs-original-title="Home">
							<i class="fas fa-light fa-comments text-white" style="font-size: 22px;"></i>
						</a>
					</li>
					<li>
						<a href="/story" class="nav-link py-3 rounded-0 align-center" aria-current="page" data-bs-toggle="tooltip" data-bs-placement="right" aria-label="Home" data-bs-original-title="Home">
							<i class="fas fa-light fa-pen-to-square text-white" style="font-size: 22px;"></i>
						</a>
					</li>
					<li>
						<a href="/comment" class="nav-link py-3 rounded-0 align-center" aria-current="page" data-bs-toggle="tooltip" data-bs-placement="right" aria-label="Home" data-bs-original-title="Home">
							<i class="fa-regular fa-thumbs-up text-white" style="font-size: 22px;"></i>
						</a>
					</li>
					<li>
						<a href="/findWay" class="nav-link py-3 rounded-0 align-center" aria-current="page" data-bs-toggle="tooltip" data-bs-placement="right" aria-label="Home" data-bs-original-title="Home">
							<i class="fa-solid fa-signs-post text-white" style="font-size: 22px;"></i>
						</a>
					</li>
				</ul>
				<div class="dropdown">
					<a href="#" class="d-flex align-items-center justify-content-center p-3 link-dark text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
						<img src="https://github.com/mdo.png" alt="mdo" width="30" height="30" class="rounded-circle">
					</a>
					<ul class="dropdown-menu text-small shadow" style="">
						<li><a class="dropdown-item" href="#">New project...</a></li>
						<li><a class="dropdown-item" href="#">Settings</a></li>
						<li><a class="dropdown-item" href="#">Profile</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">Sign out</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="map_container" id="container">
			<div class="sideInfo">
				<div class="handle">
					<input type="hidden" name="handle_value" id="handle_value" value="1">
					<button type="button" id="handle" class="btn_fold expand">접기</button>
				</div>
				<div class="panel">
					<div class="panel_top">
						<!-- search s -->
						<div class="search">
							<div class="search_wrap">
								<div class="search_box">
									<button class="search_btn" type="button">검색</button>
									<div class="input_box">
										<label class="label_search">장소, 버스, 지하철, 도로 검색</label>
										<input type="text" id="placeSearch" autocomplete="none" autofocus class="input_search">
									</div>
								</div>
							</div>
						</div>
						<!-- search e -->
						<div class="ng-star-inserted">
							<div class="main -top_space">
								<!-- contents s -->
								<div class="contents">
									<div class="container" style="width: 90%">
										<div class="row">
											<div class="col-12" style="margin-top: 2rem;"><h4>Invitation</h4></div>
											<div class="row justify-content-center" style="margin-top: 2rem;">
												<div class="col-1 text-end">
													<img src="https://blog.kakaocdn.net/dn/Sq4OD/btqzlkr13eD/dYwFnscXEA6YIOHckdPDDk/img.jpg" alt="sunil" style="width: 30px; height: 30px;">
												</div>
												<div class="col-10 text-start">
													<h5><b>카카오톡 친구 추가</b></h5>
												</div>
												<div class="col-1 text-end">
													<i class="fa-solid fa-arrow-right" style="width: 30px; height: 30px;"></i>
												</div>
											</div>
										</div>
										<div class="row justify-content-center"><hr style="margin-top: 2rem;"></div>
										<div class="row justify-content-center">
											<div class="SearchBox">
												<input type="text" class="SearchBox-input" placeholder="Search">
												<button class="SearchBox-button">
													<i class="SearchBox-icon  material-icons"><i class="fa-solid fa-magnifying-glass"></i></i>
												</button>
											</div>
										</div>
										<div class="row" style="margin-top: 2rem;">
											<div class="col"><h4>Follower</h4></div>
										</div>
										<a href="/storyView">
										<div class="row justify-content-between" style="margin-top: 2rem;">
								            <div class="col-1"><img src=https://intermusicakorea.com/common/img/default_profile.png alt="sunil" class="chatImg"></div>
							                <div class="col-5 text-start">
							                  <h5>ID</h5>
							                  <p>infomation</p>
							                </div>
							                <div class="col-5 text-end"><button type="button" class="btn btn-outline-secondary" style="width: 100px; height: 44px;">팔로잉</div>
							            </div>
							            </a>
										<div class="row justify-content-between" style="margin-top: 2rem;">
								            <div class="col-1"><img src=https://intermusicakorea.com/common/img/default_profile.png alt="sunil" class="chatImg"></div>
							                <div class="col-5 text-start">
							                  <h5>ID</h5>
							                  <p>infomation</p>
							                </div>
							                <div class="col-5 text-end"><button type="button" class="btn btn-outline-secondary" style="width: 100px; height: 44px;">요청됨</div>
							            </div>
										<div class="row justify-content-between" style="margin-top: 2rem;">
								            <div class="col-1"><img src=https://intermusicakorea.com/common/img/default_profile.png alt="sunil" class="chatImg"></div>
							                <div class="col-5 text-start">
							                  <h5>ID</h5>
							                  <p>infomation</p>
							                </div>
							                <div class="col-5 text-end"><button type="button" class="btn btn-outline-secondary" style="width: 100px; height: 44px;">팔로잉</div>
							            </div>
									</div>
								</div>
								<!-- contents e -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="map" style="width:100%;height:100%;"></div>
		</div>
    </main>

    <!-- end -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
        crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/1d32d56af5.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=YOUR_CLIENT_ID"></script> -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ec2655da82c3779d622f0aff959060e6&libraries=services"></script>
	<script>
	
		// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
		var infowindow = new kakao.maps.InfoWindow({zIndex:1});
		
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new kakao.maps.LatLng(37.5021008334827, 127.024465815419), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)
		};
	
		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	
		var mapTypeControl = new kakao.maps.MapTypeControl();
	
		// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
		// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
	
		// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		var zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
	
		// 지도에 교통정보를 표시하도록 지도타입을 추가합니다
		map.addOverlayMapTypeId(kakao.maps.MapTypeId.TRAFFIC);    
		
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 

	</script>
</body>

</html>