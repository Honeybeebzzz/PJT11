<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	<!-- Ķ���� css���̺귯�� -->
	<!-- Bootstrap CSS -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap datetimepicker CSS -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
	<!-- Bootstrap CSS�� jQuery UI CSS�� �ε��մϴ�. -->
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



	<!-- Ķ���� css���̺귯�� -->
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
		<style>
       body > div.container{
        	border: 3px solid #D9F0A0;
            margin-top: 10px;
        }
  	  </style>
    
    <!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">

//==> �߰��Ⱥκ� : "����" "Ȯ��"  Event ���� �� ó��
$(function () {
			$("td.ct_btn01:contains('Ȯ��')").on("click", function () {
				self.location = "/product/listProduct?menu=manage"
				
			});
			
			$("td.ct_btn01:contains('�߰����')").on("click", function() {
				
				self.loaction = "../product/addProductView.jsp;"
				
			});
						
		});

</script>
<!-- Ķ���� css���̺귯�� -->
<script>
  $(function() {
    // Ķ���� �������� Ŭ���ϸ� Ķ���� ������ ǥ�õ˴ϴ�.
    $('#datepicker-icon').click(function() {
      $('#manuDate').datepicker({
        dateFormat: 'yy-mm-dd', // ��¥ ���� ����
        autoclose: true, // ��¥ ���� �� ����
        todayHighlight: true,  // ���� ��¥ ����
        useCurrent: false,	  // ���� ��¥ ���� ����
        minDate: new Date(2000, 0, 1), // �ּ� ��¥
        maxDate: new Date(2030, 11, 31) // �ִ� ��¥
      }).datepicker('show');
    });
  });
</script>


<!-- Ķ���� css���̺귯�� -->
<!-- ���ݿ� õ���� ������ -->
<script>
$("#price").on('keyup', function(){
  var x = $(this).val();
  x = x.replace(/,/g,'');
  x = x.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
  $(this).val(x);
});
</script>
<!-- ���ݿ� õ���� ������ -->

</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<div class="navbar  navbar-default">
        <div class="container">
        	<a class="navbar-brand" href="/index.jsp">Model2 MVC Shop</a>
   		</div>
   	</div>
   	<!-- ToolBar End /////////////////////////////////////-->
   	
   	
   	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<h1 class="bg-primary text-center">�� ǰ �� ��</h1>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">
		
		  <div class="form-group">
		    <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">��ǰ��</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodName" name="prodName" placeholder="��ǰ���� �Է��ϼ���." >		
		 	</div>    
		  </div>    
		  
		  <div class="form-group">
		    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">��ǰ������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodDetail" name="prodDetail" placeholder="��ǰ�������� �����ּ���.">
		    </div>
		  </div>
		  
			<div class="form-group">
			  <label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">��������</label>
			  <div class="col-sm-4">
			    <div class="input-group date">
			      <input type="text" class="form-control" id="manuDate" name="manuDate" placeholder="��������">
			      <span class="input-group-addon" id="datepicker-icon">
			        <i class="glyphicon glyphicon-calendar"></i>
			      </span>
			    </div>
			  </div>
			</div>

<!-- jQuery�� Bootstrap JS, jQuery UI JS�� �ε��մϴ�. -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

		  <div class="form-group">
		    <label for="price" class="col-sm-offset-1 col-sm-3 control-label">��ǰ ����</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="price" name="price" placeholder="��ǰ ����">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="fileName" class="col-sm-offset-1 col-sm-3 control-label">��ǰ�̹���</label>
		    <div class="col-sm-4">
		      <input type="file" class="form-control" id="fileName" name="fileName" placeholder="�ִ� 1�� ÷�� �����մϴ�.">
		    </div>
		  </div>
	<!-- //////////////////////////////////////////////-->


		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >Ȯ&nbsp;��</button>
			  <a class="btn btn-primary btn" href="#" role="button">�߰����</a>
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->

</body>
</html>
