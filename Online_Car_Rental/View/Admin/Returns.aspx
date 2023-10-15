<%@ Page Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Returns.aspx.cs" Inherits="Online_Car_Rental.View.Admin.Returns" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server" >
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-3"><img src="../../Assets/img/return.jpg" height="150px"/>
                <h1 class="text-info">Car Returned</h1>
            </div>
            <div class="col-md-3"></div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                               
                
                <form id="form1" >
                    <div class="form-group">
                         <asp:GridView runat="server" ID="RentList" Class="table table-hover" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                    <br />
                    <br />
                  </form>
            </div>
        </div>
    </div>
</asp:Content>
