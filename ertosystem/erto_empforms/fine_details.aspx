<%@ Page Title="" Language="C#" MasterPageFile="~/erto_empforms/Site3.Master" AutoEventWireup="true" CodeBehind="fine_details.aspx.cs" Inherits="ertosystem.erto_empforms.fine_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            background-color: #000000;
        }
        .auto-style2 {
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style3 {
            margin-left: 206px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="center">
        <br />
        <span class="auto-style1"><strong><span class="auto-style2">FINE DETAILS</span></strong></span></p>
    <p class="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style3" DataKeyNames="Fine_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="821px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Fine_id" HeaderText="Fine_id" InsertVisible="False" ReadOnly="True" SortExpression="Fine_id" />
                <asp:BoundField DataField="user_id" HeaderText="User_id" SortExpression="User_id" />
                <asp:BoundField DataField="Veh_number" HeaderText="Veh_number" SortExpression="Veh_number" />
                <asp:BoundField DataField="Fine" HeaderText="Fine" SortExpression="Fine" />
                <asp:BoundField DataField="Pay_option" HeaderText="Pay_option" SortExpression="Pay_option" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [Fine_id], [User_id], [Veh_number], [Fine], [Pay_option], [Date] FROM [fine_table]"></asp:SqlDataSource>
    </p>
</asp:Content>
