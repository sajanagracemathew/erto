<%@ Page Title="" Language="C#" MasterPageFile="~/erto_userforms/Site2.Master" AutoEventWireup="true" CodeBehind="renewdrivinglicense.aspx.cs" Inherits="ertosystem.erto_userforms.drivinglicenseappln" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 42px;
    }
    .auto-style2 {
        height: 42px;
        text-align: center;
        font-size: large;
    }
    .auto-style3 {
        width: 192px;
    }
    .auto-style4 {
        height: 42px;
        width: 192px;
    }
    .auto-style5 {
            width: 222px;
        }
    .auto-style6 {
        width: 176px;
    }
    .auto-style8 {
        width: 192px;
        height: 20px;
    }
    .auto-style9 {
        width: 222px;
        height: 20px;
    }
    .auto-style10 {
        width: 176px;
        height: 20px;
    }
    .auto-style11 {
        height: 20px;
    }
    .auto-style12 {
        width: 222px;
        text-align: center;
    }
    .auto-style13 {
        width: 192px;
        height: 34px;
    }
    .auto-style14 {
        width: 222px;
        height: 34px;
    }
    .auto-style15 {
        width: 176px;
        height: 34px;
    }
    .auto-style16 {
        height: 34px;
    }
        .auto-style17 {
            margin-left: 16;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <table class="nav-justified">
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style2" colspan="2"><strong style="color: #666666">Renew Driving License</strong></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style14">
            <asp:Label ID="lbuserid" runat="server" Text="User_Id"></asp:Label>
        </td>
        <td class="auto-style15">
            <asp:TextBox ID="tbuserid" runat="server" ReadOnly="True" Width="160px"></asp:TextBox>
        </td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13"></td>
        <td class="auto-style14">
            <asp:Label ID="lblicense_no" runat="server" Text="License No"></asp:Label>
        </td>
        <td class="auto-style15">
            <asp:TextBox ID="tblicense_no" runat="server" Width="160px"></asp:TextBox>
        </td>
        <td class="auto-style16">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tblicense_no" ErrorMessage="Please enter License no" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"></td>
        <td class="auto-style14">
            <asp:Label ID="lbname" runat="server" Text="License Holder Name"></asp:Label>
        </td>
        <td class="auto-style15">
            <asp:TextBox ID="tblname" runat="server" Width="160px" ReadOnly="True"></asp:TextBox>
        </td>
        <td class="auto-style16"></td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style14">
            <asp:Label ID="lbdob" runat="server" Text="DOB"></asp:Label>
        </td>
        <td class="auto-style15">
            <asp:TextBox ID="tbldob" runat="server" Width="160px"></asp:TextBox>
        </td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style14">
            <asp:Label ID="lbaddress" runat="server" Text="Address"></asp:Label>
        </td>
        <td class="auto-style15">
            <asp:TextBox ID="tbladdress" runat="server" Height="46px" TextMode="MultiLine" Width="160px"></asp:TextBox>
        </td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13"></td>
        <td class="auto-style14">
            <asp:Label ID="lbcurrentdate" runat="server" Text="Current Date"></asp:Label>
        </td>
        <td class="auto-style15">
            <asp:TextBox ID="tbcurrentdate" runat="server" Width="160px"></asp:TextBox>
        </td>
        <td class="auto-style16"></td>
    </tr>
    <tr>
        <td class="auto-style13"></td>
        <td class="auto-style14">
            <asp:Label ID="lbexpiredate" runat="server" Text="Expire Date"></asp:Label>
        </td>
        <td class="auto-style15">
            <asp:TextBox ID="tbexpiredate" runat="server" Width="160px" TextMode="Date"></asp:TextBox>
        </td>
        <td class="auto-style16">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbexpiredate" ErrorMessage="Please enter expire date" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style9"></td>
        <td class="auto-style10"></td>
        <td class="auto-style11"></td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style12">
            <asp:Button ID="renew_btn" runat="server" Height="28px" Text="Renew License" OnClick="renew_btn_Click" ForeColor="#666666" CssClass="auto-style17" />
        </td>
        <td class="auto-style6">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

