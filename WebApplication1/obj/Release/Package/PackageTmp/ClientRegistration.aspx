<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientRegistration.aspx.cs" Inherits="WebApplication1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100" style="color:red; margin-bottom:10%">
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 325px">LabourID</td>
            <td style="width: 624px">
                <asp:TextBox ID="TextBox1" runat="server" Width="390px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="TextBox1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter Your ID"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 325px">Name</td>
            <td style="width: 624px">
                <asp:TextBox ID="TextBox2" runat="server" Width="389px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="TextBox2" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Your Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 325px">LabourType</td>
            <td style="width: 624px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                     <asp:ListItem Text="Select Any one" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Electrician" Value="1"></asp:ListItem>
                     <asp:ListItem Text="Carpenter" Value="2"></asp:ListItem>
                     <asp:ListItem Text="Plumber" Value="3"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="DropDownList1" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Choose any one"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 325px">Description</td>
            <td style="width: 624px">
                <asp:TextBox ID="TextBox3" runat="server" Width="383px" Height="81px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="TextBox3" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Give a Description"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 325px">Price</td>
            <td style="width: 624px">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="238px">
                    <asp:ListItem Text="Select Any one" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="10" Value="1"></asp:ListItem>
                     <asp:ListItem Text="20" Value="2"></asp:ListItem>
                     <asp:ListItem Text="30" Value="3"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="DropDownList2"  ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Price"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 325px">Image</td>
            <td style="width: 624px">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="267px" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 325px">Location</td>
            <td style="width: 624px">
                <asp:DropDownList ID="DropDownList3" runat="server" Width="237px">
                    <asp:ListItem Text="Select Any one" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Britomart" Value="1"></asp:ListItem>
                     <asp:ListItem Text="Kingsland" Value="2"></asp:ListItem>
                     
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="DropDownList3" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Location"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 325px">&nbsp;</td>
            <td style="width: 624px" class="text-center">
                <asp:Button ID="Button1" runat="server" Text="Save!" BackColor="Orange"  OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" BackColor="#FF9933" OnClick="Button2_Click" Text="UPDATE" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 325px">&nbsp;</td>
            <td style="width: 624px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
