<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Menu</title>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#page4').addClass("active");
        });
        function addtocart(a) {
            PageMethods.addtocart(a.id,ispass,isfail);
        };
        function ispass(data) {
            $.extend(true, $.simplyToast.defaultOptions, { 'align': 'center' });
            $.simplyToast('Item added to Cart', 'success');
        }
        function isfail() {
            $.extend(true, $.simplyToast.defaultOptions, { 'align': 'center' });
            $.simplyToast('Item not added', 'failed');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!---start-content---->
		 <div class="content">
		 	<!---start-gallery----->
		 	<div class="gallerys">
                 
		 		<div class="wrap" runat="server" id="mi">
					<h3>Menu</h3>
				</div>
				</div>
		 	<!---End-gallery----->
             </div>
		 <!---End-content---->
</asp:Content>

