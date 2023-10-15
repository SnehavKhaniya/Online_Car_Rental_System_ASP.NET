<%@ Page Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Rents.aspx.cs" Inherits="Online_Car_Rental.View.Admin.Rents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="text-info">Manage Rented Cars</h3>
                        <img style="border-radius: 8px; width: 300px;" src="../../Assets/img/Cars.png" />

                    </div>
                    <div class="col"></div>
                </div>

                <div class="row">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-9">

                        <form id="form1">
                            <div class="form-group">
                                <asp:GridView runat="server" ID="RentList" Class="table table-hover" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                                <div class="form-group">
                                    <br />
                                    <label class="form-check-label" for="DelayTb">Delay</label>
                                    <input type="text" class="auto-style1" id="DelayTb" runat="server" />

                                    <label class="form-check-label" for="FineTb">Fine</label>
                                    <input type="text" class="auto-style2" id="FineTb" runat="server" />


                                </div>

                            </div>



                            <div class="form-group d-grid">
                                <label id="InfoMsg" runat="server" class="text-info"></label>
                                <asp:Button type="submit" ID="ReturnBtn" class="btn btn-info btn-block" Text="Return Back" runat="server" OnClick="ReturnBtn_Click" />
                            </div>


                            <br />
                            <br />
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style1 {
            display: block;
            width: 10%;
            font-size: 1rem;
            line-height: 1.5;
            color: #495057;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            border-radius: .25rem;
            transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
            margin-left: 0px;
        }

        .auto-style2 {
            display: block;
            width: 10%;
            font-size: 1rem;
            line-height: 1.5;
            color: #495057;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            border-radius: .25rem;
            transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        }
    </style>
</asp:Content>

