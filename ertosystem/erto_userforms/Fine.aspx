<%@ Page Title="" Language="C#" MasterPageFile="~/erto_userforms/Site2.Master" AutoEventWireup="true" CodeBehind="Fine.aspx.cs" Inherits="ertosystem.erto_userforms.Fine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 180px;
            background-color: #C0C0C0;
        }
        .auto-style3 {
            font-size: medium;
            height: 40px;
        }
        .auto-style4 {
            font-size: medium;
            width: 177px;
            height: 40px;
        }
        .auto-style5 {
            width: 177px;
        }
        .auto-style6 {
            width: 177px;
            text-align: right;
            height: 49px;
        }
        .auto-style7 {
            font-size: medium;
            width: 344px;
            height: 40px;
        }
        .auto-style8 {
            width: 344px;
        }
        .auto-style9 {
            width: 180px;
            height: 40px;
            background-color: #C0C0C0;
        }
    .auto-style10 {
        color: #009933;
    }
        .auto-style11 {
            font-size: medium;
            height: 40px;
            width: 454px;
        }
        .auto-style12 {
            width: 454px;
        }
        .auto-style13 {
            width: 180px;
            height: 49px;
            background-color: #C0C0C0;
        }
        .auto-style14 {
            width: 344px;
            height: 49px;
            text-align: center;
        }
        .auto-style15 {
            width: 454px;
            height: 49px;
        }
        .auto-style16 {
            height: 49px;
        }
        .auto-style17 {
            text-decoration: underline;
            background-color: #C0C0C0;
        }
        .auto-style18 {
            width: 344px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style4"><strong>Fine</strong></td>
            <td class="auto-style7"></td>
            <td class="auto-style11"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="lbuserid" runat="server" Text="User_id"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="tbuserid" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style12"><strong>Payment Options</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>
                <asp:HyperLink ID="challanlink" runat="server" CssClass="auto-style17" ForeColor="#3333FF" NavigateUrl="~/Images_erto/challan.pdf" BackColor="Silver">E-Challan</asp:HyperLink>
                </strong></td>
            <td class="auto-style5">
                <asp:Label ID="lbveh_no" runat="server" Text="Vehicle No"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="tbveh_no" runat="server"></asp:TextBox>
            &nbsp;Eg:KL-05-A-3415</td>
            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rb_debit" runat="server" Text="Debit/Credit Card" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="lbtax" runat="server" Text="Fine in Rs"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="tbfine" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rb_netbanking" runat="server" Text="Net banking" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style6"></td>
            <td class="auto-style14">
                <asp:Button ID="Button1" runat="server" Text="Pay" OnClick="Button1_Click" Width="76px" />
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style18">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style10"></asp:Label>
            </td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
