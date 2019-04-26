<%@ Page Title="" Language="C#" MasterPageFile="~/erto_empforms/Site3.Master" AutoEventWireup="true" CodeBehind="renew.aspx.cs" Inherits="ertosystem.erto_empforms.renew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        color: #000000;
    }
    .auto-style2 {
        margin-left: 61px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="center">
&nbsp;&nbsp;<span class="auto-style1"><strong> Applications for renewal of Driving License</strong></span></p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Renew_id" DataSourceID="SqlDataSource1" CssClass="auto-style2" Width="904px">
        <Columns>
            <asp:BoundField DataField="Renew_id" HeaderText="Renew_id" InsertVisible="False" ReadOnly="True" SortExpression="Renew_id" />
            <asp:BoundField DataField="User_id" HeaderText="User_id" SortExpression="User_id" />
            <asp:BoundField DataField="License_no" HeaderText="License_no" SortExpression="License_no" />
            <asp:BoundField DataField="Current_date" HeaderText="Current_date" SortExpression="Current_date" />
            <asp:BoundField DataField="Expire_date" HeaderText="Expire_date" SortExpression="Expire_date" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [Renew_id], [User_id], [License_no], [Current_date], [Expire_date] FROM [renewdrivinglicense_table]"></asp:SqlDataSource>
    <br />
</p>
</asp:Content>
