<%@ Page Title="" Language="C#" MasterPageFile="~/erto_userforms/Site2.Master" AutoEventWireup="true" CodeBehind="paymentconfirm.aspx.cs" Inherits="ertosystem.erto_userforms.paymentconfirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #000000;
            width: 236px;
            height: 38px;
        }
        .auto-style2 {
            width: 236px;
        }
        .auto-style3 {
            width: 184px;
        }
        .auto-style4 {
            width: 236px;
            text-align: right;
        }
        .auto-style5 {
            color: #666666;
            text-align: left;
            font-size: medium;
            height: 38px;
        }
        .auto-style6 {
            height: 38px;
        }
        .auto-style7 {
            width: 195px;
        }
        .auto-style8 {
            width: 195px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style5" colspan="2"><strong>Billing Information</strong></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="lbcard_no" runat="server" Text="Card Number"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tbcard_no" runat="server" Width="155px" Height="21px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="lbcard_name" runat="server" Text="Cardholder Name"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tbcard_name" runat="server" Width="155px" Height="21px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="lbexpire" runat="server" Text="Expiry Date"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="d_month" runat="server" Height="20px" Width="82px">
                    <asp:ListItem>--Month--</asp:ListItem>
                    <asp:ListItem>January</asp:ListItem>
                    <asp:ListItem>February</asp:ListItem>
                    <asp:ListItem>March</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem>August</asp:ListItem>
                    <asp:ListItem>September</asp:ListItem>
                    <asp:ListItem>October</asp:ListItem>
                    <asp:ListItem>November</asp:ListItem>
                    <asp:ListItem>December</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="d_year" runat="server" Height="16px" Width="80px">
                    <asp:ListItem>--Year--</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2021</asp:ListItem>
                    <asp:ListItem>2022</asp:ListItem>
                    <asp:ListItem>2023</asp:ListItem>
                    <asp:ListItem>2024</asp:ListItem>
                    <asp:ListItem>2025</asp:ListItem>
                    <asp:ListItem>2026</asp:ListItem>
                    <asp:ListItem>2027</asp:ListItem>
                    <asp:ListItem>2028</asp:ListItem>
                    <asp:ListItem>2029</asp:ListItem>
                    <asp:ListItem>2030</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="lbcvv" runat="server" Text="CVV"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox4" runat="server" Width="155px" Height="21px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="pay_btn" runat="server" ForeColor="#666666" Text="Pay" Width="47px" OnClick="pay_btn_Click" />
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
