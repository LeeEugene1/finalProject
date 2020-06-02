<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 뷰</title>
<script>
	$(function(){
		$('#notice_content').summernote({
			lang: 'ko-KR',
			height:150,
			codemirror:{
				theme:'monokai'
			}
		});
		$('#notice_content').summernote('code','<font color="black">${noticeboardInfo.notice_content}</font>');

// 		if('${LOGIN_MEMBERINFO.admin_id}' != "${noticeboardInfo.admin_id}"){
// 			$('#updateView').hide();
// 			$('#deleteBtn').hide();
// 		}else{
// 			$('#updateView').show();
// 			$('#deleteBtn').show();
// 		}
		
		$('#deleteBtn').click(function(){
			var notice_no = "${noticeboardInfo.notice_no}";
			location.href='${pageContext.request.contextPath}/noticeboard/deleteNoticeboard.do?notice_no='+notice_no;
		});
		
		$('#listBtn').click(function(){
			location.href='${pageContext.request.contextPath}/noticeboard/noticeboardList.do'
		});
		
// 		$('#updateView').click(function(){
// 			var notice_no = "${noticeboardInfo.notice_no}";
// 			location.href='${pageContext.request.contextPath}/noticeboard/updateNoticeboard.do?notice_no='+notice_no;
			
// 		});
		$('form').submit(function(){
			if($('#notice_title').val()==""){
				alert('제목을 입력하세요');
				return false;
			}
			
			var notice_content = $('#notice_content').summernote('code');
			
			$(this).attr("action","${pageContext.request.contextPath}/noticeboard/updateNoticeboard.do");
			$(this).append("<input type='hidden' id='notice_content' name='notice_content' value='"+notice_content+"'/>");
		});
	});
</script>
</head>
<body>
<div class="wrap">
        <div class="headerSubandContent">
<!--             <p>커뮤니티 > 자유게시판</p> -->
<!--             <h2 style="margin-top: 0px;margin-bottom: 0px;">자유게시판</h2> -->
            <content>
                <div class="box-article">
                <form class="articleContent" action="" method="post">
                    
                     <div class="titleSub">
                        <label for="a_no"><span>게시글 번호:${noticeboardInfo.notice_rnum}</span></label>
                        <label for="a_id"><span>글쓴이:${noticeboardInfo.admin_id}</span></label>
                        <label for="a_date"><span>날짜:${noticeboardInfo.notice_reg_date}</span></label>
                        <label for="a_date"><span>조회수:${noticeboardInfo.notice_hit}</span></label>
                    </div>
                   
                   	<input type="hidden" class="form-control" id="notice_no" name="notice_no" value="${noticeboardInfo.notice_no }" >
                    <div class="title">
                        <label for="a_title"><span>제목</span></label>
                        <input type="text" class="box-simple-full" id="notice_title" name="notice_title" value="${noticeboardInfo.notice_title }" placeholder="">
                    </div>
                
                    <div id="notice_content"><p></p></div>
<%--                     <c:choose> --%>
<%-- 						<c:when test="${!empty freeboardInfo.fr_bo_items }"> --%>
<!-- 							<div class="form-group"> -->
<!-- 								<label class="control-label col-sm-2" for="fr_bo_content"><p>첨부파일</p></label> -->
<!-- 								<div class="carousel-inner" role="listbox" style="display:flex;"> -->
<%-- 									<c:forEach items="${freeboardInfo.fr_bo_items }" var="fr_boFileItem" varStatus="stat"> --%>
<%-- 									<c:choose> --%>
<%-- 										<c:when test="${fn:contains(fr_boFileItem.fr_file_type,'image')}"> --%>
<!-- 											<div class="col-sm-10"> -->
<!-- 												<div class="item active"> -->
<%-- 													<img src="/files/${fr_boFileItem.fr_file_save_name}" alt="pic1"  --%>
<%-- 														onclick="javascript:location.href='${pageContext.request.contextPath}/file/fileDownload.do?fileName=${fr_boFileItem.fr_file_save_name }';"> --%>
<!-- 												</div> -->
<!-- 											</div> -->
<%-- 										</c:when> --%>
<%-- 										<c:otherwise> --%>
<!-- 											<div class="col-sm-10"> -->
<!-- 											<i class="far fa-file"> -->
<%-- 	               								<input type="button" class="filestyle" id="file01" name="files" value="${fr_boFileItem.fr_file_name}" /> --%>
<!-- 	             							</i> -->
<!-- 	           								</div> -->
<%-- 										</c:otherwise> --%>
<%-- 									</c:choose> --%>
<%-- 								</c:forEach> --%>
<!-- 							</div> -->
<%-- 						</c:when> --%>
<%-- 						<c:otherwise> --%>
<!-- 							<div class="form-group"> -->
<!-- 								<label class="control-label col-sm-2" for="fr_bo_content"><p>첨부파일이 없습니다.</p></label> -->
<!-- 								<div class="carousel-inner" role="listbox" style="display:flex;"> -->
<!-- 							</div> -->
<%-- 						</c:otherwise> --%>
<%-- 					</c:choose> --%>
<!-- 					</div> -->
					
                    <div class="submitBtn">
                        <input id="updateView" class="btn-simple" type="submit" name="" value="수정">
                        <input id="deleteBtn" class="btn-simple" type="button" value="삭제">
                        <input id="listBtn" class="btn-simple" type="button" value="목록">
                    </div>
                </form>
            </div> 
            </content>
        </div>
                    
    </div>
</body>
</html>