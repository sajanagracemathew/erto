<%@ Page Title="" Language="C#" MasterPageFile="~/erto_userforms/Site2.Master" AutoEventWireup="true" CodeBehind="tax.aspx.cs" Inherits="ertosystem.erto_userforms.tax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 180px;
        }
        .auto-style3 {
            font-size: medium;
            height: 40px;
        }
        .auto-style4 {
            font-size: medium;
            width: 226px;
            height: 40px;
        }
        .auto-style5 {
            width: 226px;
        }
        .auto-style6 {
            width: 226px;
            text-align: left;
            height: 68px;
        }
        .auto-style7 {
            font-size: medium;
            width: 360px;
            height: 40px;
        }
        .auto-style9 {
            width: 180px;
            height: 40px;
        }
    .auto-style10 {
        color: #009933;
    }
        .auto-style11 {
            font-size: medium;
            height: 40px;
            width: 402px;
        }
        .auto-style12 {
            width: 402px;
        }
        .auto-style13 {
            width: 360px;
        }
        .auto-style14 {
            color: #666666;
        }
        .auto-style15 {
            width: 180px;
            height: 68px;
        }
        .auto-style16 {
            width: 360px;
            height: 68px;
        }
        .auto-style17 {
            width: 402px;
            height: 68px;
        }
        .auto-style18 {
            height: 68px;
        }
        .auto-style19 {
            width: 360px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style4"><strong>Tax</strong></td>
            <td class="auto-style7"></td>
            <td class="auto-style11"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="lbuserid" runat="server" Text="User_id"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="tbuserid" runat="server" ReadOnly="True"></asp:TextBox>
            &nbsp;</td>
            <td class="auto-style12"><strong>Payment Options</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="lbveh_no" runat="server" Text="Vehicle No"></asp:Label>
            </td>
            <td class="auto-style13">
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
                <asp:Label ID="lbveh_type" runat="server" Text="Vehicle_Type"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:DropDownList ID="ddveh_type" runat="server" Height="19px" Width="128px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>2 wheeler</asp:ListItem>
                    <asp:ListItem>3 wheeler</asp:ListItem>
                    <asp:ListItem>4 wheeler</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rb_netbanking" runat="server" Text="Net banking" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="lbvalue" runat="server" Text="Purchase Value"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:DropDownList ID="ddvalue" runat="server" OnSelectedIndexChanged="ddvalue_SelectedIndexChanged" AutoPostBack="True" Width="128px">
                </asp:DropDownList>
            </td>
            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"></td>
            <td class="auto-style6">
                <asp:Label ID="lbtax" runat="server" Text="Tax in Rs"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="tbtax" runat="server" Width="128px"></asp:TextBox>
                    </ContentTemplate>
                    <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="ddvalue" EventName="SelectedIndexChanged" />
                     </Triggers>
                </asp:UpdatePanel>
                <br />
            </td>
            <td class="auto-style17"></td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style19">
                <asp:Button ID="Button1" runat="server" Text="Pay" OnClick="Button1_Click" Width="52px" CssClass="auto-style14" />
            </td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style19">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style10"></asp:Label>
            </td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
