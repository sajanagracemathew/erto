<%@ Page Title="" Language="C#" MasterPageFile="~/erto_officerforms/Site4.Master" AutoEventWireup="true" CodeBehind="veh_registrations.aspx.cs" Inherits="ertosystem.erto_officerforms.veh_registraions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        color: #000000;
    }
    .auto-style2 {
        margin-left: 37px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="center">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p class="center">
&nbsp;<span class="auto-style1"><strong>VEHICLE REGISTRATIONS&nbsp;</strong></span></p>
<p class="center">
    &nbsp;</p>
<p class="center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style2" DataKeyNames="Veh_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1201px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Veh_Id" HeaderText="Veh_Id" ReadOnly="True" SortExpression="Veh_Id" />
            <asp:BoundField DataField="User_Id" HeaderText="User_Id" SortExpression="User_Id" />
            <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
            <asp:BoundField DataField="Veh_type" HeaderText="Veh_type" SortExpression="Veh_type" />
            <asp:BoundField DataField="Vehicle_no" HeaderText="Vehicle_no" SortExpression="Vehicle_no" />
            <asp:BoundField DataField="Registration_date" HeaderText="Registration_date" SortExpression="Registration_date" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [Veh_Id], [User_Id], [District], [Registration_date], [Vehicle_no], [Veh_type] FROM [vehicleregistration_table]"></asp:SqlDataSource>
</p>
</asp:Content>
