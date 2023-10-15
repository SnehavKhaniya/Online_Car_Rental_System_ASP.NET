<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="PendingRentals.aspx.cs" Inherits="Online_Car_Rental.View.Customer.PendingRentals" %>

<asp:Content ID="Content4" ContentPlaceHolderID="mybody" runat="server">

    <div class="container-fluid">
        <div class="row"></div>
            <div class="col"></div>
            <div class="col">
                <h2 align="center">Your Rentals</h2>

            </div>
            <div class="col"></div>
        <div class="row">
            <div class="col-lg-2"></div>
            <br />
            <div align="center" class="col-lg-8">
                        <br />    
                
                           <div class="col-md-8">
    <asp:GridView  runat="server" ID="CarList" Class="table table-hover" CellPadding="4" ForeColor="#333333" GridLines="None">
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

               
            </div>
            <div class="col-lg-2"></div>
           
        </div>
    </div>
</asp:Content>
