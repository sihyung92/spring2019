<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css">
	<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
				pageIdx();
			$('nav a').eq(0).click(function(e){
				e.preventDefault();
				pageIdx();
			});
			
			$('nav a').eq(1).click(function(e){
				e.preventDefault();
				pageIdx();
			});
			
			$('nav a').eq(2).click(function(e){
				e.preventDefault();
				pageIntro();
			});
			
			$('nav a').eq(4).click(function(e){
				//list
				e.preventDefault();
				getList();
			});
			
			$('nav a').eq(5).click(function(e){
				//add
				e.preventDefault();
				getAdd();
			});
			
			$(document).on('click','#content table tr td>a',function(e){
				e.preventDefault();
				
				$.getJSON('json/obj',$(this).attr('href'),function(data){
					myModal();
					$('#myModal h4').text("수정 페이지");
					$('#myModal form input,textarea').eq(0).val(data.num);
					$('#myModal form input,textarea').eq(1).val(data.sub);
					$('#myModal form input,textarea').eq(2).val(data.name);
					$('#myModal form input,textarea').eq(3).val(data.content);
					var options={show:true};
					$('#myModal').modal(options);
					$('.modal-footer button').eq(1).show();
				});
			});
		});
		
		function getList(){
			$('nav a').parent().removeClass('active');
			$('nav a').eq(3).parent().addClass('active');
			var eles = $('<h1>리스트 페이지</h1>');
			var table = $('<table class="table"></table>').appendTo(eles);
			$('<tr></tr>').appendTo(table).append('<th>글번호</th>')
											.append('<th>글제목</th>')
											.append('<th>글쓴이</th>')
											.append('<th>조회수</th>');
			
			$.getJSON('json/list',function(data){
				arr=data;
				for(var i=0; i<arr.length; i++){
				$('<tr></tr>').appendTo(table).append('<td><a href="idx='+arr[i].num+'">'+arr[i].num+'</a></td>')
											.append('<td><a href="idx='+arr[i].num+'">'+arr[i].sub+'</a></td>')
											.append('<td><a href="idx='+arr[i].num+'">'+arr[i].name+'</a></td>')
											.append('<td><a href="idx='+arr[i].num+'">'+arr[i].cnt+'</a></td>');
			}
			
			$('#content').html(eles);
			});
		}

		function myModal(){
			$('#myModal h4').text("입력 페이지");
			$('#myModal form input,textarea').eq(0).val('');
			$('#myModal form input,textarea').eq(1).val('');
			$('#myModal form input,textarea').eq(2).val('');
			$('#myModal form input,textarea').eq(3).val('');
			var options={show:true}
			$('#myModal').modal(options);
		}
		
		function getAdd(){
			getList();
			myModal();
			$('.modal-footer button').hide().eq(0).show();
		}

		function updateOne(){
			$.ajax({
				url:'json/obj',
				type:'PUT',
				data:'idx',
				success:function(data){
					data
				}
				//dataType:,
			});
		}
		
		function insertOne(){
			var params = $('#myModal form').serialize();
			$.post('json/add',params,function(){
				$('#myModal form input,textarea').val('');
				getList();
				$('.modal-footer button').eq(1).show();
			});
		}
		
		function pageIdx(){
			$('nav a').parent().removeClass('active');
			$('nav a').eq(1).parent().addClass('active');
			var ele='<img alt="img" src="imgs/s01.jpg" class="img-thumbnail"/>';
			ele+='<img alt="img" src="imgs/s02.jpg" class="img-thumbnail"/>';
			$('#content').html(ele);
		}
		
		function pageIntro(){
			$('nav a').parent().removeClass('active');
			$('nav a').eq(2).parent().addClass('active');
			var ele='<img alt="img" src="imgs/s03.jpg" class="img-thumbnail"/>';
			ele+='<img alt="img" src="imgs/s04.jpg" class="img-thumbnail"/>';
			$('#content').html(ele);
		}
		
		
	</script>
	<style type="text/css">
		#content img{
			height : 100%;
		}
	</style>
</head>
<body>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
	  <form class="form-horizontal">
	  	<input type="hidden" name="num" >
	      <div class="modal-body">
			<div class="container-fluid"> 
				<div class="row">   
					  <div class="form-group">
					    <label for="sub" class="col-sm-2 control-label">sub</label>
					    <div class="col-sm-10">
					  	    <input type="text" class="form-control" name="sub" id="sub">
					    </div>
			   		  </div>
					  <div class="form-group">
					    <label for="name" class="col-sm-2 control-label">name</label>
					    <div class="col-sm-10">
					  	    <input type="text" class="form-control" name="name" id="name">
					    </div>
			   		  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
					  	    <textarea class="form-control" name="content"></textarea>
					    </div>
			   		  </div>
	      		</div>
	      	</div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary" onclick="insertOne()">입력</button>
	        <button type="button" class="btn btn-primary" onclick="updateOne()">수정</button>
	      </div>
    </form>
    </div>
  </div>
</div>
<!-- modal end -->
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">비트교육센터</a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">home<span class="sr-only">(current)</span></a></li>
        <li><a href="#">INTRO</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">BBS <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">LIST</a></li>
            <li class="divider"></li>
            <li><a href="#">ADD</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="jumbotron">
				<h1>hi</h1>
			</div>
		</div>
	</div>
	<div class="row">
		<div id="content" class="col-md-12">
		</div>
	</div>
	<div class="row">	
		<div id="footer" class="col-md-12">
			<address>
			  <strong>비트캠프</strong><br>
			  깊은 저 바닷속<br>
			  파인애플<br>
			  <abbr title="Phone">P:</abbr> (123) 456-7890
			</address>
			<address>
			  <strong>Copyright &copy; 비트캠프 All rights reserved</strong><br>
			  <a href="mailto:bit01class@gmail.com">관리자에게 문의</a>
			</address>
		</div>
	</div>
</div>
</body>
</html>
