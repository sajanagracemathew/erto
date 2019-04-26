<%@ Page Title="" Language="C#" MasterPageFile="~/erto_empforms/Site3.Master" AutoEventWireup="true" CodeBehind="duplicate.aspx.cs" Inherits="ertosystem.erto_empforms.duplicate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        color: #000000;
    }
    .auto-style2 {
        margin-left: 94px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="center">
    &nbsp;<span class="auto-style1"><strong>Applications for Duplicate Driving License&nbsp;</strong></span></p>
<p class="center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Dup_id" DataSourceID="SqlDataSource1" CssClass="auto-style2" Width="875px">
        <Columns>
            <asp:BoundField DataField="Dup_id" HeaderText="Dup_id" InsertVisible="False" ReadOnly="True" SortExpression="Dup_id" />
            <asp:BoundField DataField="User_id" HeaderText="User_id" SortExpression="User_id" />
            <asp:BoundField DataField="License_no" HeaderText="License_no" SortExpression="License_no" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [Dup_id], [User_id], [License_no], [Date] FROM [duplicatedl_table]"></asp:SqlDataSource>
</p>
</asp:Content>
