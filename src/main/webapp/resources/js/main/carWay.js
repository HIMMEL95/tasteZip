$(".car").on("click", function(){
	var innerHtml ="";
	innerHtml += '<div class="ft_select"><select id="selectLevel" class="form-select"><option value="0" selected="selected">교통최적+추천</option>'
	innerHtml += '<option value="1">교통최적+무료우선</option><option value="2">교통최적+최소시간</option><option value="3">교통최적+초보</option><option value="4">교통최적+고속도로우선</option>';
	innerHtml += '<option value="10">최단거리+유/무료</option><option value="12">이륜차도로우선</option><option value="19">교통최적+어린이보호구역 회피</option></select>';
	innerHtml += '<select id="year" class="form-select"><option value="N" selected="selected">교통정보 표출 옵션</option><option value="Y">Y</option><option value="N">N</option></select><button id="btn_select">적용하기</button></div>';
	$("#placesList").html(innerHtml);
})