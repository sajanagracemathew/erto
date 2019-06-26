﻿<%@ Page Title="" Language="C#" MasterPageFile="~/erto_officerforms/Site4.Master" AutoEventWireup="true" CodeBehind="renewlicense.aspx.cs" Inherits="ertosystem.erto_officerforms.renewlicense" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        color: #000000;
    }
        .auto-style2 {
            margin-left: 197px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="center">
        &nbsp;</p>
    <p class="center">
&nbsp;&nbsp;<span class="auto-style1"><strong> Applications for Renewal of Driving License</strong></span></p>
<p>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style2" ForeColor="#333333" GridLines="None" Width="863px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="User_id" DataField="User_id" />
            <asp:BoundField HeaderText="License_no" DataField="License_no" />
            <asp:BoundField HeaderText="Currentdate" DataField="Currentdate" />
            <asp:BoundField HeaderText="Expiredate" DataField="Expire_date" />
            <asp:BoundField HeaderText="is_verified" DataField="is_verified" />
            <asp:BoundField HeaderText="is_approved" DataField="is_approved" />
            <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:HiddenField ID="hdnApp" runat="server" Value='<%# Eval("is_approved") %>' />
                <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandArgument='<%# Eval("APR_STATUS") %>' 
                    CommandName="ShowStatus" Text='<%# Eval("APR_STATUS") %>' OnClick ="btnApprove_Click"  />
            </ItemTemplate>
                <ControlStyle ForeColor="Red" />
        </asp:TemplateField>
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
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    <br />
</p>
</asp:Content>
