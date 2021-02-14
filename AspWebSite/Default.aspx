<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AspWebSite._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <div class=" w-100 pt-5" style="background-color:aquamarine; background-color:; opacity:1; background-image:url(image/paul-green-5lRxNLHfZOY-unsplash.jpg);background-size: cover;background-position: center; background-repeat: no-repeat;"">
       <div >
           <ul class=" d-inline-flex ">
               
                <li class="" style="padding-left:5%;"> 
                    <asp:TextBox ID="flowerOrderTxt" class="form-control" runat="server" type="text" placeholder="Enter Flower code"></asp:TextBox>
		        </li>
               
               <li class="" style="padding-left:5%;"> 
                   <h4><i class="fa fa-arrow-circle-right fa-2x text-dark"> </i></h4>  
               </li>
                <li style="padding-left:5%;"> 
                    <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-primary rounded-pill "   style="width:100px; height:35px;" OnClick="LinkButton1_Click">
                        <i class="fa  fa-shopping-cart fa-3x text-danger"></i>
                   </asp:LinkButton>
                    
                </li>
           </ul>
       </div>
   </div>
    
<div class="">
<table class="table" >
  <thead class="thead-light thead-dark" style="font-size:20px;">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Flower Name</th>
      <th scope="col">Code</th>
      <th scope="col">Category</th>
      <th scope="col">One Price</th>
      <th scope="col">Quentity</th>
    </tr>  
  </thead>
   <tbody style="font-size:15px;"  >
      
          <%=getStudentData()%>  
     
  </tbody>
</table>  
</div>



</asp:Content>
