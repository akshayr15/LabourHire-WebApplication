<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebApplication1.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
            </td>
            <td class="auto-style6">
            </td>
            <td class="auto-style7">
            </td>
            <td class="auto-style8">
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="LabourId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                    <AlternatingItemTemplate>
                        <tr style="background-color: #FFFFFF;color: #284775;">
                            <td>
                                <asp:Label ID="LabourIdLabel" runat="server" Text='<%# Eval("LabourId") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ContactNumberLabel" runat="server" Text='<%# Eval("ContactNumber") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="background-color: #999999;">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:Label ID="LabourIdLabel1" runat="server" Text='<%# Eval("LabourId") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="ContactNumberTextBox" runat="server" Text='<%# Bind("ContactNumber") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </td>
                            <td>
                                <asp:TextBox ID="LabourIdTextBox" runat="server" Text='<%# Bind("LabourId") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="ContactNumberTextBox" runat="server" Text='<%# Bind("ContactNumber") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color: #E0FFFF;color: #333333;">
                            <td>
                                <asp:Label ID="LabourIdLabel" runat="server" Text='<%# Eval("LabourId") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ContactNumberLabel" runat="server" Text='<%# Eval("ContactNumber") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                            <th runat="server">LabourId</th>
                                            <th runat="server">Name</th>
                                            <th runat="server">Email</th>
                                            <th runat="server">ContactNumber</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                            <td>
                                <asp:Label ID="LabourIdLabel" runat="server" Text='<%# Eval("LabourId") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ContactNumberLabel" runat="server" Text='<%# Eval("ContactNumber") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AssignementASPConnectionString %>" SelectCommand="SELECT [LabourId], [Name], [Email], [ContactNumber] FROM [Register]"></asp:SqlDataSource>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="LabourId" DataValueField="LabourId" Width="210px">
                    <asp:ListItem>Choose LabourId</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style4">
                <strong>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="DELETE" Width="116px" BackColor="#FF9900" CssClass="text-white" Font-Bold="True" />
                <asp:Button ID="Button2" runat="server" CssClass="move" Text="ADD" OnClick="Button2_Click" Width="112px" BackColor="#FF9900" Font-Bold="True" ForeColor="White" />
                </strong>
                <asp:Button ID="Button5" runat="server" CssClass="move" Text="UPDATE" OnClick="Button2_Click" Width="112px" BackColor="#FF9900" Font-Bold="True" ForeColor="White" PostBackUrl="~/ClientRegistration.aspx" />
            </td>
            <td class="text-left">
                <asp:Label ID="Label1" runat="server" CssClass="lab"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="text-left">&nbsp;</td>
        </tr>
    </table>
    <style>
        .lab{
            margin-top:20px;
        }
        .move{
            margin-top:20px;
            
        }
        .auto-style1 {
            width: 502px;
        }
        .auto-style2 {
            width: 330px;
        }
        .auto-style3 {
            width: 201px;
        }
        .auto-style4 {
            text-align: left;
            width: 201px;
        }
        .auto-style5 {
            width: 502px;
            height: 26px;
        }
        .auto-style6 {
            width: 330px;
            height: 26px;
        }
        .auto-style7 {
            text-align: left;
            width: 201px;
            height: 26px;
        }
        .auto-style8 {
            text-align: left;
            height: 26px;
        }
    </style>

    </asp:Content>
