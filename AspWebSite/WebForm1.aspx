<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AspWebSite.WebForm1" %>

   
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"> 
    <div class="container contact" style="padding: 4%;	height: 400px; background-color: #25274d; background-image:url(image/gabe-rebra-Dxsyq2sU4w4-unsplash.jpg);background-size: cover;background-position: center; background-repeat: no-repeat;">
	<div class="row">
		<div class="col-md-3" style="background: #ff9b00;padding: 4%; border-top-left-radius: 0.5rem; border-bottom-left-radius: 0.5rem;">
			<div class="contact-info" style="margin-top:10%;">
				<img src="https://image.ibb.co/kUASdV/contact-image.png" alt="image" style="margin-bottom: 15%;"/>
				<h2>Contact Us</h2>
				<h4>We would love to hear from you !</h4>
			</div>
		</div>
		<div class="col-md-9" style="background: #fff;	padding: 3%;	border-top-right-radius: 0.5rem;	border-bottom-right-radius: 0.5rem;">
			<div class="contact-form" style="">
				<div class="form-group">
				  <label class="control-label col-sm-2" for="fname" style="font-weight:600;">First Name:</label>
				  <div class="col-sm-10"> 
					 <asp:TextBox ID="TextBox1" class="form-control" runat="server" type="text" placeholder="Enter First Name"></asp:TextBox> 
					</div>
				</div>
				<div class="form-group"> 
				  <label class="control-label col-sm-2" for="lname" style="font-weight:600;">Last Name:</label>
				  <div class="col-sm-10">
					  <asp:TextBox ID="TextBox2" class="form-control" runat="server" type="text" placeholder="Enter Last Name"></asp:TextBox>
					</div>
				</div>
				<div class="form-group">
				  <label class="control-label col-sm-2" for="email" style="font-weight:600;">Email:</label>
				  <div class="col-sm-10">
					  <asp:TextBox ID="TextBox38" class="form-control" runat="server" type="email" placeholder="Enter email"></asp:TextBox>
					  </div>
				</div>
				<div class="form-group">
				  <label class="control-label col-sm-2" for="comment" style="font-weight:600;">Comment:</label>
				  <div class="col-sm-10">
					<asp:TextBox ID="TextBox37" class="form-control" runat="server" type="text" placeholder="Enter Message"></asp:TextBox>
				  </div>
				</div>
				<div class="form-group ">        
				  <div class="col-sm-offset-2 col-sm-10 pt-2">
					 <asp:Button ID="Button7" runat="server" Text="Send" type="submit" class="btn btn-default rounded-pill bg-primary" style="box-shadow:none; background: #25274d;color: #fff;font-weight: 600;width: 25%;" OnClick="Button7_Click" />
				  </div>
				</div>
			</div>
		</div>
	</div>
</div>
	<br />			                            
	<div>
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126744.2837289018!2d79.8319033129067!3d6.919404849550599!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2578c1c737005%3A0xdec3cacbcd5bfd73!2sVisithuru%20Flora%20Fresh%20Flowers%20(%20Flower%20Shop)!5e0!3m2!1sen!2slk!4v1608843991095!5m2!1sen!2slk" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
	</div>
    
</asp:Content>
		
		
