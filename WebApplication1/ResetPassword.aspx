<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="WebApplication1.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table class="w-100">
        <tr>
            <td class="text-center" colspan="2"><strong>RESET NEW PASSWORD</strong></td>
        </tr>
        <tr>
            <td style="width: 415px; height: 109px">NewPassword</td>
            <td style="height: 109px">
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 146"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 415px; height: 113px">Confirm Password</td>
            <td style="height: 113px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 415px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Reset" Width="120px" />
                <asp:Label ID="Label1" runat="server" CssClass="label" ForeColor="#33CC33" Text="Label" Width="190px"></asp:Label>
            </td>
        </tr>
    </table>
    <style>
        .label{
            margin-left:10px
        }
    </style>
   
</asp:Content>
