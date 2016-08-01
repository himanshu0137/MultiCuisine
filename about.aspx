<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>About Us</title>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#page2').addClass("active");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!---start-content---->
		 <div class="content">
		 	<!---start-about---->
		 	<div class="about-us">
		 			<div class="wrap">
						<div class="about-header">
							<h3>About us</h3>
							<div class="clear"> </div>
						</div>
						<div class="about-info">
							<a href="#">Where tradition meets innovation</a>
							<p>Our award winning multi-cuisine restaurant, Tamra, is a vibrant, lively and fun space that is suitable for all types of dining occasions. Offering a blend of modern culinary styles with friendly and engaging service, it takes its inspiration from the early ages of culinary evolution, when copper (tamra) vessels were used to create delectable wonders. The restaurant's interactive kitchens are a tribute to the early marketplaces, where chefs presented their skills and produced culinary delights to sell to traders and visitors.

Tamra is a depiction of a culinary expedition from around the world. It is a treasure trove adorned with quirky and strong design elements. The planter boxes lined with wheat grass that form the backdrop of the continental section, the canopy made from rolling pins, the rustic slated timber on the Japanese, Asian and Indian counter bulkheads and contemporary colourful tiles give the space an overall warm and plush ambience.

Serving Asian, Japanese, international and Indian fare from its five interactive live kitchens, Tamra takes the culinary experience to the next level with its 'world on your platter concept'. The restaurant boasts delicious grilled specialities from the Far East, tandoori treats from Central Asia, the largest selection of exquisite shaken and stirred cocktails at a well-designed bar, unique homemade popsicles and ice cream, a healthy green island and a fresh, flavoursome array of meats from a butcher's block. Tamra promises to be the ideal destination for an epicurean adventure with an array of global flavours and aromas that will make your dining experience memorable.</p>
						</div>
					<div class="specials">
					<div class="specials-heading">
						<h3>Today Special</h3>
						<div class="clear"></div>
					</div>
					<div class="clear"> </div>
					<div class="specials-grids" runat="server" id="spm">
						
					</div>
					<div class="clear"> </div>
					</div>
					</div>
					<div class="testmonials">
						<div class="wrap">
							<div class="testmonial-grid">
								<h3>TESTIMONIALS :</h3>
								<p runat="server" id="tm"></p>
								<a href="#" runat="server" id="tmname"></a>
							</div>
						</div>
					</div>
		 	<!---End-about---->
		 </div>
		 <!---End-content---->
             </div>
</asp:Content>

