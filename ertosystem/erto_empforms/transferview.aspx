<%@ Page Title="" Language="C#" MasterPageFile="~/erto_empforms/Site3.Master" AutoEventWireup="true" CodeBehind="transferview.aspx.cs" Inherits="ertosystem.erto_empforms.transferview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        text-align: center;
        color: #000000;
    }
    .auto-style2 {
        margin-left: 29px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="auto-style1">
    <strong>Transfer &amp; NOC</strong></p>
<p>
    &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style2" DataKeyNames="Transfer_id" DataSourceID="SqlDataSource1" Width="1033px">
        <Columns>
            <asp:BoundField DataField="Transfer_id" HeaderText="Transfer_id" InsertVisible="False" ReadOnly="True" SortExpression="Transfer_id" />
            <asp:BoundField DataField="Current_ownername" HeaderText="Current_ownername" SortExpression="Current_ownername" />
            <asp:BoundField DataField="Vehicle_number" HeaderText="Vehicle_number" SortExpression="Vehicle_number" />
            <asp:BoundField DataField="Veh_Id" HeaderText="Veh_Id" SortExpression="Veh_Id" />
            <asp:BoundField DataField="New_ownername" HeaderText="New_ownername" SortExpression="New_ownername" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="SWD" HeaderText="SWD" SortExpression="SWD" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Veh_insurancecer" HeaderText="Veh_insurancecer" SortExpression="Veh_insurancecer" />
            <asp:BoundField DataField="Noc" HeaderText="Noc" SortExpression="Noc" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [Transfer_id], [Current_ownername], [Vehicle_number], [Veh_Id], [New_ownername], [DOB], [SWD], [Address], [Veh_insurancecer], [Noc], [Date] FROM [transfer_table]"></asp:SqlDataSource>
    &nbsp;</p>
</asp:Content>
