<%@ Page Title="" Language="C#" MasterPageFile="~/erto_adminforms/Site1.Master" AutoEventWireup="true" CodeBehind="empdetails.aspx.cs" Inherits="ertosystem.erto_adminforms.empdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        margin-top: 56px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataSourceID="SqlDataSource2">
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="Mobile_number" HeaderText="Mobile_number" SortExpression="Mobile_number" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Educational_qual" HeaderText="Educational_qual" SortExpression="Educational_qual" />
        <asp:BoundField DataField="DOJ" HeaderText="DOJ" SortExpression="DOJ" />
        <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />
        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        <asp:CommandField ShowCancelButton="False" ShowEditButton="True" />
    </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [Name], [DOB], [Gender], [Address], [Mobile_number], [Email], [Educational_qual], [DOJ], [Photo], [Username], [Password] FROM [empregistration_table]"></asp:SqlDataSource>
</asp:Content>
