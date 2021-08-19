<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td colspan="3" style="height: 38px"></td>
        </tr>
        <tr>
            <td style="width: 370px">LabourID</td>
            <td style="width: 421px">
                <asp:TextBox ID="TextBox1" runat="server" Width="409px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="TextBox1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter LabourID"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 370px">Name</td>
            <td style="width: 421px">
                <asp:TextBox ID="TextBox2" runat="server" Width="414px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="TextBox2" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Your Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 370px">LabourType</td>
            <td style="width: 421px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Text="Select LabourType" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Electrician" Value="-1"></asp:ListItem>
                     <asp:ListItem Text="Plumber" Value="2"></asp:ListItem>
                     <asp:ListItem Text="Carpenter" Value="3"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="DropDownList1" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Choose Any one option"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 370px">Description</td>
            <td style="width: 421px">
                <asp:TextBox ID="TextBox3" runat="server" Height="126px" Width="414px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="TextBox3" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please give a Description"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 370px">HourlyRate</td>
            <td style="width: 421px">
                <asp:DropDownList ID="DropDownList2" runat="server">
                     <asp:ListItem Text="HourlyRate" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="10" Value="1"></asp:ListItem>
                     <asp:ListItem Text="20" Value="2"></asp:ListItem>
                     <asp:ListItem Text="30" Value="3"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="DropDownList2" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Choose Any one option"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
</asp:Content>
