<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
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
                              <div class="banner_img"><img style="width: 280px; height: 400px;" src="/resource/img/qman1.jpeg"></div>
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
	 	 <a class="sub-link" href="/about-qman">프로필</a>
		 <a style="font-weight: bold;" class="sub-link" href="/about-qman/album">앨범 소개</a>
		 <a class="sub-link" href="/about-qman/youtube">구만 채널</a>		 
	 </div>  
	 <!-- profile section end -->
	 
	 <!-- album section start -->
	 <div class="card">
	  <img class="album-image" src="/resource/img/qman_album10.jpg" alt="Blue Rain">
	  <div class="container">
	    <h4><b>Blue Rain</b></h4> 
	    <p style="font-size: 13px;">2023.07.09</p> 
	  </div>
	</div>
	
	<div class="card">
	  <img class="album-image" src="/resource/img/qman_album1.jpg" alt="아주 멀리">
	  <div class="container">
	    <h4><b>아주 멀리</b></h4> 
	    <p style="font-size: 13px;">2023.03.06</p> 
	  </div>
	</div>
	
	<div class="card">
	  <img class="album-image" src="/resource/img/qman_album2.jpg" alt="아주 멀리">
	  <div class="container">
	    <h4><b>Analo9ue</b></h4> 
	    <p style="font-size: 13px;">2022.10.16</p> 
	  </div>
	</div>
	
	<div class="card">
	  <img class="album-image" src="/resource/img/qman_album3.jpg" alt="아주 멀리">
	  <div class="container">
	    <h4><b>파란만장</b></h4> 
	    <p style="font-size: 13px;">2022.08.06</p> 
	  </div>
	</div>
	
	<div class="card">
	  <img class="album-image" src="/resource/img/qman_album4.jpg" alt="아주 멀리">
	  <div class="container">
	    <h4><b>다른 널 사랑하고 싶어</b></h4> 
	    <p style="font-size: 13px;">2022.01.29</p> 
	  </div>
	</div>
	
	<div class="card">
	  <img class="album-image" src="/resource/img/qman_album5.jpg" alt="Blue Rain">
	  <div class="container">
	    <h4><b>나 혼자 남은 지구</b></h4> 
	    <p style="font-size: 13px;">2021.10.03</p> 
	  </div>
	</div>
	
	<div class="card">
	  <img class="album-image" src="/resource/img/qman_album6.jpg" alt="아주 멀리">
	  <div class="container">
	    <h4><b>Dance Rather Than Love</b></h4> 
	    <p style="font-size: 13px;">2020.11.29</p> 
	  </div>
	</div>
	
	<div class="card">
	  <img class="album-image" src="/resource/img/qman_album7.jpg" alt="아주 멀리">
	  <div class="container">
	    <h4><b>스쳐 지나간 옷깃처럼</b></h4> 
	    <p style="font-size: 13px;">2020.01.18</p> 
	  </div>
	</div>
	
	<div class="card">
	  <img class="album-image" src="/resource/img/qman_album8.jpg" alt="아주 멀리">
	  <div class="container">
	    <h4><b>그대의 것</b></h4> 
	    <p style="font-size: 13px;">2019.09.19</p> 
	  </div>
	</div>
	
	<div class="card">
	  <img class="album-image" src="/resource/img/qman_album9.jpg" alt="아주 멀리">
	  <div class="container">
	    <h4><b>Chance</b></h4> 
	    <p style="font-size: 13px;">2019.06.11</p> 
	  </div>
	</div>
	<!-- album section end -->
          
	<!-- copyright section start -->
	<jsp:include page="./footer.jsp"></jsp:include>
	<!-- copyright section end -->