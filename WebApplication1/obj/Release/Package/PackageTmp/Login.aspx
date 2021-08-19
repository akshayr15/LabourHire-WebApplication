<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:10%;margin-bottom:20%;margin-left:25%">
    <table class="w-100" style="align-content:center">
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 327px; height: 40px; color: #FF0000;">LabourID</td>
            <td style="width: 347px; height: 40px;">
                <asp:TextBox ID="TextBox1"  runat="server"></asp:TextBox>
            </td>
            <td style="height: 40px">
                <asp:RequiredFieldValidator ControlToValidate="TextBox1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 327px; color: #FF0000;">Password</td>
            <td style="width: 347px">
                <asp:TextBox ID="TextBox2"  runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="TextBox2" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 327px">&nbsp;</td>
            <td style="width: 347px">
                <strong>
                <asp:Button ID="Button1" runat="server" Text="LOGIN" Width="184px" BackColor="#FF6600" CssClass="text-white" OnClick="Button1_Click" style="font-weight: bold" />
                </strong>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
</asp:Content>
