<%@ Page Title="" Language="C#" MasterPageFile="~/erto_empforms/Site3.Master" AutoEventWireup="true" CodeBehind="tax_details.aspx.cs" Inherits="ertosystem.erto_empforms.tax_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #000000;
            text-align: center;
        }
        .auto-style2 {
            margin-left: 136px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        <strong>TAX DETAILS</strong></p>
    <p class="auto-style1">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style2" DataKeyNames="Tax_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1001px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Tax_id" HeaderText="Tax_id" InsertVisible="False" ReadOnly="True" SortExpression="Tax_id" />
                <asp:BoundField DataField="User_id" HeaderText="User_id" SortExpression="User_id" />
                <asp:BoundField DataField="Veh_Number" HeaderText="Veh_Number" SortExpression="Veh_Number" />
                <asp:BoundField DataField="Veh_Type" HeaderText="Veh_Type" SortExpression="Veh_Type" />
                <asp:BoundField DataField="Tax" HeaderText="Tax" SortExpression="Tax" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [Tax_id], [User_id], [Veh_Number], [Veh_Type], [Tax], [Pay_option], [Date] FROM [tax_table]"></asp:SqlDataSource>
    </p>
    <p class="auto-style1">
        &nbsp;</p>
</asp:Content>
