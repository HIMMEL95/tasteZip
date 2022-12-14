<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


	<!DOCTYPE html>
	<html lang="ko" >
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>xdmin Comment Form</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
		<link href="https://cdn-icons-png.flaticon.com/128/553/553416.png" rel="shortcut icon" type="image/x-icon">
		<!-- datepicker s -->
		<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
		<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
		<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
		<!-- datepicker e -->
		<link rel="stylesheet" href="/resources/css/xdmin/member/xdminForm.css">
		<!-- <link rel="stylesheet" href="/resources/css/xdmin/member/memberList.css"> -->
		<style>
		</style>
	</head>
<body>
<div class="hero">
 	 <!-- snow -->
	<%@include file="/resources/js/snow/snow.jsp"%>
	<div class="hero__content">
		<!-- <h1>SVG Snow</h1> -->
		<!-- partial:index.partial.html -->
		<link href="https://fonts.googleapis.com/css?family=DM+Sans:400,500,700&display=swap" rel="stylesheet">
		<div class="task-manager">
		<!-- sidebar -->
		 <%@include file="/resources/js/sideBar/sideBar.jsp"%>
		  <!-- content s -->
		  <form id="formList" name="formList" method="post" autocomplete="off">
			<!-- *Vo.jsp s -->
			<%-- <%@include file="codeVo.jsp"%> --%>
			<!-- *Vo.jsp e -->
				<div class="row" style="width: 1022px; height: 100%">
					<h2 class="needs-validation mt-5 ms-5">Comment Form</h2>
					<div class="content" style="height: 500px; width: 1010px; overflow-y: scroll;">
						<div class="start" style="margin-left: auto; margin-right: auto; width: 690px; display: grid;">
							<div class="row">
								<div class="col-6">
									<label class="form-label">Seq</label> 
									<input type="text" class="form-control" value="<c:out value="${item.ifcmSeq}"/>" readonly>
								</div>
								<div class="col-6">
									<label class="form-label">????????????</label> 
									<input type="text" value="<c:out value="${item.ifstName}"/>" class="form-control" readonly>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col">
									<label class="form-label">??????</label> 
									<textarea class="form-control" id="ifstInfo" name="ifstInfo" aria-label="With textarea" rows="5" readonly>${item.ifcmComment }</textarea>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col">
									<label class="form-label">??????</label> 
									<input type="text" class="form-control" value="<c:out value="${item.ifcmGrade}"/>" placeholder="8?????? ??????" readonly>
								</div>
								<div class="col">
									<label class="form-label">???????????????</label> 
									<input type="text" class="form-control" value="<c:out value="${item.ifmmName}"/>" placeholder="8?????? ??????" readonly>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col">
									<label class="form-label">?????????</label> 
									<input type="text" value="<c:out value="${item.ifcmCreatedAt}"/>" class="form-control" readonly>
								</div>
								<div class="col">
									<label class="form-label">?????????</label> 
									<input type="text" value="<c:out value="${item.ifcmModifiedAt}"/>" class="form-control" readonly>
								</div>
							</div>
						</div>
					</div>
					<div class="row align-items-center mt-5">
                           <div class="col-2" style="margin-left: 85px;">
                               <button class="border-0 btn bg-secondary shadow" type="button" id="btnList">
                                   <i class="fa-solid fa-bars" style="color: white;"></i>
                               </button>
                               <button id="btnUel" value="Uel" class="border-0 btn bg-danger shadow" type="button" data-bs-toggle="modal"
                                   data-bs-target="#deleteModal">
                                   <i class="fa-solid fa-xmark" style="color: white;"></i>
                               </button>
                           </div>
                           <div class="col-3 offset-5" align="right">
                               <div class="modal fade" id="deleteModal" data-bs-backdrop="static" data-bs-keyboard="false"
                                   tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                   <div class="modal-dialog">
                                       <div class="modal-content">
                                           <div class="modal-header">
                                               <h5 class="modal-title fw-bold" id="staticBackdropLabel">????????? ??????</h5>
                                               <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                   aria-label="Close"></button>
                                           </div>
                                           <div class="modal-body fs-6">
                                          		???????????? ???????????? ????????? ?????????????????????????
                                           </div>
                                           <div class="modal-footer">
                                               <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">??????</button>
                                               <button id="delBtn" type="button" class="btn btn-primary">??????</button>
                                           </div>
                                       </div>
                                   </div>
                               </div>
                               <button id="btnDel" value="Del" class="border-0 btn bg-danger shadow" type="button" data-bs-toggle="modal"
                                   data-bs-target="#deleteModal">
                                   <i class="fa-solid fa-trash-can" style="color: white;"></i>
                               </button>
                               <button id="btnSave" class="border-0 btn bg-success shadow" type="button">
                                   <i class="fa-regular fa-bookmark" style="color: white;"></i>
                               </button>
                           </div>
                         </div>
					</div>
				</form>				
		<!-- <footer class="bg-dark">
	        <div class="footer">
	            <div class="footer_inner">
	                [???]????????????,????????????,???????????????
	                <ul class="footer_link" id="footer_link">
	                    <li><a target="_blank" class="footer_item" href="#"
	                            id="fot.agreement"><span class="text text-white">????????????</span></a></li>
	                    <li><a target="_blank" class="footer_item" href="#l"
	                            id="fot.privacy"><span class="text text-white">????????????????????????</span></a></li>
	                    <li><a target="_blank" class="footer_item" href="#"
	                            id="fot.disclaimer"><span class="text text-white">????????? ????????? ????????????</span></a></li>
	                    <li><a target="_blank" class="footer_item"
	                            href="#" id="fot.help"><span
	                                class="text text-white">???????????? ????????????</span></a></li>
	                </ul>
	                <div class="footer_copy">
	                    <a  id="fot.naver" target="_blank" href="https://www.navercorp.com">
	                        <img src="/resources/images/main/logo2.png" alt="logo" style="width: 45px;">
	                    </a>
	                    <span class="text text-white">Copyright</span>
	                    <span class="corp text-white">?? MATZIP Corp.</span>
	                    <span class="text text-white">All Rights Reserved.</span>
	                </div>
	            </div>
	        </div>
	    </footer> -->
		 <form name="formVo" id="formVo" method="post">
			<!-- *Vo.jsp s -->
			<%-- <%@include file="memberVo.jsp"%> --%>
			<!-- #-> -->
			<!-- *Vo.jsp e -->
		</form> 
		   <!-- content e -->
		<!-- partial -->
	
		<!-- end --> 
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="https://kit.fontawesome.com/a33686bef4.js" crossorigin="anonymous"></script>
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script>
			
			var goUrlList = "/comment/xdminCommentList";
			var goUrlForm = "/comment/xdminCommentForm";
			var goUrlInst = "/comment/commentInst"; /* #-> */
			var goUrlUpdt = "/comment/commentUpdt"; /* #-> */
			var goUrlUel = "/comment/commentUele";
	        var goUrlDel = "/comment/commentDele";	
			
			var ccgSeq = $("input:hidden[name=ccgSeq]"); /* #-> */

			var form = $("form[name=formList]");
			var formVo = $("form[name=formVo]");
			
			var ifcmSeq = $("input[name=ifcmSeq]");
	        
			$("#btnList").on("click", function() {
				formVo.attr("action", goUrlList).submit();
			});
			
		  function sample6_execDaumPostcode() {
		        new daum.Postcode({
		            oncomplete: function(data) {
		                // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.
		
		                // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
		                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
		                var addr = ''; // ?????? ??????
		                var extraAddr = ''; // ???????????? ??????
		
		                //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
		                if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
		                    addr = data.roadAddress;
		                } else { // ???????????? ?????? ????????? ???????????? ??????(J)
		                    addr = data.jibunAddress;
		                }
		
		                // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
		                if(data.userSelectedType === 'R'){
		                    // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
		                    // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
		                    if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
		                        extraAddr += data.bname;
		                    }
		                    // ???????????? ??????, ??????????????? ?????? ????????????.
		                    if(data.buildingName !== '' && data.apartment === 'Y'){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
		                    if(extraAddr !== ''){
		                        extraAddr = ' (' + extraAddr + ')';
		                    }
		                    // ????????? ??????????????? ?????? ????????? ?????????.
		                    document.getElementById("sample6_extraAddress").value = extraAddr;
		                
		                } else {
		                    document.getElementById("sample6_extraAddress").value = '';
		                }
		
		                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
		                document.getElementById('sample6_postcode').value = data.zonecode;
		                document.getElementById("sample6_address").value = addr;
		                // ????????? ???????????? ????????? ????????????.
		                document.getElementById("sample6_detailAddress").focus();
		            }
		        }).open();
		    }


	</script>
</body>

</html>
