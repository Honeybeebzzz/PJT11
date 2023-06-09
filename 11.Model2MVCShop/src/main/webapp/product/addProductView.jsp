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


function fncAddProduct(){
	//Form 유효성 검증
 	//var name = document.detailForm.prodName.value;
	//var detail = document.detailForm.prodDetail.value;
	//var manuDate = document.detailForm.manuDate.value;
	//var price = document.detailForm.price.value;
	var name = $("input[name='prodName']").val();
	var detail = $("input[name='prodDetail']").val();
	var manuDate = $("input[name='manuDate']").val();
	var price = $("input[name='price']").val();
	
	
	if(name == null || name.length<1){
		alert("상품명은 반드시 입력하여야 합니다.");
		return;
	}
	if(detail == null || detail.length<1){
		alert("상품상세정보는 반드시 입력하여야 합니다.");
		return;
	}
	if(manuDate == null || manuDate.length<1){
		alert("제조일자는 반드시 입력하셔야 합니다.");
		return;
	}
	if(price == null || price.length<1){
		alert("가격은 반드시 입력하셔야 합니다.");
		return;
	}
	
	$("form").attr("method","POST").attr("action", "/product/addProduct").attr("enctype","multipart/form-data").submit();


}

$(function () {
	
	$( "button.btn.btn-primary" ).on("click" , function() {
		fncAddProduct();
		
	});

	
	$("a[href='#' ]").on("click" , function() {
		$("form")[0].reset();
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
        minDate: new Date(2000, 1, 1), // 최소 날짜
        maxDate: new Date(2030, 12, 31) // 최대 날짜
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
			    <strong class="text-danger">최소날짜 2000.1.1 , 최대날짜 2030.12.31 까지 입력가능</strong>
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
		      <strong class="text-danger">가격에 천단위 구분자 자동입력</strong>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="files" class="col-sm-offset-1 col-sm-3 control-label">상품이미지</label>
		    <div class="col-sm-4">
		      <input type="file" class="form-control" id="files" name="files" placeholder="최대 1장 첨부 가능합니다.">
		    </div>
		  </div>
	<!-- //////////////////////////////////////////////-->


		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >확&nbsp;인</button>
			  <a class="btn btn-primary btn" href="#" role="button">취&nbsp;소</a>
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  화면구성 div end /////////////////////////////////////-->

</body>
</html>
