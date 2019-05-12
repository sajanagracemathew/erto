<%@ Page Title="" Language="C#" MasterPageFile="~/erto_userforms/Site2.Master" AutoEventWireup="true" CodeBehind="Taxhome.aspx.cs" Inherits="ertosystem.erto_userforms.Taxhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
            width: 200px;
        }
    .auto-style2 {
        width: 54%;
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
        width: 215px;
        color: #666666;
    }
    .auto-style7 {
        height: 42px;
        width: 517px;
        color: #666666;
    }
        .auto-style8 {
            width: 517px;
            color: #FFFFFF;
            height: 33px;
        }
        .auto-style9 {
            color: #FFFFFF;
            width: 215px;
            height: 33px;
        }
        .auto-style10 {
        width: 215px;
    }
        .auto-style12 {
        width: 517px;
        color: #666666;
    }
        .auto-style13 {
            color: #000099;
            font-size: medium;
        }
    .auto-style14 {
        color: #666666;
    }
    .auto-style15 {
        width: 215px;
        color: #666666;
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
            <asp:HyperLink ID="fee_link" runat="server" BackColor="Silver" CssClass="auto-style13" ForeColor="#000099" NavigateUrl="tax.aspx">E-payment</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="challanlink" runat="server" BackColor="Silver" CssClass="auto-style13" ForeColor="#000099" NavigateUrl="~/Images_erto/challan.pdf">E-challan</asp:HyperLink>
            <br />
            <br />
            <br />
            <br />
        </td>
        <td class="auto-style4">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style8" style="background-color: #000000">Class-Type</td>
                    <td class="auto-style9" style="background-color: #000000">One Time Tax Rate</td>
                </tr>
                <tr>
                    <td class="auto-style12"><span style="font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: none; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(247, 250, 252); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style14">Motorcycles and bicycles having purchase value up to ₹1 lac</span></td>
                    <td class="auto-style15">8%</td>
                </tr>
                <tr>
                    <td class="auto-style12"><span style="font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: none; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(247, 250, 252); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style14">Motorcycles and bicycles having purchase value between ₹1 lac and ₹2 lac</span></td>
                    <td class="auto-style15">9%</td>
                </tr>
                <tr>
                    <td class="auto-style12"><span style="font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: none; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(247, 250, 252); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style14">Motorcycles and bicycles having purchase value above ₹2 lac</span></td>
                    <td class="auto-style15">10%</td>
                </tr>
                <tr>
                    <td class="auto-style12"><span style="font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: none; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(247, 250, 252); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style14">Three wheelers, mechanical tricycles and rickshaws not used for transport of goods or passengers</span></td>
                    <td class="auto-style15">6%</td>
                </tr>
                <tr>
                    <td class="auto-style7"><span style="font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: none; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(247, 250, 252); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style14">Motorcars and private service vehicles for personal use having a purchase value up to ₹5 lac</span></td>
                    <td class="auto-style5">6%</td>
                </tr>
                <tr>
                    <td class="auto-style7"><span style="font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: none; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(247, 250, 252); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style14">Motorcars and private service vehicles for personal use having a purchase value between ₹5 lac - ₹10 lac</span></td>
                    <td class="auto-style5">8%</td>
                </tr>
                <tr>
                    <td class="auto-style7"><span style="font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: none; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(247, 250, 252); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style14">Motorcars and private service vehicles for personal use having a purchase value between ₹10 lac - ₹15 lac</span></td>
                    <td class="auto-style5">10%</td>
                </tr>
                <tr>
                    <td class="auto-style7"><span style="font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: none; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(247, 250, 252); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style14">Motorcars and private service vehicles for personal use having a purchase value between ₹15 lac - ₹20 lac</span></td>
                    <td class="auto-style5">15%</td>
                </tr>
                <tr>
                    <td class="auto-style7"><span style="font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: none; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(247, 250, 252); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style14">Motorcars and private service vehicles for personal use having a purchase value above ₹20 lac</span></td>
                    <td class="auto-style5">20%</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
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
