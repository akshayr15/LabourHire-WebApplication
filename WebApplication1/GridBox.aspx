<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="GridBox.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row" style="margin-top:5%;margin-bottom:10%">
        
    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand1" >
        <ItemTemplate>
            <div class="col-lg-4">
            <div class="card" data-aos="fade-left" >
    <img src = "<%#Eval("Image") %>"" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title"><%#Eval("Name") %></h5>
		<h6><%#Eval("LabourType") %></h6>
      <p class="card-text"><%#Eval("Description") %></p><br />
        <p class="card-text"><%#Eval("Price") %>$/hour</p><br />
        <asp:Button ID="Button1" name="but"  runat="server" PostBackUrl='<%#"LandingPage.aspx?LabourId="+Eval("LabourId") %>' OnClick="Button1_Click" CssClass="butt" Text="BookNow!" />
    
    </div>
  </div>
           </div>

        </ItemTemplate>
    </asp:Repeater>
        </div>
         </div>
  <style>
            .card-img-top{
                
      
                    height:200px !important;

            }
            .card-body {
            height: 250px !important;
            }
            .btn {
            margin-top:-20px !important;
            }
            .col-lg-4 {
            margin-bottom:20px;
            }
.card-title {
    margin-bottom: 10px !important;
}
            p {
            margin-bottom: 0px !important;
            }
            .card-text {
            margin-top:-10px !important;
            }
            .butt{
                color:white;
                background-color:rgb(247, 137, 0);
                border-style:solid;
                
            }
        </style>
   
       

</asp:Content>
