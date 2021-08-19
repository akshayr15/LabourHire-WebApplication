<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="WebApplication1.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <div class="container">
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Please Register</h3>
			 			</div>
			 			<div class="panel-body">
			    		
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
       
			                <asp:TextBox ID="TextBox1" runat="server" class="form-control input-sm" placeholder=" Name"> </asp:TextBox>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                               
			    						<asp:TextBox ID="TextBox2" runat="server" class="form-control input-sm" placeholder="Contact Number"> </asp:TextBox>
			    					</div>
			    				</div>
			    			</div>

			    			<div class="form-group">
                                           
			    				<asp:TextBox ID="TextBox3" runat="server" class="form-control input-sm" placeholder="Email Address"> </asp:TextBox>
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                    
			    						<asp:TextBox ID="TextBox4" runat="server" class="form-control input-sm" TextMode="Password" placeholder="Password"></asp:TextBox>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                            
			    						<asp:TextBox ID="TextBox5" runat="server" TextMode="Password" class="form-control input-sm" placeholder="Confirm Password"></asp:TextBox>
			    					</div>
			    				</div>
			    			</div>
			    			
			    			<asp:Button ID="Button1" runat="server" Text="Submit"  class="btn btn-info btn-block" OnClick="Button1_Click"/>

                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="* Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator><br />
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox3" runat="server" ErrorMessage="* Please Enter Email" ForeColor="Red"></asp:RequiredFieldValidator><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3"  ControlToValidate="TextBox4" runat="server" ErrorMessage="* Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator><br />
                       
                        <asp:CompareValidator ID="CompareValidator1" ControlToCompare="TextBox4" ControlToValidate="TextBox5" runat="server" ErrorMessage="Password Mismatch" ForeColor="Red"></asp:CompareValidator>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
    <style>
        body{
    background-color: #525252;
}
.centered-form{
	margin-top: 60px;
    margin-bottom:200px;
}

.centered-form .panel{
	background: rgba(255, 255, 255, 0.8);
	box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}
    </style>
</asp:Content>
