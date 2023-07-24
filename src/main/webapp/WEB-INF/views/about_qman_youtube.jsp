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
		 <a class="sub-link" href="/about-qman/album">앨범 소개</a>
		 <a style="font-weight: bold;" class="sub-link" href="/about-qman/youtube">구만 채널</a>
	 </div>  
	 <!-- profile section end -->
	 
	 <!-- youtube section start -->
	 <div align="center" class="youtube-container"></div>
		 <div id="youtube-section"></div>
		 
		 <div class="container">
		    <div class="row justify-content-center">
		        <div class="col-lg-12">
		            <nav>
		                <ul class="pagination">
		                    <!-- 여기에 페이지 넘버가 추가됩니다 -->
		                </ul>
		            </nav>
		        </div>
		    </div>
		</div>
	</div>
	 <!-- youtube section end -->
	 
	<!-- copyright section start -->
	<jsp:include page="./footer.jsp"></jsp:include>
	<!-- copyright section end -->
     
      <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	  <script type="text/javascript">
	    $(document).ready(function() {
	        var videosPerPage = 6; // 원하는 영상의 수
	        var totalVideos;
	        var totalPages;
	
	        $.ajax({
	            type: "GET",
	            dataType: "json",
	            url: "https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=25&channelId=UCUxdBzi0brkeqg6Bn9bxrSA&type=video&key=AIzaSyCO8gQy5-nYjnPhgJ3WTYy7XyaW-ufkmQk",
	            contentType : "application/json",
	            success : function(data) {
	                totalVideos = data.items.length;
	                totalPages = Math.ceil(totalVideos / videosPerPage);
	
	                data.items.forEach(function(element, index) {
	                    var video = $('<iframe width="560" height="315" src="https://www.youtube.com/embed/'+element.id.videoId+'" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
	                    if (index >= videosPerPage) {
	                        video.addClass('hidden');
	                    }
	                    $('#youtube-section').append(video);
	                });
	
	                for (var i = 1; i <= totalPages; i++) {
	                    var page = $('<li class="page-item"><a class="page-link" href="#">'+i+'</a></li>');
	                    if (i == 1) {
	                        page.addClass('active');
	                    }
	                    $('.pagination').append(page);
	                }
	            },
	            complete : function(data) {
	            },
	            error : function(xhr, status, error) {
	                console.log("유튜브 요청 에러: "+error);
	            }
	        });
	
	        $(document).on('click', '.pagination a', function(e) {
	            e.preventDefault();
	            var pageNum = $(this).text();
	            $('.pagination li').removeClass('active');
	            $(this).parent().addClass('active');
	            $('#youtube-section iframe').each(function(index) {
	                if (index >= (pageNum - 1) * videosPerPage && index < pageNum * videosPerPage) {
	                    $(this).removeClass('hidden');
	                } else {
	                    $(this).addClass('hidden');
	                }
	            });
	        });
	    });
	</script>
	  
   </body>
</html>