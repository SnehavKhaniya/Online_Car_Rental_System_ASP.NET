<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Car_Rental.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 61px;
        }
        .form-horizontal{
            display:block;
            width:50%;
            margin:70px auto;
            padding: 20px 10px;
            background-color: #54B4D3;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            text-align: center;
        }
        .auto-style3 {
            height: 41px;
        }
        .auto-style4 {
            display: block;
            width: 30%;
            margin: 70px auto;
            padding: 20px 10px;
            background-color: #54B4D3;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            text-align: center;
        }
        .auto-style5 {
            height: 41px;
            width: 17px;
        }
        .auto-style6 {
            height: 61px;
            width: 17px;
        }
        .auto-style7 {
            width: 17px;
        }
        .auto-style8 {
            height: 41px;
            width: 124px;
        }
        .auto-style9 {
            height: 61px;
            width: 124px;
        }
        .auto-style10 {
            width: 124px;
        }
    </style>
</head>
<body>
    <h2 align="center">WelCome To Online Car Rental System</h2>
    <form id="form1" runat="server" class="auto-style4" align="center">
        <h2>Login</h2>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style5">
                    :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="tbName" runat="server" Height="25px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style8">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style5">
                    :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="tbPassword" type="password" runat="server" Height="26px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style9"></td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;
                    <asp:Button ID="btLogIn" runat="server" OnClick="btLogIn_Click" Text="login" BackColor="#0066FF" BorderStyle="Solid" Font-Bold="True" ForeColor="White" Height="33px" Width="118px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style10">&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    not have Account?<asp:HyperLink ID="hlSignUp" runat="server" BorderStyle="None" ForeColor="#0066FF" NavigateUrl="~/View/SignUp.aspx" Target="_blank">SignUp</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>
            <asp:Label ID="tbErrMsg" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
    </form>
</body>
</html>