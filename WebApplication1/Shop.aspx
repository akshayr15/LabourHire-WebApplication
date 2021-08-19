<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="WebApplication1.WebForm11"  EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


            <div class="container mt-5">
  <div class="row">
   
      
   
      <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
        <ItemTemplate>
    <div class="col-lg-4">
      <div class="card h-100">
       
        <img src="<%#Eval("image") %>" style="height:170px">
        <div class="card-body position-relative d-flex flex-column">
          <a href="#" class="add-to-cart bg-primary text-white" data-toggle="tooltip" data-placement="left" title="Add To Cart">
            <i class="fa fa-opencart" aria-hidden="true"></i>
          </a>
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
          <asp:Button ID="Button1" runat="server"  CssClass="btn btn-success btn-block mt-auto" Text=" ADD TO CART!!" PostBackUrl='<%#"WebForm14.aspx?ProductId="+Eval("ProductId")+"&ProducType="+Eval("ProducType")+"&ProductName="+Eval("ProductName")+"&Description="+Eval("Description")+"&image="+Eval("image")+"&Price="+Eval("Price") %>' />
      
       
            
        </div>
      </div>
    </div>
        </ItemTemplate>
    </asp:Repeater>
  </div>
</div>
     

    <style>
        body {
  background-color: #f5f5f5;
  font-family: sans-serif;
  font-size: 0.9rem;
  line-height: 1.5;
}
a {
  transition: 0.3s;
}
.card {
  overflow: hidden;
  box-shadow: 0 3px 17px rgba(0,0,0,0.15), 0 0 5px rgba(0,0,0,0.15);
  img {
    width: 100%;
    height: 100%!important;
  }
}
.add-to-cart {
  display: block;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  text-align: center;
  font-size: 1.3rem;
  line-height: 59px;
  position: absolute;
  right: 1.25rem;
  top: -30px;
  box-shadow: 0 2px 7px rgba(0,0,0,0.4);
  &:hover {
    box-shadow: 0 1px 2px rgba(0,0,0,0.4);
  }
}
.labels {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  opacity: 0.8;
  > div {
    width: 150px;
    position: absolute;
    &.label-new {
      left: -40px;
      top: 20px;
      transform: rotate(-45deg);
    }
    &.label-sale {
      right: -40px;
      top: 20px;
      transform: rotate(45deg);
    }
  }
}

</style>
  
</asp:Content>
