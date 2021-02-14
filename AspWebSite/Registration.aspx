<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="AspWebSite.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image:url(image/alisa-anton-D4Blldtly00-unsplash.jpg);background-size: cover;background-position: center; background-repeat: no-repeat;"">
    <section style="width:500px; height: 440px; background-color:; opacity:0.8;" class="mx-auto border border-secondary">
        <div class="p-5">
            <div class="text-center text-warning">
                <h1 class="">Registration</h1>
             </div>
         
        <div class="form-group text-light">
           <label for="exampleInputEmail1"><h4 >Email address</h4></label>
            <asp:TextBox ID="em" class="form-control " runat="server" type="email" placeholder="Enter email"></asp:TextBox>
           <br />
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
       </div>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList>
       <div class="form-group text-light">
       <label for="exampleInputPassword1"><h4>Password</h4></label>
       <asp:TextBox ID="pas" runat="server" class="form-control rounded-pill"  placeholder="Password"></asp:TextBox>
       </div>
     
       <div class="form-group text-light">
       <label for="exampleInputPassword1"><h4>Comfrim Password</h4></label>
       <asp:TextBox ID="cpass" runat="server" class="form-control rounded-pill"  placeholder="Comfrim Password"></asp:TextBox>
       </div>

        <div class="form-check text-light">
          <label class="form-check-label">
             <asp:CheckBoxList ID="CheckBoxList2" Class="rounded-pill " runat="server"></asp:CheckBoxList>
              <input class="form-check-input" type="checkbox" value="">
        <h4>  are you ok ?</h4>
          <span class="form-check-sign">
              <span class="check"></span>
          </span>
       </label>
  </div>

  <div class="text-center ">
        <asp:Button ID="regbtn" runat="server" Text="Send" type="submit" class="btn btn-primary rounded-pill " style="width:100px; height:50px;" OnClick="regbtn_Click" />
  </div>
           
       </div>
   </section>
        </div>
</asp:Content>
