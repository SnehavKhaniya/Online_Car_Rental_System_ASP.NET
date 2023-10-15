<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Online_Car_Rental.View.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 78px;
        }

        .form-horizontal {
            display: block;
            width: 30%;
            margin: 70px auto;
            padding: 20px 10px;
            background-color: #54B4D3;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            text-align: center;
        }

        .auto-style3 {
            height: 41px;
        }

        .auto-style4 {
            height: 41px;
            width: 33px;
        }

        .auto-style5 {
            height: 78px;
            width: 33px;
        }

        .auto-style6 {
            width: 33px;
        }

        .auto-style7 {
            height: 41px;
            width: 166px;
        }

        .auto-style8 {
            height: 78px;
            width: 166px;
        }

        .auto-style9 {
            width: 166px;
        }
        .auto-style10 {
            display: block;
            width: 33%;
            margin: 70px auto;
            padding: 20px 10px;
            background-color: #54B4D3;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            text-align: center;
        }
        .auto-style11 {
            height: 41px;
            width: 249px;
        }
        .auto-style12 {
            height: 78px;
            width: 249px;
        }
        .auto-style13 {
            width: 249px;
        }
    </style>
</head>
<body>
    <h2 align="center">Welcome to Online Car Rental</h2>
    <form id="form1" runat="server" class="auto-style10" align="center">
        <h2>Sign Up</h2>
        <div class="p3">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"></td>
                    <td id="lblCName" class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style4">:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="tbCName" runat="server" MaxLength="15" Height="25px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td id="lblCAddress" class="auto-style7">
                        <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style4">:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="tbCAddress" type="text" runat="server" MaxLength="30" Height="25px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td id="lblCPassword" class="auto-style7">
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style4">:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="tbCPassword" type="password" runat="server" MaxLength="10" Height="25px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td id="lblCPhone" class="auto-style7">
                        <asp:Label ID="Label4" runat="server" Text="Phone no."></asp:Label>
                    </td>
                    <td class="auto-style4">:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="tbCPhone" type="tel" runat="server" MaxLength="10" Height="25px"></asp:TextBox>

                    </td>
                    <td>
                        <asp:RegularExpressionValidator ForeColor="Red" ID="reCPhone" ControlToValidate="tbCPhone" ValidationExpression="(0|91)?[6-9][0-9]{9}"
                            runat="server" ErrorMessage="Invalid Mobile Number"></asp:RegularExpressionValidator>
                    </td>


                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="btSignUp" runat="server" OnClick="btSignUp_Click" Text="Sign Up" BackColor="#0066FF" BorderStyle="Solid" Font-Bold="True" ForeColor="White" Height="33px" Width="126px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style13">Already have an Account?
                        <asp:HyperLink ID="hlLogIn" runat="server" BorderStyle="None" ForeColor="#0066FF" NavigateUrl="~/View/Login.aspx">LogIn</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style13">

                        <asp:Label ID="tbErrMsg" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    </form>
</body>
</html>
