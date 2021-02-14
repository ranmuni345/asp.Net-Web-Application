<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AspWebSite.Contact" %>





<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div style="background-image:url(image/paul-green-5lRxNLHfZOY-unsplash.jpg);background-size: cover;background-position: center; background-repeat: no-repeat;">
   
    <section  style="width:500px; height: 410px; background-color:; opacity:0.9; background-image:url(image/sergey-shmidt-koy6FlCCy5s-unsplash.jpg);background-size: cover;background-position: center; background-repeat: no-repeat;" class="mx-auto border border-dark bg">
        <div class="p-5">
            <div class="text-center">
                <h1 class="">Login</h1>
             </div>

        <div class="form-group pt-5">
           <label for="exampleInputEmail1"><h4>Email address</h4></label>
            <asp:TextBox ID="username" class="form-control" runat="server" type="email" placeholder="Enter email" OnTextChanged="username_TextChanged"></asp:TextBox>
           <br />
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
       </div>
       <div class="form-group pt-3">
       <label for="exampleInputPassword1"><h4>Password</h4></label>
       <asp:TextBox ID="password" runat="server" class="form-control rounded-pill"  placeholder="Password" OnTextChanged="password_TextChanged"></asp:TextBox>
       </div>

       <%-- <div class="form-group">
       <asp:Label ID="Label1" runat="server" Text="frogot password ?"></asp:Label>
       </div>--%>

       <%-- <div class="form-check">--%>
  </div>

  <div class="text-center ">
        <asp:Button ID="ButtonLogbtn" runat="server" Text="Send" type="submit" class="btn btn-primary rounded-pill " style="width:100px; height:50px;" OnClick="Button1_Click" />
  </div>
           
       
   </section>
        </div>
</asp:Content>
