<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShopGrid.aspx.cs" Inherits="WebApplication1.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <h1>My Wish List</h1>

   <asp:Button ID="Button1" runat="server" Text="Clear" OnClick="Button1_Click" Width="85px" CssClass="ASP"  />
    <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />

    <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            
                <ItemTemplate>
            


            <div class="wrapper" >

 

  <div class="auto-style2">

    <div class="product-wrap">

      <div class="auto-style3">

         <img src=<%#Eval("image") %> alt="" >

          </div>

    </div>

  </div>

   

  <div class="col-1-2">

    <div class="product-info">

      <h2><%#Eval("ProductName")%></h2>

      <div class="desc"><%#Eval("Description")%></div>

      <div>SKU number:<%#Eval("ProductId") %></div>

       <div>Quantity<asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></div>

      <h3 class="price">Price: $<%#Eval("Price") %></h3>

        <asp:Button ID="btnAddcart" runat="server" Text="Buy Now!!!" class="button" />

   

    </div>

   

  </div>

  
            
           </ItemTemplate>
           <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
           </asp:DataList>       
    <style>
        .ASP{
            margin-top:2%;
            margin-bottom:450px;
        }
        
    
img{ max-width: 100%; }

 

.wrapper{

  width: 960px;

  margin: 100px auto;

}

 

.col-1-2{

  float: left;

  width: 50%;

}

 

.product-wrap {

          margin-top:-500px;

          width: 350px;

      }

.product-shot{

    padding-top: 30px;

    transition: all 0.5s ease;

   

}

.product-shot:hover{ transform: scale(1.1);

 }

 

 

 

.product-info h2{

    padding-bottom: 15px;
margin-top:-450px;
    font-size: 32px;

    border-bottom: 1px solid #d9d9d9;

}

 

.product-info desc{

    margin-top: 25px;

    font-size: 16px;

    line-height: 1.6;

}

 

.product-info sizing-list{

    margin-top: 25px;

    padding: 0px;

    list-style-type: none;

}

 

.product-info size {

          display: inline;

          margin-right: 10px;

          padding: 10px 15px;

          color: rgb(194, 194, 194);

          border: 1px solid rgb(194, 194, 194);

          cursor: pointer;

}

   

.product-info size.active{

      color: white;

      background-color: rgb(194, 194, 194);

}

 

   

 

 

.button{

  display: inline-block;

  margin-top: 35px;

  padding: 12px 25px;

  font-size: 16px;

  text-decoration: none;

  background-color: #505050;

  color: white;

  transition: 0.25s ease;

}

 

.button:hover{

  background-color: #323232;

}

      .auto-style2 {

          float: left;

          width: 50%;

          height: 339px;

      }

      .auto-style3 {

          padding-top: 30px;

          transition: all 0.5s ease;

          height: 311px;

      }

.productsku {

    font-size: 85%;

    font-weight: 400;

    text-transform: uppercase;

    letter-spacing: 1px;

    margin-right: 10px;

    margin-bottom: 0;

    display: inline-block;

    color: #666;

}
    </style>
        
    <script type="text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>
</asp:Content>
