<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Home Page</title>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#page1').addClass("active");
        });
        $(function () {
			$('.gallery a').lightBox();
		  });
	  </script>
	 <script type="text/javascript">
			   jQuery(function(){
				jQuery('#camera_wrap_1').camera({
					pagination: false,
				});
			});
	 </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--start-image-slider---->
			    <div class="slider">					     
					<div class="camera_wrap camera_azure_skin" id="camera_wrap_1">									           
						<div data-src="images/slider1.jpg">  </div> 
						<div data-src="images/slider2.jpg">  </div>
						<div data-src="images/slider3.jpg">  </div>
						<div data-src="images/slider4.jpg">  </div>
					</div>
					<div class="clear"> </div>					       
			</div>					
         <!--End-image-slider---->
    <!---start-content---->
		 <div class="content">
		 	<div class="top-grids">
		 		<div class="wrap">
			 		<div class="top-grid">
			 			<a href="#"><img src="images/icon1.png" title="icon-name" alt="image"/></a>
			 			<h3>Sucess Story</h3>
			 			<p>We have to compete on the quality, because big businesses can't mass-produce best tasting products.That's what sets us apart.</p>
			 			<a class="button" href="about.aspx">Read More</a>
			 		</div>
			 		<div class="top-grid">
			 			<a href="#"><img src="images/icon2.png" title="icon-name" alt="image"/></a>
			 			<h3>Our Services</h3>
			 			<p>The experienced staff cater to the needs of all guests by providing an extensive range of services alongside the property's excellent facilities.</p>
			 			<a class="button" href="services.aspx">Read More</a>
			 		</div>
			 		<div class="top-grid last-topgrid">
			 			<a href="#"><img src="images/icon3.png" title="icon-name" alt="image"/></a>
			 			<h3>Location</h3>
			 			<p>Sometimes it's the journey that teaches you a lot about your destination.</p>
			 			<a class="button" href="contact.aspx">Read More</a>
			 		</div>
			 		<div class="clear"> </div>
		 		</div>
		 	</div>
		 	<div class="mid-grid">
		 		<div class="wrap">
			 		<h1>Welcome to our site!</h1>
			 		<h2>Our Motto</h2>
			 		<p>"One cannot think well, love well, sleep well, if one has not dined well."</p>
			 		<a class="button1" href="about.aspx">Read More</a>
		 		</div>
		 	</div>
		 	<div class="bottom-grids">
							<div class="wrap">
								<div class="bottom-grid1">
									<h3>POPULAR INFO</h3>
									<span>consectetur adipisicing elit, sed do eiusmod tempor</span>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
									<ul>
										<li><a href="#">Consectetur adipisicing elit</a></li>
										<li><a href="#">Sed do eiusmod tempor incididunt</a></li>
										<li><a href="#">Labore et dolore magna aliqua.</a></li>
										<li><a href="#">Sed do eiusmod tempor</a></li>
										<li><a href="#">Abore et dolore magna</a></li>
										<li><a href="#">Incididunt ut labore et dolore</a></li>
										<li><a href="#">Dolore magna aliqua</a></li>
										<li><a href="#">Adipisicing elit, sed do eiusmod</a></li>
									</ul>
									<a class="button" href="contact.aspx">Read More</a>
								</div>
								<div class="bottom-grid2 bottom-mid">
									<h3>Today Special</h3>
									<span>consectetur adipisicing elit, sed do eiusmod tempor</span>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
									<div class="gallery">
										<ul>
												<li><a href="images/slider1.jpg"><img src="images/slider1.jpg" alt="image"></a></li>
												<li><a href="images/slider2.jpg"><img src="images/slider2.jpg" alt="image"></a></li>
												<li><a href="images/slider3.jpg"><img src="images/slider3.jpg" alt="image"></a></li>
												<li><a href="images/slider4.jpg"><img src="images/slider4.jpg" alt="image"></a></li>
												<li><a href="images/slider1.jpg"><img src="images/slider1.jpg" alt="image"></a></li>
												<li><a href="images/slider2.jpg"><img src="images/slider2.jpg" alt="image"></a></li>											
											<div class="clear"> </div>
										</ul>										
								 </div>
								 <a class="button" href="gallery.aspx">Read More</a>
							</div>
							<div class="bottom-grid1 bottom-last">
									<h3>Latest INFO</h3>
									<span>consectetur adipisicing elit, sed do eiusmod tempor</span>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
									<a class="button" href="#">Read More</a>
								</div>
								<div class="clear"> </div>
							</div>
							<div class="clear"> </div>
	<!--end-wrap--->
	 </div>
		 </div>
		 <!---End-content---->
</asp:Content>

