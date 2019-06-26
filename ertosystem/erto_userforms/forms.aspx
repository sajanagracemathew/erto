<%@ Page Title="" Language="C#" MasterPageFile="~/erto_userforms/Site2.Master" AutoEventWireup="true" CodeBehind="forms.aspx.cs" Inherits="ertosystem.erto_userforms.forms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 214px;
        }
        .auto-style3 {
            width: 392px;
        }
        .auto-style4 {
            width: 163px;
            background-color: #C0C0C0;
        }
        .auto-style5 {
            width: 163px;
            color: #333333;
            background-color: #C0C0C0;
        }
        .auto-style6 {
            color: #000000;
            text-align: left;
            height: 42px;
        }
        .auto-style7 {
            width: 163px;
            height: 42px;
            background-color: #C0C0C0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style6" colspan="2"><strong>DOWNLOAD FORMS</strong></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">Fitness Certificate</td>
            <td class="auto-style3">
                <asp:Button ID="dwnld_btn1" runat="server" Text="DOWNLOAD" Width="110px" OnClick="dwnld_btn1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Download forms here!</td>
            <td class="auto-style2">Insurance Certificate</td>
            <td class="auto-style3">
                <asp:Button ID="ins_btn" runat="server" Text="DOWNLOAD" Width="110px" OnClick="ins_btn_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">NOC Certificate</td>
            <td class="auto-style3">
                <asp:Button ID="noc_btn" runat="server" Text="DOWNLOAD" Width="110px" OnClick="noc_btn_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td class="auto-style3">
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
