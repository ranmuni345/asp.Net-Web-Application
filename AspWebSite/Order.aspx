<%@ Page Title="Order" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="AspWebSite.Order" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section  style="width:100%; height: auto; background-image:url(image/alisa-anton-D4Blldtly00-unsplash.jpg);background-size: cover;background-position: center; background-repeat: no-repeat;" class="mx-auto border border-dark bg-info">
         <div class="row text-center">
             <div class="col-4 ">
                  <h1 class="text-warning">Order Details Fill</h1>
                <div>
                     <div class="form-group pt-3">
                        
       <asp:TextBox ID="flowercategoryNameOrcode" runat="server" class="form-control rounded-pill"  placeholder=" Category" ></asp:TextBox>
       </div>
                     <div class="form-group pt-3">
       
       <asp:TextBox ID="flowerId" runat="server" class="form-control rounded-pill"  placeholder="Id" ></asp:TextBox>
       </div>
                     <div class="form-group pt-3">
       <asp:TextBox ID="flowername" runat="server" class="form-control rounded-pill"  placeholder="Flower Name" ></asp:TextBox>
       </div>
       <div class="form-group pt-3">
       <asp:TextBox ID="flowerpriceone" runat="server" class="form-control rounded-pill"  placeholder="One Price" ></asp:TextBox>
       </div>
                     <div class="form-group pt-3">
       
       <asp:TextBox ID="flowerquentity" runat="server" class="form-control rounded-pill"  placeholder="Quentity" ></asp:TextBox>
       </div>
       <div class="form-group pt-3">
       
       <asp:TextBox ID="totalPrice" runat="server" class="form-control rounded-pill"  placeholder="Total Price" ></asp:TextBox>
       </div>
                    <div class="text-center ">
        <asp:Button ID="orderbtn" runat="server" Text="Send" type="submit" class="btn btn-primary rounded-pill " style="width:100px; height:50px;" OnClick="orderbtn_Click" />
  </div>
                </div>
             </div>
             
             <div class="col-4  ">
                  <h1 class="text-warning">Customer Details Fill</h1>
                 <div>
                                    <div class="form-group pt-3">
       <asp:TextBox ID="fname" runat="server" class="form-control rounded-pill"  placeholder="First name" ></asp:TextBox>
       </div>
                     <div class="form-group pt-3">
       <asp:TextBox ID="lastname" runat="server" class="form-control rounded-pill"  placeholder="Last name" ></asp:TextBox>
       </div>
                     <div class="form-group pt-3">
       <asp:TextBox ID="email" runat="server" class="form-control rounded-pill"  placeholder="Email"  type="email"></asp:TextBox>
       </div>
             <div class="form-group pt-3">
       <asp:TextBox ID="number" runat="server" class="form-control rounded-pill"  placeholder="Contact number" ></asp:TextBox>
       </div>
                     <div class="text-center ">
        <asp:Button ID="cusbtn" runat="server" Text="Send" type="submit" class="btn btn-primary rounded-pill " style="width:100px; height:50px;" OnClick="cusbtn_Click"  />
  </div>
                </div>
             </div>

             <div class="col-4 ">
                  <h1 class="text-warning">Shipping details Fill</h1>
                 <div>
                                    
                     <div class="form-group pt-3">
       <asp:TextBox ID="add1" runat="server" class="form-control rounded-pill"  placeholder="Address Line 1" ></asp:TextBox>
       </div>
                     <div class="form-group pt-3">
       <asp:TextBox ID="add2" runat="server" class="form-control rounded-pill"  placeholder="Address Line 2" ></asp:TextBox>
       </div>
             <div class="form-group pt-3">
       <asp:TextBox ID="city" runat="server" class="form-control rounded-pill"  placeholder="City" ></asp:TextBox>
       </div>
                      <div class="form-group pt-3">
       <asp:TextBox ID="country" runat="server" class="form-control rounded-pill"  placeholder="Country" ></asp:TextBox>
       </div>
                      <div class="form-group pt-3">
       <asp:TextBox ID="postal" runat="server" class="form-control rounded-pill"  placeholder="Postal code" ></asp:TextBox>
       </div>
                     <br /> <br /> <br /> <br />
                     <div class="text-center ">
        <asp:Button ID="shipbtn" runat="server" Text="Send" type="submit" class="btn btn-primary rounded-pill " style="width:100px; height:50px;" OnClick="shipbtn_Click"  />
  </div>
                </div>
             </div>
         </div>



      
  

  <div class="text-center ">
       </div>
           
       
   </section>
</asp:Content>
