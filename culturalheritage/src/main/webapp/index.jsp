<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>문화재청 202번지</title>
<link href="./resources/css/style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="./resources/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="./resources/js/jquery.gallerax-0.2.js"></script>
<style type="text/css">
@import "./resources/css/gallery.css";
@import "./resources/css/style.css";

</style>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<div id="logo">
				<h1>
					<a href="<%=request.getContextPath()%>/index.jsp">문화재청 202번지 </a>
				</h1>
			</div>
		</div>
		<!-- end #header -->
		
		
<nav class="menu">
	<ul class="menu-bar">
		<li class="dropdown-item"><a href="#">홈으로</a></li>
		<li class="dropdown-item"><a href="#">새소식</a>
			<ul class="dropdown-content">
				<li><a href="#">새소식 하위1</a>
				<a href="#">새소식 하위2</a></li>
				<li><a href="#">새소식 하위3</a></li>
			</ul>
		</li>
		<li class="dropdown-item"><a href="#">민원마당</a>
			<ul class="dropdown-content">
				<li><a href="#">민원민원</a></li>
			</ul>
		</li>
		<li class="dropdown-item"><a href="#">문화유산정보</a>
			<ul class="dropdown-content">
				<li><a href="<%=request.getContextPath()%>/village/villageCultural">우리동네문화재</a></li>
			</ul>
		</li>
		<li class="dropdown-item"><a href="#">문화재청소개</a>
			<ul class="dropdown-content">
				<li><a href="#">문화재청 소개소개</a></li>
			</ul>
		</li>
		<li>
        	<span style="float: right; padding: 7px 10px 0 0;">
					<form method="get" action="#">
						<div>
							<input type="text" name="s" id="search-text" value="" /> &nbsp;
							<input type="submit" id="search-submit" value="GO" />
						</div>
					</form>
				</span>
        </li>

	</ul>
</nav>
		
		
		<!-- /////////////  기존거  /////////////// -->
		
		<%-- <div id="menu">
			
			<!--  -->
				
			
				<div class="dropdown">
					<span class="dropdowm-item"><a href="#" id="dropdown-a">새소식</a></span>
						<div class="dropdown-content">
							<p><a href="">테스트1</a></p>
						</div>
				</div>
				
				<div class="dropdown">
					<span class="dropdowm-item"><a href="#" id="dropdown-a">민원마당</a></span>
						<div class="dropdown-content">
							<p><a href="">민원마당 하위</a></p>
						</div>
				</div>
				
				<div class="dropdown">
					<span class="dropdowm-item"><a href="#" id="dropdown-a">문화유산정보</a></span>
						<div class="dropdown-content">
							<p><a href="<%=request.getContextPath()%>/village/villageCultural">우리동네 문화재</a></p>
						</div>
				</div>
				
				<div class="dropdown">
					<span class="dropdowm-item"><a href="#" id="dropdown-a">문화재청소개</a></span>
						<div class="dropdown-content">
							<p><a href="">문화재청소개 하위</a></p>
						</div>
				</div>
				
			<!-- Search 폼  -->
				<span style="float: right; padding: 7px 10px 0 0">
					<form method="get" action="#">
						<div>
							<input type="text" name="s" id="search-text" value="" /> &nbsp;
							<input type="submit" id="search-submit" value="GO" />
						</div>
					</form>
				</span>
				<!-- Search 폼끝!  -->
			<!-- </ul> -->
		</div> --%>
		
		
		
		<!-- //////////////////////////// -->
		
		
		
		
		<!-- end #menu -->
		<div id="page">
			<div id="page-bgtop">
				<div id="page-bgbtm">
					<div id="content">
						<div id="gallery-wrapper">
							<div id="gallery">
								<img class="output" src="./resources/images/img04.jpg" alt="" />
								<div id="thumbnail-bg">
									<ul class="thumbnails">
										<li><img class="active"
											src="./resources/images/img04.jpg" title="Monument Valley"
											alt="" width="604" height="375"
											onmouseover="this.style.opacity=1;this.filters.alpha.opacity=100"
											onmouseout="this.style.opacity=0.4;this.filters.alpha.opacity=70" /></li>
										<li><img src="./resources/images/img05.jpg"
											title="Honey Bee" alt="" width="100" height="75"
											onmouseover="this.style.opacity=1;this.filters.alpha.opacity=100"
											onmouseout="this.style.opacity=0.4;this.filters.alpha.opacity=70" /></li>
										<li><img src="./resources/images/img06.jpg"
											title="Cup of Coffee" alt="" width="100" height="75"
											onmouseover="this.style.opacity=1;this.filters.alpha.opacity=100"
											onmouseout="this.style.opacity=0.4;this.filters.alpha.opacity=70" /></li>
										<li><img src="./resources/images/img07.jpg"
											title="Grand Tetons" alt="" width="100" height="75"
											onmouseover="this.style.opacity=1;this.filters.alpha.opacity=100"
											onmouseout="this.style.opacity=0.4;this.filters.alpha.opacity=70" /></li>
									</ul>
								</div>
								<br class="clear" />
							</div>
							<script type="text/javascript">
								$('#gallery').gallerax({
									outputSelector : '.output', // Output selector
									thumbnailsSelector : '.thumbnails li img', // Thumbnails selector
									captionSelector : '.caption' // Caption selector
								});
							</script>
							<!-- end -->
						</div>
						<div class="post">
							<h2 class="title">
								<a href="#">Welcome to Arthropod </a>
							</h2>
							<p class="meta">
								<span class="date">September 10, 2009</span><span class="posted">Posted
									by <a href="#">Someone</a>
								</span>
							</p>
							<div style="clear: both;">&nbsp;</div>
							<div class="entry">
								<p>
									This is <strong>Arthropod </strong>, a free, fully
									standards-compliant CSS template designed by FreeCssTemplates<a
										href="http://www.nodethirtythree.com/"></a> for <a
										href="http://www.freecsstemplates.org/">Free CSS Templates</a>.
									The slideshow uses photos from <a href="http://www.pdphoto.org">PDPhoto.org</a>
									and is powered by Gallerax (a jQuery plugin by <a
										href="http://www.nodethirtythree.com/">NodeThirtyThree</a>).
									This free template is released under a <a
										href="http://creativecommons.org/licenses/by/3.0/">Creative
										Commons Attributions</a> license, so you’re pretty much free to do
									whatever you want with it (even use it commercially) provided
									you keep the links in the footer intact. Aside from that, have
									fun with it :)
								</p>
								<p>Sed lacus. Donec lectus. Nullam pretium nibh ut turpis.
									Nam bibendum. In nulla tortor, elementum ipsum. Proin imperdiet
									est. Phasellus dapibus semper urna. Pellentesque ornare, orci
									in felis. Donec ut ante. In id eros. Suspendisse lacus turpis,
									cursus egestas at sem.</p>
								<p class="links">
									<a href="#">Read More</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a
										href="#">Comments</a>
								</p>
							</div>
						</div>
						<div class="post">
							<h2 class="title">
								<a href="#">Lorem ipsum sed aliquam</a>
							</h2>
							<p class="meta">
								<span class="date">September 10, 2009</span><span class="posted">Posted
									by <a href="#">Someone</a>
								</span>
							</p>
							<div style="clear: both;">&nbsp;</div>
							<div class="entry">
								<p>
									Sed lacus. Donec lectus. Nullam pretium nibh ut turpis. Nam
									bibendum. In nulla tortor, elementum vel, tempor at, varius
									non, purus. Mauris vitae nisl nec metus placerat consectetuer.
									Donec ipsum. Proin imperdiet est. Phasellus <a href="#">dapibus
										semper urna</a>. Pellentesque ornare, orci in consectetuer
									hendrerit, urna elit eleifend nunc, ut consectetuer nisl felis
									ac diam. Etiam non felis. Donec ut ante. In id eros.
									Suspendisse lacus turpis, cursus egestas at sem. Mauris quam
									enim, molestie in, rhoncus ut, lobortis a, est.
								</p>
								<p class="links">
									<a href="#">Read More</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a
										href="#">Comments</a>
								</p>
							</div>
						</div>
						<div style="clear: both;">&nbsp;</div>
					</div>
					<!-- end #content -->
					<div id="sidebar">
						<ul>
							<!-- 		<li>
								<div id="search">
									<form method="get" action="#">
										<div>
											<input type="text" name="s" id="search-text" value="" /> <input
												type="submit" id="search-submit" value="GO" />
										</div>
									</form>
								</div>
								<div style="clear: both;">&nbsp;</div>
							</li> -->
							<li>
								<h2>Aliquam tempus</h2>
								<p>Mauris vitae nisl nec metus placerat perdiet est.
									Phasellus dapibus semper consectetuer hendrerit.</p>
							</li>
							<li>
								<h2>Categories</h2>
								<ul>
									<li><a href="#">Aliquam libero</a></li>
									<li><a href="#">Consectetuer adipiscing elit</a></li>
									<li><a href="#">Metus aliquam pellentesque</a></li>
									<li><a href="#">Suspendisse iaculis mauris</a></li>
									<li><a href="#">Urnanet non molestie semper</a></li>
									<li><a href="#">Proin gravida orci porttitor</a></li>
								</ul>
							</li>
							<li>
								<h2>Blogroll</h2>
								<ul>
									<li><a href="#">Aliquam libero</a></li>
									<li><a href="#">Consectetuer adipiscing elit</a></li>
									<li><a href="#">Metus aliquam pellentesque</a></li>
									<li><a href="#">Suspendisse iaculis mauris</a></li>
									<li><a href="#">Urnanet non molestie semper</a></li>
									<li><a href="#">Proin gravida orci porttitor</a></li>
									<li><a href="#">Suspendisse iaculis mauris</a></li>
									<li><a href="#">Urnanet non molestie semper</a></li>
								</ul>
							</li>
							<li>
								<h2>Archives</h2>
								<ul>
									<li><a href="#">Aliquam libero</a></li>
									<li><a href="#">Consectetuer adipiscing elit</a></li>
									<li><a href="#">Metus aliquam pellentesque</a></li>
									<li><a href="#">Suspendisse iaculis mauris</a></li>
									<li><a href="#">Urnanet non molestie semper</a></li>
									<li><a href="#">Proin gravida orci porttitor</a></li>
									<li><a href="#">Suspendisse iaculis mauris</a></li>
									<li><a href="#">Urnanet non molestie semper</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- end #sidebar -->
					<div style="clear: both;">&nbsp;</div>
				</div>
			</div>
		</div>
		<!-- end #page -->
	</div>
	<div id="footer">
		<p>
			Copyright (c) 2008 Sitename.com. All rights reserved. Design by <a
				href="http://www.freecsstemplates.org/">Free CSS Templates</a>.
		</p>
	</div>
	<!-- end #footer -->
</body>
</html>