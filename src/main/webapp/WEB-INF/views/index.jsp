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
                              <div class="banner_img"><img style="width: 280px; height: 400px;" src="resource/img/qman1.jpeg"></div>
                           </div>
                           <div class="col-md-6">
                              <div class="banner_taital_main">
                                 <h1 class="banner_taital">qman</h1>
                                 <h5 class="tasty_text">about qman</h5>
                                 <div class="btn_main">
                                    <div class="about_bt"><a href="#">구만 소개</a></div>
                                    <div class="callnow_bt active"><a href="#">작품 활동</a></div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     
                     <div class="carousel-item">
                        <div class="row">
                           <div class="col-md-6">
                              <div class="banner_img"><img style="width: 280px; height: 280px;" src="resource/img/qman_gif.gif"></div>
                           </div>
                           <div class="col-md-6">
                              <div class="banner_taital_main">
                                 <h1 class="banner_taital">perform</h1>
                                 <h5 class="tasty_text">qman's performance</h5>
                                 <div class="btn_main">
                                    <div class="about_bt"><a href="#">일정 확인</a></div>
                                    <div class="callnow_bt active"><a href="#">공연 예매</a></div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     
                     <div class="carousel-item">
                        <div class="row">
                           <div class="col-md-6">
                              <div class="banner_img"><img style="width: 280px; height: 280px;" src="resource/img/letter.png"></div>
                              <a href="https://www.flaticon.com/kr/free-icons/" title="편지 아이콘">편지 아이콘  제작자: Freepik - Flaticon</a>
                           </div>
                           <div class="col-md-6">
                              <div class="banner_taital_main">
                                 <h1 class="banner_taital">letter</h1>
                                 <h5 class="tasty_text">To. qman</h5>
                                 <div class="btn_main">
                                    <div class="about_bt"><a href="#">편지쓰러가기</a></div>
                                    <div class="callnow_bt active"><a href="#">편지보러가기</a></div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     
                  </div>
                  
                  <a class="carousel-control-prev" href="#banner_slider" role="button" data-slide="prev">
                  <i class="fa fa-arrow-left"></i>
                  </a>
                  
                  <a class="carousel-control-next" href="#banner_slider" role="button" data-slide="next">
                  <i class="fa fa-arrow-right"></i>
                  </a>
                  
               </div>
               
            </div>
         </div>
         <!-- banner section end -->
      
      <!-- album section start -->
      <div class="coffee_section layout_padding">
         <div class="container">
            <div class="row">
               <h1 class="coffee_taital">qman's album</h1>
               <div class="bulit_icon"><img src="resource/img/bulit-icon.png"></div>
            </div>
         </div>
         <div class="coffee_section_2">
            <div id="main_slider" class="carousel slide" data-ride="carousel">
               <div class="carousel-inner">
                  <div class="carousel-item active">
                     <div class="container-fluid">
                        <div class="row">
                           <div class="col-lg-3 col-md-6">
                              <div class="coffee_img"><img src="resource/img/qman_album10.jpg"></div>
                              <h3 class="types_text">Blue Rain</h3>
                              <p class="looking_text">발매일 2023.07.09</p>
                              <div class="read_bt"><a href="#">Read More</a></div>
                           </div>
                           <div class="col-lg-3 col-md-6">
                              <div class="coffee_img"><img src="resource/img/qman_album1.jpg"></div>
                              <h3 class="types_text">아주 멀리</h3>
                              <p class="looking_text">발매일 2023.03.06</p>
                              <div class="read_bt"><a href="#">Read More</a></div>
                           </div>
                           <div class="col-lg-3 col-md-6">
                              <div class="coffee_img"><img src="resource/img/qman_album2.jpg"></div>
                              <h3 class="types_text">Analo9ue</h3>
                              <p class="looking_text">발매일 2022.10.16</p>
                              <div class="read_bt"><a href="#">Read More</a></div>
                           </div>
                           <div class="col-lg-3 col-md-6">
                              <div class="coffee_img"><img src="resource/img/qman_album3.jpg"></div>
                              <h3 class="types_text">파란만장</h3>
                              <p class="looking_text">발매일 2022.08.06</p>
                              <div class="read_bt"><a href="#">Read More</a></div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="carousel-item">
                     <div class="container-fluid">
                        <div class="row">
                           <div class="col-lg-3 col-md-6">
                              <div class="coffee_img"><img src="resource/img/qman_album4.jpg"></div>
                              <h3 class="types_text">다른 널 사랑하고 싶어</h3>
                              <p class="looking_text">발매일 2022.01.29</p>
                              <div class="read_bt"><a href="#">Read More</a></div>
                           </div>
                           <div class="col-lg-3 col-md-6">
                              <div class="coffee_img"><img src="resource/img/qman_album5.jpg"></div>
                              <h3 class="types_text">나 혼자 남은 지구</h3>
                              <p class="looking_text">발매일 2021.10.03</p>
                              <div class="read_bt"><a href="#">Read More</a></div>
                           </div>
                           <div class="col-lg-3 col-md-6">
                              <div class="coffee_img"><img src="resource/img/qman_album6.jpg"></div>
                              <h3 class="types_text">Dance Rather Than Love</h3>
                              <p class="looking_text">발매일 2020.11.29</p>
                              <div class="read_bt"><a href="#">Read More</a></div>
                           </div>
                           <div class="col-lg-3 col-md-6">
                              <div class="coffee_img"><img src="resource/img/qman_album7.jpg"></div>
                              <h3 class="types_text">스쳐 지나간 옷깃처럼</h3>
                              <p class="looking_text">발매일 2020.01.18</p>
                              <div class="read_bt"><a href="#">Read More</a></div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="carousel-item">
                     <div class="container-fluid">
                        <div class="row">
                           <div class="col-lg-3 col-md-6">
                              <div class="coffee_img"><img src="resource/img/qman_album8.jpg"></div>
                              <h3 class="types_text">그대의 것</h3>
                              <p class="looking_text">발매일 2019.09.19</p>
                              <div class="read_bt"><a href="#">Read More</a></div>
                           </div>
                           <div class="col-lg-3 col-md-6">
                              <div class="coffee_img"><img src="resource/img/qman_album9.jpg"></div>
                              <h3 class="types_text">Chance</h3>
                              <p class="looking_text">발매일 2019.06.11</p>
                              <div class="read_bt"><a href="#">Read More</a></div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
               <i class="fa fa-arrow-left"></i>
               </a>
               <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
               <i class="fa fa-arrow-right"></i>
               </a>
            </div>
         </div>
      </div>
      <!-- album section end -->
      
      <!-- about section start -->
      <div class="about_section layout_padding">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <h1 class="about_taital">Popular Youtube</h1>
                  <div class="bulit_icon"><img src="resource/img/bulit-icon.png"></div>
                  <p align = "middle">
                  	<iframe width="560" height="315" src="https://www.youtube.com/embed/k5aC86SZOH0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                  </p>
               </div>
            </div>
         </div>
      </div>
      <!-- about section end -->
      
    <!-- copyright section start -->
	<jsp:include page="./footer.jsp"></jsp:include>
	<!-- copyright section end -->