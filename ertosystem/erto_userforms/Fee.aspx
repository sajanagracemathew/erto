<%@ Page Title="" Language="C#" MasterPageFile="~/erto_userforms/Site2.Master" AutoEventWireup="true" CodeBehind="Fee.aspx.cs" Inherits="ertosystem.erto_userforms.Fee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
            width: 200px;
        }
    .auto-style2 {
        width: 53%;
        height: 135px;
    }
    .auto-style3 {
        width: 200px;
        height: 138px;
    }
    .auto-style4 {
        height: 138px;
    }
    .auto-style5 {
            height: 42px;
            width: 190px;
        }
    .auto-style7 {
            height: 42px;
            width: 279px;
        }
        .auto-style8 {
            width: 279px;
            color: #FFFFFF;
        }
        .auto-style9 {
            color: #FFFFFF;
            width: 190px;
        }
        .auto-style10 {
            width: 190px;
        }
        .auto-style12 {
            width: 279px;
        }
        .auto-style13 {
            color: #000099;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td class="auto-style3" style="background-color: #C0C0C0">
            <br />
            <br />
            <br />
            <asp:HyperLink ID="fee_link" runat="server" BackColor="Silver" CssClass="auto-style13" ForeColor="#000099" NavigateUrl="paymentpage.aspx">E-payment</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="challanlink" runat="server" BackColor="Silver" CssClass="auto-style13" ForeColor="#000099">E-challan</asp:HyperLink>
            <br />
            <br />
            <br />
            <br />
        </td>
        <td class="auto-style4">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style8" style="background-color: #000000"><strong>Type of Applications</strong></td>
                    <td class="auto-style9" style="background-color: #000000"><strong>Fee(in Rs)</strong></td>
                </tr>
                <tr>
                    <td class="auto-style12">Vehicle Registration</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Two-wheeler&nbsp;</td>
                    <td class="auto-style10">500</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Three-wheeler&nbsp;</td>
                    <td class="auto-style10">1500</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Four-wheeler&nbsp;</td>
                    <td class="auto-style10">3000</td>
                </tr>
                <tr>
                    <td class="auto-style7">Issue of Learner&#39;s License</td>
                    <td class="auto-style5">200</td>
                </tr>
                <tr>
                    <td class="auto-style7">Issue of Driving License</td>
                    <td class="auto-style5">200</td>
                </tr>
                <tr>
                    <td class="auto-style7">Driver&#39;s License Test</td>
                    <td class="auto-style5">300</td>
                </tr>
                <tr>
                    <td class="auto-style7">Renewal of Driving License</td>
                    <td class="auto-style5">200</td>
                </tr>
                <tr>
                    <td class="auto-style7">Issue of Duplicate Driving License</td>
                    <td class="auto-style5">500</td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style10"></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="auto-style1" style="background-color: #C0C0C0">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1" style="background-color: #C0C0C0">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1" style="background-color: #C0C0C0">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1" style="background-color: #C0C0C0">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1" style="background-color: #C0C0C0">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1" style="background-color: #C0C0C0">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1" style="background-color: #C0C0C0; color: #C0C0C0;">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1" style="background-color: #C0C0C0; color: #C0C0C0;">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1" style="background-color: #C0C0C0; color: #C0C0C0;">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
