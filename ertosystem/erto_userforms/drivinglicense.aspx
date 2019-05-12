<%@ Page Title="" Language="C#" MasterPageFile="~/erto_userforms/Site2.Master" AutoEventWireup="true" CodeBehind="drivinglicense.aspx.cs" Inherits="ertosystem.erto_userforms.drivinglicense" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #666666;
            text-align: center;
            font-size: medium;
            height: 48px;
        }
        .auto-style2 {
            width: 163px;
        }
        .auto-style3 {
            width: 207px;
        }
        .auto-style4 {
            width: 163px;
            text-align: right;
        }
        .auto-style5 {
            width: 198px;
        }
        .auto-style6 {
            width: 207px;
            height: 48px;
        }
        .auto-style7 {
            width: 198px;
            text-align: right;
        }
        .auto-style8 {
            color: #666666;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style1" colspan="4"><strong>Apply Driving License</strong></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbuserid" runat="server" Text="User_Id"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="tbuserid" runat="server" Width="156px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lbappln_no" runat="server" Text="LL Application No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbappln_no" runat="server" Width="156px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbname" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="tbname" runat="server" Width="156px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lbswd" runat="server" Text="Son/Wife/Daughter of"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbswd" runat="server" Width="156px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbdob" runat="server" Text="DOB"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="tbdob" runat="server" Width="156px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lb_bgrp" runat="server" Text="Blood Group"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="d_bgrp" runat="server" Width="156px">
                    <asp:ListItem>--Select Blood Group--</asp:ListItem>
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>AB-</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>O-</asp:ListItem>
                    <asp:ListItem>Unknown</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbaddress" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="tbaddress" runat="server" Height="37px" TextMode="MultiLine" Width="156px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lbtype" runat="server" Text="Vehicle Type"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="d_vehtype" runat="server" Height="16px" Width="156px">
                    <asp:ListItem>2wheeler</asp:ListItem>
                    <asp:ListItem>3wheeler</asp:ListItem>
                    <asp:ListItem>4wheeler</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbqual" runat="server" Text="Educational Qualification"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="tbqual" runat="server" Width="156px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lbdate" runat="server" Text="Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbdate" runat="server" Width="156px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="apply_btn" runat="server" CssClass="auto-style8" Text="Apply License" OnClick="apply_btn_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
