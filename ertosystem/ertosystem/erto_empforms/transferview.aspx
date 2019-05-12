<%@ Page Title="" Language="C#" MasterPageFile="~/erto_empforms/Site3.Master" AutoEventWireup="true" CodeBehind="transferview.aspx.cs" Inherits="ertosystem.erto_empforms.transferview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        text-align: center;
        color: #000000;
    }
        .auto-style2 {
            margin-left: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        <strong>Transfer &amp; NOC</strong></p>
<p>
    &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style2" ForeColor="#333333" GridLines="None" Width="1103px" OnRowDataBound="GridView1_RowDataBound">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Transfer_id" HeaderText="Transfer_id" />
            <asp:BoundField DataField="Current_ownername" HeaderText="Current_ownername" />
            <asp:BoundField DataField="Vehicle_number" HeaderText="Vehicle_number" />
            <asp:BoundField DataField="Veh_Id" HeaderText="Veh_Id" />
            <asp:BoundField DataField="New_ownername" HeaderText="New_ownername" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" />
            <asp:BoundField DataField="Address" HeaderText="Address" />
            <asp:BoundField DataField="Veh_insurancecer" HeaderText="Veh_insurancecer" />
            <asp:BoundField DataField="Noc" HeaderText="Noc" />
            <asp:BoundField DataField="Date" HeaderText="Date" />
            <asp:BoundField HeaderText="is_verified" DataField="is_verified" />
            <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:HiddenField ID="hdnApp" runat="server" Value='<%# Eval("is_verified") %>' />
                <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandArgument='<%# Eval("APR_STATUS") %>' 
                    CommandName="ShowStatus" Text='<%# Eval("APR_STATUS") %>' OnClick ="btnApprove_Click"  />
            </ItemTemplate>
                <ControlStyle ForeColor="Red" />
        </asp:TemplateField>
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
    &nbsp;</p>
</asp:Content>
