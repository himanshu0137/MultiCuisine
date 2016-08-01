<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Cart</title>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#page7').addClass("active");
            $("input.qty").keyup(function () {
                var q = [];
                $("input.qty").each(function () {
                    q.push($(this).val());
                });
                PageMethods.total(q,ispass,isfail);
            function ispass(data) {
                location.reload();
            }
            function isfail() {
                $.extend(true, $.simplyToast.defaultOptions, { 'align': 'center' });
                $.simplyToast('Item not added', 'failed');
            }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrap" runat="server">
        <h3>Cart Items</h3>
        <div id="content" runat="server"></div>
    </div>
    <p runat="server" id="tt"></p>
</asp:Content>

