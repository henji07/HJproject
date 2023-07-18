<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>구만이네</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="resource/css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="resource/css/style-profile.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="resource/css/responsive.css">
      <!-- font css -->
      <link rel="preconnect" href="https://fonts.gstatic.com">
	  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">  
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="resource/css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
   </head>
   
   <body>
      <!-- header section start -->
      <jsp:include page="./header.jsp"></jsp:include>
      <!-- header section end -->
         
         <!-- banner section start --> 
         <div class="banner_section layout_padding">
            <div class="container">
            
               <div id="banner_slider" class="carousel slide" data-ride="carousel">
               
                  <div class="carousel-inner">
                  
                     <div class="carousel-item active">
                        <div class="row">
                           <div class="col-md-6">
                              <div class="banner_img"><img style="width: 280px; height: 400px;" src="resource/img/qman1.jpeg"></div>
                           </div>
                           <div class="col-md-6">
                              <div class="banner_taital_main">
                                 <h1 class="banner_taital">qman</h1>
                                 <h5 class="tasty_text">about qman</h5>
                              </div>
                           </div>
                        </div>
                     </div>
                     
                  </div>
                  
               </div>
               
            </div>
         </div>
         <!-- banner section end -->       
      
     <!-- profile section start -->
	 <div class="sub-menu">
	 	 <a style="font-weight: bold;" class="sub-link" href="/about-qman">프로필</a>
		 <a class="sub-link" href="/about-qman/album">앨범 소개</a>
		 <a class="sub-link" href="/about-qman/youtube">구만 채널</a>	 
	 </div>  
	 
	 <div class="profile-info">
		<table>
			<tr>
				<td>본명</td>
				<td>김규만</td>
			</tr>
			<tr>
				<td>출생</td>
				<td>1997. 04.26</td>
			</tr>
			<tr>
				<td>소속사</td>
				<td>해피로봇 레코드</td>
			</tr>
			<tr>
				<td>신체</td>
				<td>181cm, B형, 270mm</td>
			</tr>
			<tr>
				<td>MBTI</td>
				<td>INTP (고정x)</td>
			</tr>
		</table>
	</div>
	 <!-- profile section end -->
          
	  <!-- copyright section start -->
	  <jsp:include page="./footer.jsp"></jsp:include>
      <!-- copyright section end -->
      
      <!-- Javascript files-->     
      <script src="resource/js/jquery.min.js"></script>
      <script src="resource/js/popper.min.js"></script>
      <script src="resource/js/bootstrap.bundle.min.js"></script>
      <script src="resource/js/jquery-3.0.0.min.js"></script>
      <script src="resource/js/plugin.js"></script>
      <!-- sidebar -->
      <script src="resource/js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="resource/js/custom.js"></script>
   </body>
</html>