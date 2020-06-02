<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주식토론글 수정</title>
<script>
$(function(){
    $('#sf_content').summernote({
    		lang: 'ko-KR',
			height: 150,
			codemirror: {
			theme: 'monokai'
		}
    });
    $('#sf_content').summernote('code', '<font color ="black">${stockForumInfo.sf_content}</font> ');
    
    $('form').submit(function(){
    	var fbo_content = $('#sf_content').summernote('code');
    	var sf_group = ${stockForumInfo.sf_group};
		$(this).attr("action", "${pageContext.request.contextPath }/stockForum/updateStockForum.do");
        $(this).append("<input type='hidden' id='sf_content' name='sf_content' value='" + fbo_content + "'/>");
        $(this).append("<input type='hidden' id='sf_group' name='sf_group' value='" + sf_group + "'/>");
	});
    
    $('#listBtn').click(function(){
		location.href='${pageContext.request.contextPath}/stockForum/stockForumList.do';
	});
    
});
</script>
</head>
<body>
<div class="wrap">
        <div class="headerSubandContent">
            <p>커뮤니티 > 주식토론방</p>
            <h2 style="margin-top: 0px;margin-bottom: 0px;">주식토론방</h2>
            <content>
                <div class="box-article">
                <form class="articleContent" action="" method="post">
                    <div class="titleSub">
                        <label for="a_no"><span>게시글 번호:${stockForumInfo.sf_rnum}</span></label>
                        <label for="a_id"><span>글쓴이:${stockForumInfo.sf_writer}</span></label>
                        <label for="a_date"><span>날짜:${stockForumInfo.sf_reg_date}</span></label>
                        <label for="a_date"><span>조회수:${stockForumInfo.sf_hit}</span></label>
                    </div>
                    	<input type="hidden" class="form-control" id="sf_no" name="sf_no" value="${stockForumInfo.sf_no }" >
                        <div class="title">
                            <label for="a_title"><span>제목</span></label>
                            <input type="text" class="box-simple-full" id="sf_title" name="sf_title" value="${stockForumInfo.sf_title }" placeholder="">
                        </div>
                    <div id="sf_content"><p></p></div>
                        <div class="cs_file">
                            <input type="file" class="input_file" id="u_file">
                            <div class="file_name">파일명</div><a href="#">검색</a>
                        </div>
                        <div class="cs_file">
                            <input type="file" class="input_file" id="u_file">
                            <div class="file_name">파일명</div><a href="#">검색</a>
                        </div>
                    
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