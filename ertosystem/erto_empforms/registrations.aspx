<%@ Page Title="" Language="C#" MasterPageFile="~/erto_empforms/Site3.Master" AutoEventWireup="true" CodeBehind="registrations.aspx.cs" Inherits="ertosystem.erto_empforms.registrations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 3px;
            margin-top: 5px;
        }
        .auto-style2 {
            color: #000000;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="center">
        <span class="auto-style2"><strong>Vehicle Registrations</strong></span><br />
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Veh_Id" DataSourceID="SqlDataSource1" CssClass="auto-style1" Height="153px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="16px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Veh_Id" HeaderText="Veh_Id" ReadOnly="True" SortExpression="Veh_Id" />
            <asp:BoundField DataField="User_Id" HeaderText="User_Id" SortExpression="User_Id" />
            <asp:BoundField DataField="Address_proof" HeaderText="Address_proof" SortExpression="Address_proof" />
            <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
            <asp:BoundField DataField="Veh_type" HeaderText="Veh_type" SortExpression="Veh_type" />
            <asp:BoundField DataField="Veh_company" HeaderText="Veh_company" SortExpression="Veh_company" />
            <asp:BoundField DataField="Veh_model" HeaderText="Veh_model" SortExpression="Veh_model" />
            <asp:BoundField DataField="Veh_manufactureyear" HeaderText="Veh_manufactureyear" SortExpression="Veh_manufactureyear" />
            <asp:BoundField DataField="Areaname" HeaderText="Areaname" SortExpression="Areaname" />
            <asp:BoundField DataField="Chassis_number" HeaderText="Chassis_number" SortExpression="Chassis_number" />
            <asp:BoundField DataField="Fitness_certificate" HeaderText="Fitness_certificate" SortExpression="Fitness_certificate" />
            <asp:BoundField DataField="Registration_date" HeaderText="Registration_date" SortExpression="Registration_date" />
            <asp:BoundField DataField="Vehicle_no" HeaderText="Vehicle_no" SortExpression="Vehicle_no" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [Veh_Id], [User_Id], [SWD], [Address_proof], [District], [Veh_type], [Veh_company], [Veh_model], [Veh_manufactureyear], [Areaname], [Chassis_number], [Fitness_certificate], [Registration_date], [Vehicle_no] FROM [vehicleregistration_table]"></asp:SqlDataSource>
</p>
</asp:Content>
