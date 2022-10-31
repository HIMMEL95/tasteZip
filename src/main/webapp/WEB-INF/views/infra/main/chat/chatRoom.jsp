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
    <title>Order</title>
    <title>Game View</title>
    <link href="https://cdn-icons-png.flaticon.com/128/553/553416.png" rel="shortcut icon" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="/resources/css/order/mapBasic.css">
	<link rel="stylesheet" href="/resources/css/chat/chatRoom.css">
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
						<li><a class="dropdown-item" href="/mypage/mypageMain">My Page</a></li>
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
									<div class="container-fluid" style="hight: 50px; background: #E6E6E6" >
										<div class="row hh">
											<div class="col-2 text-start" style="margin-left: 1rem;">
										      <div class="chat_img"><img src=https://intermusicakorea.com/common/img/default_profile.png alt="sunil" class="chatImg"></div>
										    </div>
										    <div class="col-8 text-start">
										        <h4><b>Robo Cop</b></h4>
										        <p class="text-muted">Layin' down the law since like before Christ...</p>
										    </div>
									    </div>
									 </div>
									<div class="mesgs">
										  <div class="msg_history" style="margin-top: 2rem;">
											<div class="incoming_msg">
											  <div class="chat_img"><img src=https://intermusicakorea.com/common/img/default_profile.png alt="sunil" class="chatImgSm"></div>
											  <div class="received_msg">
												<div class="received_withd_msg">
												  <p>Test which is a new approach to have all
													solutions</p>
												  <span class="time_date"> 11:01 AM    |    June 9</span></div>
											  </div>
											</div>
											<div class="outgoing_msg">
											  <div class="sent_msg">
												<p>Test which is a new approach to have all
												  solutions</p>
												<span class="time_date"> 11:01 AM    |    June 9</span> </div>
											</div>
											<div class="incoming_msg">
											  <div class="chat_img"><img src=https://intermusicakorea.com/common/img/default_profile.png alt="sunil" class="chatImgSm"></div>
											  <div class="received_msg">
												<div class="received_withd_msg">
												  <p>Test, which is a new approach to have</p>
												  <span class="time_date"> 11:01 AM    |    Yesterday</span></div>
											  </div>
											</div>
											<div class="outgoing_msg">
											  <div class="sent_msg">
												<p>Apollo University, Delhi, India Test</p>
												<span class="time_date"> 11:01 AM    |    Today</span> </div>
											</div>
											<div class="incoming_msg">
											 <div class="chat_img"><img src=https://intermusicakorea.com/common/img/default_profile.png alt="sunil" class="chatImgSm"></div>
											  <div class="received_msg">
												<div class="received_withd_msg">
												  <p>We work directly with our designers and suppliers,
													and sell direct to you, which means quality, exclusive
													products, at a price anyone can afford.</p>
												  <span class="time_date"> 11:01 AM    |    Today</span></div>
											  </div>
											</div>
										  </div>
									  <div class="type_msg">
										<div class="input_msg_write">
										  <input type="text" class="write_msg" placeholder="Type a message" />
										  <button class="msg_send_btn" type="button"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
										</div>
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