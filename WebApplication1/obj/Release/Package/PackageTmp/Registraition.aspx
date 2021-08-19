<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registraition.aspx.cs" Inherits="WebApplication1.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100" style="margin-bottom:10%">
        <tr>
            <td class="text-center" colspan="3" style="color: #FF6600; text-align: center;"><strong>REGITRATION FORM</strong></td>
        </tr>
        <tr>
            <td style="width: 451px; color: #FF0000; text-align: right;">LabourId</td>
            <td style="width: 548px">
                <asp:TextBox ID="TextBox1" runat="server" Width="316px" style="margin-left: 1px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="TextBox1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 451px; color: #FF0000; text-align: right;">Name</td>
            <td style="width: 548px">
                <asp:TextBox ID="TextBox2" runat="server" Width="313px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="TextBox2" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 451px; color: #FF0000; text-align: right;">Email</td>
            <td style="width: 548px">
                <asp:TextBox ID="TextBox3" runat="server" Width="310px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="TextBox3" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 451px; color: #FF0000; text-align: right;">ContactNumber</td>
            <td style="width: 548px">
                <asp:TextBox ID="TextBox4" runat="server" Width="315px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="TextBox4" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 451px; color: #FF0000; text-align: right;">Password</td>
            <td style="width: 548px">
                <asp:TextBox ID="TextBox5" runat="server" Width="310px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="TextBox5" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 451px; height: 40px; color: #FF0000; text-align: right;">ConfirmPassword</td>
            <td style="width: 548px; height: 40px">
                <asp:TextBox ID="TextBox6" runat="server" Width="308px"></asp:TextBox>
            </td>
            <td style="height: 40px">
                <asp:RequiredFieldValidator ControlToValidate="TextBox6" ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 451px">&nbsp;</td>
            <td class="text-center" style="width: 548px"><strong>
                <asp:Button ID="Button1" runat="server" BackColor="#FF9933" ForeColor="White" OnClick="Button1_Click" style="font-weight: bold; margin-left: 67px;" Text="REGISTER" Width="197px" />
                </strong></td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
