<%@ Page Title="" Language="C#" MasterPageFile="~/erto_empforms/Site3.Master" AutoEventWireup="true" CodeBehind="learners.aspx.cs" Inherits="ertosystem.erto_empforms.learners" %>
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
&nbsp;&nbsp;<span class="auto-style1"><strong> Applications for Learner's License</strong></span></p>
<p>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style2" ForeColor="#333333" GridLines="None" Width="863px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="User_id" DataField="User_id" />
            <asp:BoundField HeaderText="Learner ApplnNo" DataField="Appln_no" />
            <asp:BoundField HeaderText="Age Proof" DataField="Proof" />
            <asp:BoundField HeaderText="Date" DataField="Date" />
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
    <br />
</p>
</asp:Content>
