<%@ Page Title="" Language="C#" MasterPageFile="~/erto_empforms/Site3.Master" AutoEventWireup="true" CodeBehind="fee_details.aspx.cs" Inherits="ertosystem.erto_empforms.fee_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #000000;
        }
        .auto-style2 {
            margin-left: 157px;
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        <strong>FEE DETAILS</strong></p>
    <p class="auto-style1">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style2" DataKeyNames="Pay_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="914px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Pay_id" HeaderText="Pay_id" InsertVisible="False" ReadOnly="True" SortExpression="Pay_id" />
                <asp:BoundField DataField="User_Id" HeaderText="User_Id" SortExpression="User_Id" />
                <asp:BoundField DataField="Fee" HeaderText="Fee" SortExpression="Fee" />
                <asp:BoundField DataField="Pay_option" HeaderText="Pay_option" SortExpression="Pay_option" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Appln_type" HeaderText="Appln_type" SortExpression="Appln_type" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [Pay_id], [User_Id], [Fee], [Pay_option], [Date], [Appln_type] FROM [pay_table]"></asp:SqlDataSource>
    </p>
</asp:Content>
