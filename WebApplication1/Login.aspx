<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
  <div class="container-body" >
      <h3 style="color:white;text-align:center">
          If Labour Login Please Enter Your LabourId as UserName</h3><br />
     <h3 style="color:white;text-align:center" > If User Login Please Give Email as UserName</h3>
       <div class="d-flex justify-content-center h-100">

              <div class="card">

                      <div class="card-header">

                             <h3>Login</h3>

                            

                      </div>

                      <div class="card-body">

                             <form>

                                    <div class="input-group form-group">

                                           <div class="input-group-prepend">

                                                  <span class="input-group-text"><i class="fa fa-user"></i>
                                                 
                                                  </span>

                                           </div>

    

                                           <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="Username" TextMode="SingleLine" ></asp:TextBox>

                                          

                                    </div>

                                    <div class="input-group form-group">

                                           <div class="input-group-prepend">

                                                  <span class="input-group-text"><i class="fa fa-key"></i>
                                                  
                                                  </span>

                                           </div>

                                                  <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="password" TextMode="Password"></asp:TextBox>

                                    </div>

                                    <div class="row align-items-center remember">

                                           <input type="checkbox">Remember Me

                                    </div>

                                    <div class="auto-style1">

             <asp:Button ID="Button1" runat="server" Text="Login" class="btn float-right login_btn" OnClick="Button1_Click"/>

                       

                                 <asp:Button ID="Frgt_btn" runat="server" Text="Forgot password"  class="btn float-right login_btn" OnClick="Frgt_btn_Click"/> 

                       

                                    </div>

                             </form>

                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Please enter Username" ForeColor="Red"></asp:RequiredFieldValidator><br />
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                      </div>

                      <div class="card-footer">

                             <div class="d-flex justify-content-center links">

                                    Don't have an account?<a href="UserRegisteration.aspx">Register</a>

                             </div>

                             <div class="d-flex justify-content-center">

                             </div>

                      </div>

              </div>

       </div>

</div>

    
        <style >
          


        .container-body {
            background-image: url('http://ultraimg.com/images/Ho6hQWs.jpg');
            padding: 200px 100px 100px 100px;
            width: 100%;
            background-size: cover;
            background-repeat: no-repeat;
            margin-top:-40px;
        }

 

.card{

height: 370px;

margin-top: auto;

margin-bottom: auto;

width: 400px;

background-color: rgba(0,0,0,0.5) !important;

}

 

.social_icon span{

font-size: 60px;

margin-left: 10px;

color: #FFC312;

}

 

.social_icon span:hover{

color: white;

cursor: pointer;

}

 

.card-header h3{

color: white;

}

 

.social_icon{

position: absolute;

right: 20px;

top: -45px;

}

 

.input-group-prepend span{

width: 50px;

background-color:#0076a3;

color: black;

border:0 !important;

}

 

input:focus{

outline: 0 0 0 0  !important;

box-shadow: 0 0 0 0 !important;

 

}

 

.remember{

color: white;

}

 

.remember input

{

width: 20px;

height: 20px;

margin-left: 15px;

margin-right: 5px;

}

 

.login_btn{

color: White;

background-color: #0076a3;

width: 150px;
    margin-left: 20px;
}

 

.login_btn:hover{

color: black;

background-color: white;

}

 

.links{

color: white;

}

 

.links a{

margin-left: 4px;

}
            .auto-style1 {
                margin-bottom: 1rem;
                text-align: right;
            }
    </style>
</asp:Content>
