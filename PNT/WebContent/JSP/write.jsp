<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%--7시 24분에 올립니다. --%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Play and Talk</title>
	<link rel="stylesheet" type="text/css" href="../light/style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../light/style/color/red.css" media="all" />
	<link rel="stylesheet" type="text/css" media="screen" href="../light/style/css/prettyPhoto.css"  />
	<link rel="stylesheet" type="text/css" href="../light/style/type/museo.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../light/style/type/ptsans.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../light/style/type/charis.css" media="all" />
	<!--[if IE 7]>
	<link rel="stylesheet" type="text/css" href="../light/style/css/ie7.css" media="all" />
	<![endif]-->
	<!--[if IE 8]>
	<link rel="stylesheet" type="text/css" href="../light/style/css/ie8.css" media="all" />
	<![endif]-->
	<!--[if IE 9]>
	<link rel="stylesheet" type="text/css" href="../light/style/css/ie9.css" media="all" />
	<![endif]-->
	
	<script type="text/javascript" src="../light/style/js/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="../light/style/js/ddsmoothmenu.js"></script>
	<script type="text/javascript" src="../light/style/js/transify.js"></script>
	<script type="text/javascript" src="../light/style/js/jquery.aw-showcase.js"></script>
	<script type="text/javascript" src="../light/style/js/jquery.jcarousel.js"></script>
	<script type="text/javascript" src="../light/style/js/carousel.js"></script>
	<script type="text/javascript" src="../light/style/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="../light/style/js/jquery.superbgimage.min.js"></script>
	<script type="text/javascript" src="../light/style/js/jquery.slickforms.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($){
			$('.forms').dcSlickForms();
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function()
		{
			$("#showcase").awShowcase(
			{
				content_width:			900,
				content_height:			400,
				auto:					true,
				interval:				3000,
				continuous:				false,
				arrows:					true,
				buttons:				true,
				btn_numbers:			true,
				keybord_keys:			true,
				mousetrace:				false, /* Trace x and y coordinates for the mouse */
				pauseonover:			true,
				stoponclick:			false,
				transition:				'fade', /* hslide/vslide/fade */
				transition_delay:		0,
				transition_speed:		500,
				show_caption:			'onload' /* onload/onhover/show */
			});
		});
	</script>
</head>

<body>
<!-- Fullscreen backgrounds -->
<div id="thumbs">
	<a href="../light/style/images/art/bg8.jpg"></a>
	<a href="../light/style/images/art/bg9.jpg"></a>
	<a href="../light/style/images/art/bg10.png"></a>
	<a href="../light/style/images/art/bg11.png"></a>
	<a href="../light/style/images/art/bg12.png"></a>
	<a href="../light/style/images/art/bg13.png"></a>
</div>

<div id="superbgimage">
	<div class="scanlines"></div>
</div>
<!-- End Fullscreen backgrounds -->

<!-- Begin Wrapper -->
<div id = "wrapper">
<div id="header">
	<div class="logo opacity"><a href="../light/index.html"><img src="../light/style/images/PNT_logo.png" alt="" /></a></div>
	<div class="social">
		<ul>
			<li>
				<!-- 글쓰기 페이지에서 로그인 버튼 누를 시 index로 넘어감 -->
				<a href="../light/index.html" onClick="window.open('../JSP/login.jsp','', 'width=400, height=230');">Login</a>
				&nbsp;&nbsp;&nbsp;
				<a href="../JSP/sign_up.jsp">Sign-Up</a>
				&nbsp;&nbsp;&nbsp;
				<a href="../JSP/write.jsp">Write a schedule</a>
			</li>
		</ul>
	</div>
</div>
<div class="clear"></div>
  
<!-- Begin Container -->
<div id="container" class="opacity">

	<div style="background:#fff; padding:20px;">
	<form action="write_check.jsp" method="post" name="regitform"> 
		<div>
			<label for="title" class="write_label">제목 </label>
			<input type="text" name="title" class="write_input_text">
		</div>
		<div>
			<span>
				<label for="language" class="write_label">언어 </label>
				<input type="text" name="language" value="" class="write_input_text">  
			</span>
			<span>
				<label for="location" class="write_label">장소 </label>
				<input type="text" name="location" value="" class="write_input_text"> 
			</span>
		</div>
		<div>
			<span>
				<label for="dateStart" class="write_label">시작일 </label>
				<input type="date" name="dateStart" value="" class="write_input_date"> 
			</span>
			<span>
				<label for="date" class="write_label">종료일 </label>
				<input type="date" name="date" value="" class="write_input_date"> 
			</span>
		</div>
		<div>
			<label for="contents" class="write_label write_label_contents">세부계획 </label>
			<textarea name="contents" cols="100" rows="20" class="write_input_textarea" ></textarea>
		</div>
		
	 	<input type="submit" value="작성" name="submitbtn" class="btn-style">
		<input type="button" value="수정" name="edit" class="btn-style" onClick="goEdit(temp,' ')">
		<input type="button" value="삭제" name="delete" class="btn-style" onClick="goDelete(temp,' ')">
		<input type="button" value="목록" name="list" class="btn-style" onClick="goList('')">
		<br><br><br>
		<input type="submit" value="이 여행계획에 참여 신청하기" name="requestSchedule"></input>
	</form>
	</div>
	
</div>
<!-- End Container --> 

<div id="copyright" class="opacity">
	<p>Play And Talk™ </p>
</div>

</div>
<!-- End Wrapper --> 

<script type="text/javascript" src="../light/style/js/scripts.js"></script>
</body>
</html>
<!-- 로그인 버튼은 login_check로, 회원가입은 sign_up.jsp로 -->

