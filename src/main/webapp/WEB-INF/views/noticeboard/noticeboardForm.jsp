<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	$(function(){
		$('#notice_content').summernote({
			lang:'ko-KR',
			height:150,
			codemirror:{
				theme:'monakai'
			}
		});
		$('#notice_content').summernote('code','<font color="black">${noticeboardInfo.notice_content}</font>');

		$('#listBtn').click(function(){
			location.href='${pageContext.request.contextPath}/noticeboard/noticeboardList.do';
		});
		
		$('form').submit(function(){
			if($('#notice_title').val()==""){
				alert('제목을 입력하세요');
				return false;
			}
			
			var notice_content = $('#notice_content').summernote('code');
			$(this).attr("action","${pageContext.request.contextPath}/noticeboard/insertNoticeboard.do");
			$(this).append("<input type='hidden' id='notice_content' name='notice_content' value='"+notice_content+"'/>");
		});
	});
</script>
</head>
<body>
<div class="wrap">
        <div class="headerSubandContent">
<!--             <p>커뮤니티 > 자유게시판</p> -->
<!--             <h2 style="margin-top: 0px;margin-bottom: 0px;">자우게시판</h2> -->
            <content>
                <div class="box-article">
                <form class="articleContent" action="" method="post" enctype="multipart/form-data">
                    <div class="titleSub">
                        <label for="a_no"><span>게시글 번호:${noticeboardInfo.notice_rnum}</span></label>
                        <label for="a_id"><span>글쓴이:${LOGIN_ADMININFO.admin_id}</span></label>
<%--                         <label for="a_id"><span>글쓴이:${noticeboardInfo.notice_writer}</span></label>                        --%>
                        <label for="a_date"><span>날짜:${noticeboardInfo.notice_reg_date}</span></label>
                        <label for="a_date"><span>조회수:${noticeboardInfo.notice_hit}</span></label>
                    </div>
                    	<input type="hidden" class="form-control" id="notice_no" name="notice_no" value="${noticeboardInfo.notice_no }" >
                    	<input type="hidden" class="form-control" id="admin_id" name="admin_id" value="${LOGIN_ADMININFO.admin_id }" >
<%--                     	<input type="hidden" class="form-control" id="notice_writer" name="notice_writer" value="${LOGIN_MEMBERINFO.mem_nickname }" > --%>
                    	<input type="hidden" class="form-control" id="notice_writer" name="notice_writer" value="${LOGIN_ADMININFO.admin_id  }" >

                        <div class="title">
                            <label for="a_title"><span>제목</span></label>
                            <input type="text" class="box-simple-full" id="notice_title" name="notice_title" placeholder="">
                        </div>
                    <div id="notice_content"><p></p></div>
<!--                          <div class="form-group"> -->
<!-- 							<label class="control-label col-sm-2" for="file01">첨부파일1:</label> -->
<!-- 							<div class="col-sm-10"> -->
<!-- 								 <input type="file" class="filestyle" id="file01" name="files" data-buttonName="btn-primary"> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="form-group"> -->
<!-- 							<label class="control-label col-sm-2" for="file02">첨부파일2:</label> -->
<!-- 							<div class="col-sm-10"> -->
<!-- 								 <input type="file" class="filestyle" id="file02" name="files" data-buttonName="btn-primary"> -->
<!-- 							</div> -->
<!-- 						</div> -->
                    
                    <div class="submitBtn">
                        <input id="updateBtn" class="btn-simple" type="submit" name="" value="확인">
                        <input id="listBtn" class="btn-simple" type="button" value="목록">
                    </div>
                </form>
            </div> 
            </content>
        </div>
    </div>
</body>
</html>