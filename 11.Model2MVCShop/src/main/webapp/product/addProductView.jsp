<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	<!-- 캘린더 css라이브러리 -->
	<!-- Bootstrap CSS -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap datetimepicker CSS -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
	<!-- Bootstrap CSS와 jQuery UI CSS를 로드합니다. -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
	<!-- Bootstrap JavaScript -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- Bootstrap datetimepicker JavaScript -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<!-- jQuery UI -->
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>



	<!-- 캘린더 css라이브러리 -->
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
		<style>
       body > div.container{
        	border: 3px solid #D9F0A0;
            margin-top: 10px;
        }
  	  </style>
    
    <!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">

//==> 추가된부분 : "수정" "확인"  Event 연결 및 처리
$(function () {
			$("td.ct_btn01:contains('확인')").on("click", function () {
				self.location = "/product/listProduct?menu=manage"
				
			});
			
			$("td.ct_btn01:contains('추가등록')").on("click", function() {
				
				self.loaction = "../product/addProductView.jsp;"
				
			});
						
		});

</script>
<!-- 캘린더 css라이브러리 -->
<script>
  $(function() {
    // 캘린더 아이콘을 클릭하면 캘린더 위젯이 표시됩니다.
    $('#datepicker-icon').click(function() {
      $('#manuDate').datepicker({
        dateFormat: 'yy-mm-dd', // 날짜 형식 설정
        autoclose: true, // 날짜 선택 후 닫힘
        todayHighlight: true,  // 오늘 날짜 강조
        useCurrent: false,	  // 오늘 날짜 선택 방지
        minDate: new Date(2000, 0, 1), // 최소 날짜
        maxDate: new Date(2030, 11, 31) // 최대 날짜
      }).datepicker('show');
    });
  });
</script>


<!-- 캘린더 css라이브러리 -->
<!-- 가격에 천단위 구분자 -->
<script>
$("#price").on('keyup', function(){
  var x = $(this).val();
  x = x.replace(/,/g,'');
  x = x.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
  $(this).val(x);
});
</script>
<!-- 가격에 천단위 구분자 -->

</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<div class="navbar  navbar-default">
        <div class="container">
        	<a class="navbar-brand" href="/index.jsp">Model2 MVC Shop</a>
   		</div>
   	</div>
   	<!-- ToolBar End /////////////////////////////////////-->
   	
   	
   	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
	
		<h1 class="bg-primary text-center">상 품 등 록</h1>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">
		
		  <div class="form-group">
		    <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">상품명</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodName" name="prodName" placeholder="상품명을 입력하세요." >		
		 	</div>    
		  </div>    
		  
		  <div class="form-group">
		    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">상품상세정보</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodDetail" name="prodDetail" placeholder="상품상세정보를 적어주세요.">
		    </div>
		  </div>
		  
			<div class="form-group">
			  <label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">제조일자</label>
			  <div class="col-sm-4">
			    <div class="input-group date">
			      <input type="text" class="form-control" id="manuDate" name="manuDate" placeholder="제조일자">
			      <span class="input-group-addon" id="datepicker-icon">
			        <i class="glyphicon glyphicon-calendar"></i>
			      </span>
			    </div>
			  </div>
			</div>

<!-- jQuery와 Bootstrap JS, jQuery UI JS를 로드합니다. -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

		  <div class="form-group">
		    <label for="price" class="col-sm-offset-1 col-sm-3 control-label">상품 가격</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="price" name="price" placeholder="상품 가격">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="fileName" class="col-sm-offset-1 col-sm-3 control-label">상품이미지</label>
		    <div class="col-sm-4">
		      <input type="file" class="form-control" id="fileName" name="fileName" placeholder="최대 1장 첨부 가능합니다.">
		    </div>
		  </div>
	<!-- //////////////////////////////////////////////-->


		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >확&nbsp;인</button>
			  <a class="btn btn-primary btn" href="#" role="button">추가등록</a>
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  화면구성 div end /////////////////////////////////////-->

</body>
</html>
