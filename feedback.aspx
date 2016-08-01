<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>FeedBack</title>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#page6').addClass("active");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrap">
    <div class="contact-form">
				  	<h3>Any Suggestions</h3>  	
                      <div>
						    	<span><label>NAME</label></span>
						    	<span><input id="userName" type="text" class="textbox" runat="server"/></span>
						    </div>
						    <div>
						    	<span><label>E-MAIL</label></span>
						    	<span><input id="userEmail" type="text" class="textbox" runat="server"/></span>
						    </div>
						    <div>
						    	<span><label>SUBJECT</label></span>
						    	<span><textarea id="userMsg" runat="server"> </textarea></span>
						    </div>
						   <div>
						   		<span><asp:Button ID="Button1" runat="server" Text="Submit" CssClass="mybutton" OnClick="submitfb"/></span>
						  </div>
				    </div>
        </div>
</asp:Content>

