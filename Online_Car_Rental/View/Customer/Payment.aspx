<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Online_Car_Rental.View.Customer.Payment" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .auto-style1 
        {
            width: 100%;
            margin-right: 64px;
        }

        .auto-style2 
        {
            height: 78px;
        }

        .form-horizontal
        {
            display:block;
            width:50%;
            margin:70px auto;
            padding: 20px 10px;
            background-color: #54B4D3;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            text-align: center;
        }

        .auto-style3 
        {
            height: 41px;
        }

        .auto-style4 
        {
            height: 41px;
            width: 44px;
        }

        .auto-style5 
        {
            height: 78px;
            width: 44px;
        }

        .auto-style6 
        {
            width: 44px;
        }

        .auto-style10 {
            height: 41px;
            width: 340px;
        }
        .auto-style11 {
            height: 78px;
            width: 340px;
        }
        .auto-style12 {
            width: 340px;
        }
        .auto-style13 {
            height: 41px;
            width: 34px;
        }
        .auto-style14 {
            height: 78px;
            width: 34px;
        }
        .auto-style15 {
            width: 34px;
        }
    </style>
</head>

<body>
    <h2 align="center">Payment Details</h2>

    <form id="paymentForm" runat="server" class="form-horizontal" align="center">
        <div class="p3">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="cardNo" runat="server" Text="Card Number"></asp:Label>
                    </td>
                    <td id="lblCardNo" class="auto-style13">
                        :</td>

                    <td class="auto-style4">
                        <asp:TextBox ID="tbCardNo" runat="server" Required="true" Height="25px"></asp:TextBox>
                        </td>
                    <td class="auto-style3">
                        <asp:RegularExpressionValidator ForeColor="Red" ID="reCardNo" ControlToValidate="tbCardNo" ValidationExpression="[0-9]{16}"
                            runat="server" ErrorMessage="should be of 16 digits."></asp:RegularExpressionValidator>
                        &nbsp;
                        </td>
                </tr>

                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="exDate" runat="server" Text="Expiration Date (MM/YYYY)"></asp:Label>
                    </td>
                    <td id="lblExDate" class="auto-style13">
                        :</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlExMonth" runat="server" OnSelectedIndexChanged="ddlExMonth_SelectedIndexChanged">
                            <asp:ListItem Text="01 - January"    Value="01" />
                            <asp:ListItem Text="02 - February"   Value="02" />
                            <asp:ListItem Text="03 - March"      Value="03" />
                            <asp:ListItem Text="04 - April"      Value="04" />
                            <asp:ListItem Text="05 - May"        Value="05" />
                            <asp:ListItem Text="06 - June"       Value="06" />
                            <asp:ListItem Text="07 - July"       Value="07" />
                            <asp:ListItem Text="08 - August"     Value="08" />
                            <asp:ListItem Text="09 - September"  Value="09" />
                            <asp:ListItem Text="10 - October"    Value="10" />
                            <asp:ListItem Text="11 - November"   Value="11" />
                            <asp:ListItem Text="12 - December"   Value="12" />
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlExYear" runat="server">
                            <asp:ListItem Text="2023" Value="2023" />
                            <asp:ListItem Text="2024" Value="2024" />
                            <asp:ListItem Text="2025" Value="2025" />
                            <asp:ListItem Text="2026" Value="2026" />
                            <asp:ListItem Text="2027" Value="2027" />
                            <asp:ListItem Text="2028" Value="2028" />
                            <asp:ListItem Text="2029" Value="2029" />
                            <asp:ListItem Text="2030" Value="2030" />
                            <asp:ListItem Text="2031" Value="2031" />
                            <asp:ListItem Text="2032" Value="2032" />
                        </asp:DropDownList></td>
                    <td class="auto-style3">
                        &nbsp;
                        <br />
                    </td>
                </tr>

                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="cvv" runat="server" Text="CVV" ></asp:Label>
                    </td>
                    <td id="lblCVV" class="auto-style13">
                        :</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbCVV" runat="server" Height="25px"></asp:TextBox>
                        </td>
                    <td class="auto-style3">
                        <asp:RegularExpressionValidator ForeColor="Red" ID="reCVV" ControlToValidate="tbCVV" ValidationExpression="[0-9]{3}"
                            runat="server" ErrorMessage="should be of 3 digits."></asp:RegularExpressionValidator>

                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="amount" runat="server" Text="Amount"></asp:Label>
                    </td>
                    <td id="lblAmount" class="auto-style13">
                        :</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbAmount" type="number"  runat="server" MaxLength="10" Height="25px" Enabled="False" OnTextChanged="tbAmount_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style5">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnPay" runat="server" OnClick="BtnPay_Click" Text="Pay" BackColor="#0066FF" BorderStyle="Solid" Font-Bold="True" ForeColor="White" Height="33px" Width="126px" />
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
        
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    </form>
    

</body>
</html>