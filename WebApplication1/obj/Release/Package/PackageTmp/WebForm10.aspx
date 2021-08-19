<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="WebApplication1.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .out{
                padding-bottom: 200px;
                 padding-top: 100px;
                 text-align: -webkit-center;
        }
        .abc{
            border-style:solid;
            border-width:thick;
        }
        td{
            color:rgb(247, 137, 0);
            font-weight:700;
        }
    </style>
     <div class="out">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
           <div class="abc">
          <table style="text-align:center">
              <tr><td>LabourId      :&nbsp<td><%#Eval("LabourId") %></td></td></tr>
              <tr><td>Name          :         <td><%#Eval("Name") %></td></td></tr>
              <tr><td>Email Address :         <td><%#Eval("Email") %></td></td></tr>
              <tr><td>Phone Number  :          <td><%#Eval("ContactNumber") %></td></td></tr>
          </table>
           </div>
        </ItemTemplate>
    </asp:Repeater>
         </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AssignementASPConnectionString %>" SelectCommand="SELECT [LabourId], [Name], [Email], [ContactNumber] FROM [Register] WHERE ([LabourId] = @LabourId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="LabourId" QueryStringField="LabourId" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
