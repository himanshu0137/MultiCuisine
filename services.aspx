<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Services</title>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#page3').addClass("active");
        });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!---start-content---->
		 <div class="content">
		 	<!---start-services---->
		 	<div class="services">
		 		<div class="wrap">
					<div class="services-header">
						<h3>Services</h3>
						<div class="clear"> </div>
					</div>
					<div class="services-grids">
						<div class="services-grid">
							<a href="#">Menus</a>
							<p>A La Carte Menu, Choices of  Set Menus including Vegetaerian Menu , Fixed Price Sunday Lunch Buffet Menu, Tailored Menus, Special occasion Menu</p>
						</div>
						<div class="services-grid">
							<a href="#">Restaurant Bookings</a>
							<p>Private Dining area, Banquets, Garden Seating in the Summer, Music & Dance (on request), Children Welcome, Special Functions, parites, No Pets, Non Smoking.</p>
						</div>
						<div class="services-grid">
							<a href="#">Restaurant Food & Drink</a>
							<p>	A La Carte, Bar, Beers, Buffets, Business Lunches, Dinner, Fully Licensed, House Wines, Lagers, Lunches, Meals, Sunday Lunch, Wine List</p>
						</div>
						<div class="services-grid">
							<a href="#">Cuisine</a>
							<p>Traditional Chinese dishes e.g.Crispy Aromatic Duck , Barbecue Spare Rib, Crispy Beef, Singapore Rice Noodle.Thai Menu e.g. Thai Style Curry, Thai Chicken Wings and Thai Style Salad.</p>
						</div>
						<div class="services-grid">
							<a href="#">Gift Vouchers</a>
							<p>Gift vouchers avalible.</p>
						</div>
						<div class="services-grid">
							<a href="#">Take Away Service</a>
							<p>For a little extra, we can even deliver and loan plates and take care of the washing up for you</p>
						</div>
						<div class="services-grid">
							<a href="#">Home Banquet Service</a>
							<p>From &#8377;200 per head, (20-100 people), we design your menu for you and provide stainless steel buffet warmers.  Minimum &#8377;5000 and advance booking Only.</p>
						</div>
						<div class="services-grid">
							<a href="#">Hospitality</a>
							<p>MultiCuisine Catering offers a variety of services including hospitality for conferences, events, business meetings and private dining.</p>
						</div>
						 <div class="clear"> </div>
					</div>
				
				<div class="specials">
					<div class="specials-heading">
						<h3>Special Dishes</h3>
						<div class="clear"> </div>
					</div>
					<div class="clear"> </div>
                    <div class="specials-grids" id="sspm" runat="server">
                    </div>
					<div class="clear"> </div>
					</div>
				</div>
				</div>
		 	<!---End-services---->
             </div>
		 <!---End-content---->
</asp:Content>

