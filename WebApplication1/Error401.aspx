<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Error401.aspx.cs" Inherits="WebApplication1.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <h3 class="title">
        <asp:image id="Image1" runat="server" imageurl="~/Images/error401.jpg" width="100%" /> &nbsp
        401 Error Has Occurred!</h3>
    <div class="tab-content thumb p-30">
        <div role="tabpanel" class="tab-pane active" id="tab-description">
            An unexpected error occurred on our website. 
        </div>
        <br/>
        No Authorization!
        <br/>
        <br/>
        <a href="Home.aspx" class="ui-state-focus">Return to the homepage</a>
    </div>


</asp:Content>
