<%@ Page Title="" Language="C#" MasterPageFile="~/erto_empforms/Site3.Master" AutoEventWireup="true" CodeBehind="renew.aspx.cs" Inherits="ertosystem.erto_empforms.renew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        color: #000000;
    }
        .auto-style2 {
            margin-left: 131px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="center">
        &nbsp;</p>
    <p class="center">
&nbsp;&nbsp;<span class="auto-style1"><strong> Applications for Renewal of Driving License</strong></span></p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style2" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="970px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="User_id" HeaderText="User_id" SortExpression="User_id" />
            <asp:BoundField DataField="License_no" HeaderText="License_no" SortExpression="License_no" />
            <asp:BoundField DataField="Current_date" HeaderText="Current_date" SortExpression="Current_date" />
            <asp:BoundField DataField="Expire_date" HeaderText="Expire_date" SortExpression="Expire_date" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [User_id], [License_no], [Current_date], [Expire_date] FROM [renewdrivinglicense_table]"></asp:SqlDataSource>
    <br />
</p>
</asp:Content>
