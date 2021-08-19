<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="WebApplication1.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100" style="margin-bottom:200px;margin-top:180px">
        <tr>
            <td style="color: #E63C3C;" class="text-center" colspan="3"><strong>Search For Your Labours</strong></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="188px" CssClass="da" Height="40px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Text="Select Labour Type" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Electrician" Value="1"></asp:ListItem>
                     <asp:ListItem Text="Carpenter" Value="2"></asp:ListItem>
                     <asp:ListItem Text="Plumber" Value="3"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="194px" CssClass="auto-style1">
                     <asp:ListItem Text="Select Location" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Britomart" Value="1"></asp:ListItem>
                     <asp:ListItem Text="Kingsland" Value="2"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style4">
                <strong>
                <asp:Button ID="Button1" runat="server" Text="Go!" Width="178px" BackColor="#FF6600" ForeColor="White" style="font-weight: bold;border-radius:10px;height:45px" OnClick="Button1_Click" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="text-center">
                &nbsp;</td>
        </tr>
    </table>
    <style>
        .da{
            background-color:red;
            color:white;
            border-radius:20px;
            box-sizing:20px;
        }
        .das{
            background-color:red;
            color:white;
            border-radius:20px;
        }
        .auto-style1 {
            background-color: red;
            color: white;
            border-radius: 20px;
            margin-left: 0;
            height:40px;
        }
        .auto-style2 {
            text-align: right;
            width: 480px;
            height: 50px;
        }
        .auto-style3 {
            text-align: center;
            width: 325px;
            height: 50px;
        }
        .auto-style4 {
            text-align: left;
            height: 50px;
        }
        .auto-style5 {
            text-align: right;
            width: 325px;
        }
        .auto-style6 {
            text-align: right;
            width: 480px;
        }
    </style>

</asp:Content>
