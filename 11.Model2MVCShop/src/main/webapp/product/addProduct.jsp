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
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- 캘린더 css라이브러리 -->
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
 		body {
            padding-top : 50px;
        }
        body > div.container{
        	border: 3px solid #D9F0A0;
            margin-top: 10px;
        }
     </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">


		$(function () {
			
			$( "button.btn.btn-primary" ).on("click" , function() { //확인
				self.location = "/product/listProduct?menu=manage";
				
			});
		
			
			$("a[href='#' ]").on("click" , function() {
				 self.location = "../product/addProductView.jsp"; //추가등록
			});
		});
		
</script>

</head>

<body>


	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header">
	       <h3 class=" text-info">등록된 상품</h3>
	       <h5 class="text-muted">등록한 상품 정보를 확인하세요.</h5>
	    </div>
	
	<div class="row">
	  	<div class="col-xs-4 col-md-2"><strong>상품명</strong></div>
		<div class="col-xs-8 col-md-4">${product.prodName}</div>
	</div>
		
	<hr/>
	
	<div class="row">
	  	<div class="col-xs-4 col-md-2"><strong>상품상세정보</strong></div>
		<div class="col-xs-8 col-md-4">${product.prodDetail}</div>
	</div>
		
	<hr/>
	
	<div class="row">
	  	<div class="col-xs-4 col-md-2"><strong>제조일자</strong></div>
		<div class="col-xs-8 col-md-4">${product.manuDate}</div>
	</div>
		
	<hr/>
	
	<div class="row">
	  	<div class="col-xs-4 col-md-2"><strong>상품가격</strong></div>
		<div class="col-xs-8 col-md-4">${product.price}</div>
	</div>
		
	<hr/>
	
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>상품이미지</strong></div>
			<div class="col-xs-8 col-md-4">
					<img src = "/images/uploadFiles/${product.fileName }"/>
			</div>
		</div>
		
	<hr/>
	
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >확&nbsp;인</button>
			  <a class="btn btn-primary btn" href="#" role="button">추가등록</a>
		    </div>
		  </div>
		
		<br/>
		
 	</div>
 	<!--  화면구성 div Start /////////////////////////////////////-->

</body>

</html>
	<!--///////////////////////////////////////////////////////////-->


