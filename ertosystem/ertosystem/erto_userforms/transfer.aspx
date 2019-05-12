<%@ Page Title="" Language="C#" MasterPageFile="~/erto_userforms/Site2.Master" AutoEventWireup="true" CodeBehind="transfer.aspx.cs" Inherits="ertosystem.erto_userforms.transfer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 186px;
        }
        .auto-style2 {
            width: 183px;
        }
        .auto-style3 {
            width: 245px;
        }
        .auto-style4 {
            text-align: center;
            font-size: large;
        }
        .auto-style5 {
            width: 183px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4" colspan="2"><strong>Transfer of Ownership</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbcurrentname" runat="server" Text="Current Owner Name"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="tbcurrentname" runat="server" Width="165px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbvehno" runat="server" Text="Vehicle Number"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="tbvehno" runat="server"  Width="165px" AutoPostBack="True" OnTextChanged="tbvehno_TextChanged"></asp:TextBox>
            </td>
            <td>*Eg:KL-01-A-1234<asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbvehid" runat="server" Text="Vehicle_ID"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="tbvehid" runat="server" OnTextChanged="tbvehid_TextChanged" Width="165px"></asp:TextBox>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="tbvehno" EventName="TextChanged" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbnewname" runat="server" Text="New Owner Name"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="tbnewname" runat="server" Width="165px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbnewdob" runat="server" Text="DOB(new owner)"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="tbnewdob" runat="server" TextMode="Date" Width="165px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbnewswd" runat="server" Text="Son/Wife/Daughter of"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="tbnewswd" runat="server" Width="165px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbnewaddress" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="tbnewaddress" runat="server" Height="51px" TextMode="MultiLine" Width="163px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbins_cer" runat="server" Text="Vehicle Insurance Certificate"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:FileUpload ID="uploadins_cer" runat="server" Width="165px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbnoc_cer" runat="server" Text="NOC(if registered in another state)"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:FileUpload ID="uploadnoc_cer" runat="server" Width="165px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbdate" runat="server" Text="Date"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="tbdate" runat="server" Width="160px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="transfer_btn" runat="server" OnClick="transfer_btn_Click" Text="Transfer" Width="115px" />
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
