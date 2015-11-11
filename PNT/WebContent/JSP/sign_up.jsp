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
	
	<script type="text/javascript" src="../light/style/js/jquery-2.1.4.js"></script>
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
				<!-- 회원가입 페이지에서 로그인 버튼 누를 시 index로 넘어감 -->
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

	<div style="background:#fff;">
	<form name="frm" action="sign_check.jsp" method="post" class="signup_form">
		<div>
			<label for="id" class="signup_label">ID</label>
			<input type="text" name="id" class="input-text" autofocus>
		</div>
		<div>
			<label for="name" class="signup_label">이름</label>
			<input type="text" name="name" class="input-text">
		</div>
		<div>
			<label for="pwd" class="signup_label">비밀번호</label>
			<input type="password" name="pwd" class="input-text">
		</div>
		<div>
			<label for="phone" class="signup_label">연락처</label>
			<input type="text" name="phone" class="input-text">
		</div>
		<div>
		 	<label for="e-mail" class="signup_label">e-mail</label>
		 	<input type="email" name="email" class="input-text">
		 </div>
	 	<div>
		 	<label for="language" class="signup_label">언어</label>
		 	<input type="text" name="language" class="input-text">
		</div>
		<div>
			<input type="submit" value="가입하기" class="btn-style">
		</div>
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