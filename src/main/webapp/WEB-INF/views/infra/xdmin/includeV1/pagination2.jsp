<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<div class="container-fluid px-0 mt-2 pb-3">
    <div class="row">
        <div class="col">
            <!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
            <ul class="pagination justify-content-center mb-0">
                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
					<c:if test="${vo.startPage2 gt vo.pageNumToShow2}">
		                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage2 - 1})"><i class="fa-solid fa-angle-left"></i></a></li>
					</c:if>
					<c:forEach begin="${vo.startPage2}" end="${vo.endPage2}" varStatus="i">
						<c:choose>
							<c:when test="${i.index eq vo.thisPage2}">
				                <li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
							</c:when>
							<c:otherwise>             
				                <li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>                
					<c:if test="${vo.endPage2 ne vo.totalPages2}">                
	                	<li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage2 + 1})"><i class="fa-solid fa-angle-right"></i></a></li>
					</c:if>
                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
            </ul>
        </div>
    </div>
</div>