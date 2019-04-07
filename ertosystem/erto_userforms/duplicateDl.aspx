<%@ Page Title="" Language="C#" MasterPageFile="~/erto_userforms/Site2.Master" AutoEventWireup="true" CodeBehind="duplicateDl.aspx.cs" Inherits="ertosystem.erto_userforms.duplicateDl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 198px;
        }
        .auto-style7 {
            width: 185px;
            text-align: left;
        }
        .auto-style8 {
            width: 198px;
            height: 53px;
        }
        .auto-style9 {
            height: 53px;
        }
        .auto-style10 {
            width: 198px;
            height: 30px;
        }
        .auto-style13 {
            height: 30px;
        }
        .auto-style16 {
            width: 179px;
            text-align: left;
        }
        .auto-style19 {
            width: 179px;
            height: 30px;
            text-align: right;
        }
        .auto-style20 {
            height: 53px;
            text-align: center;
            font-size: large;
        }
        .auto-style22 {
            height: 17px;
            text-align: center;
            font-size: large;
        }
        .auto-style23 {
            width: 198px;
            height: 17px;
        }
        .auto-style24 {
            height: 17px;
        }
        .auto-style25 {
            width: 179px;
        }
        .auto-style26 {
            width: 179px;
            height: 30px;
        }
        .auto-style27 {
            width: 185px;
        }
        .auto-style28 {
            width: 185px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
        <table class="nav-justified">
            <tr>
                <td class="auto-style23"></td>
                <td colspan="2" class="auto-style22">
                </td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td colspan="2" class="auto-style20">
        <strong style="color: #666666">Issue of Duplicate Driving License</strong></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="lbuserid" runat="server" Text="User_Id"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="tbuserid" runat="server" Height="21px" Width="160px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="labellicenseno" runat="server" Text="License No"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="textboxlicenseno" runat="server" Width="160px" Height="23px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="labelname" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="textboxname" runat="server" Width="160px" Height="23px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="labeldob" runat="server" Text="DOB"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="textboxdob" runat="server" Width="160px" Height="23px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="labeladdress" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="textboxaddress" runat="server" Height="50px" TextMode="MultiLine" Width="160px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Label ID="labeldate" runat="server" Text="Date"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="textboxdate" runat="server" Width="160px" Height="21px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style19">
                    <asp:Button ID="dlduplicate_btn" runat="server" Text="Apply Duplicate" ForeColor="#666666" OnClick="dlduplicate_btn_Click" Width="144px" />
                </td>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style26"></td>
                <td class="auto-style28"></td>
                <td class="auto-style13"></td>
            </tr>
        </table>
   
</asp:Content>
