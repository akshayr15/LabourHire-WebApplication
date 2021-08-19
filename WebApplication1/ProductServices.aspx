<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductServices.aspx.cs" Inherits="WebApplication1.WebForm19" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Collapsible sidebar using Bootstrap 4</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="StyleSheet1.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

</head>

<body>

    <form id="form1" runat="server">

    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>Bootstrap Sidebar</h3>
                <strong>BS</strong>
            </div>

            <ul class="list-unstyled components">
                <li class="active">
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-home"></i>
                        AdminFunctionality
                    </a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <a href="ClientServices.aspx">ClientServices </a>
                        </li>
                        <li>
                            <a href="ProductInsertion.aspx">ProductServices </a>
                        </li>
                       
                    </ul>
                </li>
                <li>
                  
                   
                <li>
                    <a href="#">
                        <i class="fas fa-question"></i>
                        FAQ
                    </a>
                </li>
                    <li>
                        <a href="#">
                            <i class="fas fa-paper-plane"></i>
                            Contact
                        </a>
                    </li>
            </ul>

            
        </nav>

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        <span>Toggle Sidebar</span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="Home.aspx">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="ShopSearch.aspx">Shop</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Login.aspx">Login</a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </nav>

      

            <div class="line"></div>
            <table class="w-100" style="color:red; margin-bottom:10%">
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 325px">ProductID</td>
            <td style="width: 624px">
                <asp:TextBox ID="TextBox1" runat="server" Width="390px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="TextBox1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter ProductID"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 325px">ProductName</td>
            <td style="width: 624px">
                <asp:TextBox ID="TextBox2" runat="server" Width="389px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="TextBox2" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter ProductName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 325px">ProductType</td>
            <td style="width: 624px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Text="Select Any one" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Cables" Value="1"></asp:ListItem>
                    <asp:ListItem Text="BathShower" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Batteries" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Cuttingtools" Value="4"></asp:ListItem>
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
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="TextBox4"  ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Price"></asp:RequiredFieldValidator>
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
            <td style="width: 325px">&nbsp;</td>
            <td style="width: 624px" class="text-center">
                <asp:Button ID="Button1" runat="server" Text="Save!" BackColor="Orange" OnClick="Sve_btn"  CssClass="offset-sm-0" Width="102px" />
                <asp:Button ID="Button2" runat="server" BackColor="#FF9900" OnClick="Button2_Click" Text="update" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 325px">&nbsp;</td>
            <td style="width: 624px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
    </div>

    

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
    </form>
</body>
</html>
