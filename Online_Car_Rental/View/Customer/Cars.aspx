<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="Online_Car_Rental.View.Customer.Cars" %>

<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">


        <div class="row">
            <div class="col-md-10"></div>


            <div class="col-md-2">
                <h5>Hello <label id="CustName" runat="server">xxxxx</label>...</h5>
            </div>

        </div>

        <div class="row">
            <div class="col-md-4"></div>

            <div class="col-md-4 ml-5">
                <img src="../../Assets/img/new_car.jpg" height="200px" /></div>
            <div class="col-md-4">
            </div>

        </div>

        <div class="row">
            <div class="col-md-3"></div>
            <div class="col">
                <br />

                <div class="row">
                    <div class="col-4"></div>
                    <div class="auto-style1">
                    </div>
                        <h3 class="auto-style2" align="center">Available Cars</h3>
                </div>
                <div class="col-md-8">
                    <asp:GridView runat="server" ID="CarList" Class="table table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CarList_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>
                <div class="row">
                    <div class="col-4">
                        <div class="form-group">

                            <input id="ReturnDate" runat="server" type="date" />

                        </div>
                    </div>
                    <div class="col-4">
                        <div class="form-group d-grid">
                            <label id="InfoMsg" runat="server" class="text-info">
                            </label>
                            <asp:Button type="submit" ID="BookBtn" class="btn btn-info btn-block" Text="Book" runat="server" OnClick="BookBtn_Click" />
                        </div>
                    </div>
                </div>
            </div>

        </div>


    </div>


</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 64%;
            min-height: 1px;
            -webkit-box-flex: 0;
            -ms-flex: 0 0 41.666667%;
            flex: 0 0 41.666667%;
            max-width: 41.666667%;
            left: 191px;
            top: -7px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style2 {
            color: #17a2b8;
            width: 822px;
        }
    </style>
</asp:Content>

