<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>여행 후기 작성</title>
    <script src="//cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>
    <style>
	    /* 에디터 전체 영역 */
	.ck-editor {
	  width: 100%;
	  height: 500px; /* 높이 지정 */
	}
	
	/* 에디터 내부의 텍스트 에리어 */
	.ck-editor__editable {
	  height: 100%;
	}
    
    </style>
</head>
<body>

	<jsp:include page="/layout/toolbar.jsp" />
   	
   	
    <h1>여행 후기 작성</h1>
    <form method="post" action="/board/write">
        <div>
            <label for="title">제목:</label>
            <input type="text" id="title" name="title">
        </div>
        <div>
            <label for="content">내용:</label>
            <textarea id="content" name="content"></textarea>
        </div>
        <div>
            <button type="submit">작성</button>
        </div>
    </form>
    <script>
        CKEDITOR.replace('content');
    </script>
</body>
</html>
