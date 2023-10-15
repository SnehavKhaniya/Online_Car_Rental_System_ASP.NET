<%@ Page Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="Online_Car_Rental.View.Admin.Customers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server" >
    <div class="container-fluid">
    <div class="row">
        <div class="col-md-4">
            <div class="row">
                <div class="col"></div>
                <div class="col">
                    <h3 class="text-info">Manage Customers</h3>
                    <img style="border-radius:8px;width: 300px;" src="../../Assets/img/Customer.png"/>

                </div>
                <div class="col"></div>
            </div>
        
        <div class="row">
            <div class="col">

                <form id="form1" >
                    <div class="form-group">
                      <label for="exampleInputEmail1" class="form-label">Customer Name</label>
                      <input type="text" class="form-control" id="CustNameTb" placeholder="Enter Customer's Name" runat="server">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1" class="form-label">Customer Address</label>
                        <input type="text" class="form-control" id="AddTb" placeholder="Enter Customer's Address" runat="server">
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1" class="form-label">Customer Password</label>
                        <input type="text" class="form-control" id="PasswordTb" placeholder="Enter Customer's Password" runat="server">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1" class="form-label">Customer Phone</label>
                        <input type="text" class="form-control" id="PhoneTb" placeholder="Enter Customer's PhoneNumber" runat="server">
                    </div>
                  
                      
                        <br />

                      <label id="ErrorMsg" runat="server" class="text-danger"></label><br />
                     <asp:Button type="submit" id="EditBtn" Class="btn btn-danger" Text="Edit" runat="server" OnClick="EditBtn_Click"/>
                     <asp:Button type="submit" id="SaveBtn" Class="btn btn-danger" Text="Add" runat="server" OnClick="SaveBtn_Click"/>
                     <asp:Button type="submit" id="DeleteBtn" Class="btn btn-danger" Text="Delete" runat="server" OnClick="DeleteBtn_Click"/>
                   
                  </form>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <h1>Customers List</h1>
             <asp:GridView runat="server" ID="CustomerList" Class="table table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CustomerList_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" >
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
</div>
</asp:Content>