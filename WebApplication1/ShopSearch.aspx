<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShopSearch.aspx.cs" Inherits="WebApplication1.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         
   <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300" type="text/css" />




    <table class="w-100" style="margin-bottom:25%;">
        <tr>
            <td  class="text-center" colspan="3" ><strong><h1>Search For Your Labours</h1></strong></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="188px" CssClass="da" Height="40px" >
                    <asp:ListItem Text="Category" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Cables" Value="1"></asp:ListItem>
                     <asp:ListItem Text="Batteries" Value="2"></asp:ListItem>
                     <asp:ListItem Text="BathShower" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Cuttingtools" Value="2"></asp:ListItem>

                </asp:DropDownList>
            </td>
            <td >
              <div class="active-pink-3 active-pink-4 mb-4">
                  <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Search" ></asp:TextBox>
  
</div>
            </td>
            <td class="auto-style4">
                <strong>
                    <asp:Button ID="Button2" runat="server" Text="Go!" CssClass="hss" Width="178px" BackColor="#FF6600" ForeColor="White" style="font-weight: bold;border-radius:10px;height:45px" OnClick="Button2_Click"  />
               
                </strong>
            </td>
        </tr>
        <tr>
            <td class="text-right" colspan="3">
                              <div class="container mt-5">
  <div class="row">
   
      
   
      <asp:Repeater ID="Repeater1" runat="server" >
        <ItemTemplate>
    <div class="col-lg-4" style="margin-top:20px;">
      <div class="card h-100">
       
        <img src="<%#Eval("image") %>" style="height:170px">
        <div class="card-body position-relative d-flex flex-column">
         
            <i class="fa fa-opencart" aria-hidden="true"></i>
          </p>
          <h3 class="text-success"><%#Eval("Price") %>.00$</h3>
          <div class="rating text-warning">
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star-half-o" aria-hidden="true"></i>
          </div>
          <h4><%#Eval("ProductName") %></h4>
          <p><%#Eval("Description") %></p>
          <asp:Button ID="Button1" runat="server"  CssClass="btn btn-success btn-block mt-auto" Text=" ADD TO CART!!" PostBackUrl='<%#"ShopGrid.aspx?ProductId="+Eval("ProductId")+"&ProducType="+Eval("ProducType")+"&ProductName="+Eval("ProductName")+"&Description="+Eval("Description")+"&image="+Eval("image")+"&Price="+Eval("Price") %>' />
      
       
            
        </div>
      </div>
    </div>
        </ItemTemplate>
    </asp:Repeater>
  </div>
</div>
            </td>
        </tr>
    </table>
                   
    <style>
        .da{
            background-color:red;
            color:white;
            border-radius:20px;
            box-sizing:20px;
            margin-right:20px;
        }
        .das{
            background-color:red;
            color:white;
            border-radius:20px;
        }
        .auto-style2 {
            text-align: right;
            width: 480px;
            height: 50px;
        }
        .auto-style4 {
            text-align: left;
            height: 50px;
        }
        body {
	width: 100wh;
	height: 90vh;
	color: #fff;
	background: linear-gradient(-45deg, #EE7752, #E73C7E, #23A6D5, #23D5AB);
	background-size: 400% 400%;
	-webkit-animation: Gradient 15s ease infinite;
	-moz-animation: Gradient 15s ease infinite;
	animation: Gradient 15s ease infinite;
}

@-webkit-keyframes Gradient {
	0% {
		background-position: 0% 50%
	}
	50% {
		background-position: 100% 50%
	}
	100% {
		background-position: 0% 50%
	}
}

@-moz-keyframes Gradient {
	0% {
		background-position: 0% 50%
	}
	50% {
		background-position: 100% 50%
	}
	100% {
		background-position: 0% 50%
	}
}

@keyframes Gradient {
	0% {
		background-position: 0% 50%
	}
	50% {
		background-position: 100% 50%
	}
	100% {
		background-position: 0% 50%
	}
}

h1,
h6 {
	font-family: 'Open Sans';
	font-weight: 300;
	text-align: center;
	position: absolute;
	top: 10%;
	right: 0;
	left: 0;
}
.active-pink-3 input[type=text] {
    border: 1px solid #f48fb1;
    box-shadow: 0 0 0 1px #f48fb1;
    margin-top:20px;
}
.hss{
    margin-left:20px;
}
    </style>
    </asp:Content>
