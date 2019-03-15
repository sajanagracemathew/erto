<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="user_reg.aspx.cs" Inherits="ertosystem.erto_userforms.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td style="width: 237px">&nbsp;</td>
        <td style="width: 34px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center" colspan="2">USER REGISTRATION</td>
        <td colspan="1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 237px; height: 22px"></td>
        <td style="height: 22px; width: 34px"></td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
    </tr>
    <tr>
        <td id="lbname" style="width: 237px">Name</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbname" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbdob" style="width: 237px">DOB</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbdob" runat="server" Width="158px" TextMode="Date"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbaddress" style="width: 237px">Address</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbaddress" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbcity" style="width: 237px">City</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbcity" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbmobile" style="width: 237px; height: 22px">Mobile number</td>
        <td style="width: 34px; height: 22px">
            <asp:TextBox ID="tbmobile" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
    </tr>
    <tr>
        <td id="lbemail" style="width: 237px">Email</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbemail" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbphoto" style="width: 237px">Photo</td>
        <td style="width: 34px">
            <asp:FileUpload ID="upphoto" runat="server" Width="158px" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbusername" style="width: 237px; height: 20px">Username</td>
        <td style="height: 20px; width: 34px">
            <asp:TextBox ID="tbusername" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td id="lbpassword" style="width: 237px">Password</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbpassword" runat="server" TextMode="Password" Width="158px"></asp:TextBox>
        </td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td id="tbcofirm" style="width: 237px; height: 20px">Confirm password</td>
        <td style="height: 20px; width: 34px">
            <asp:TextBox ID="tbconfirm" runat="server" TextMode="Password" Width="158px"></asp:TextBox>
        </td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 237px; height: 20px">&nbsp;</td>
        <td style="height: 20px; width: 34px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 237px; height: 20px">&nbsp;</td>
        <td style="height: 20px; width: 34px">
            <asp:Button ID="submit_btn" runat="server" Text="SUBMIT" Width="67px" OnClick="submit_btn_Click" />
        </td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 237px; height: 20px"></td>
        <td style="width: 34px; height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td style="width: 237px; height: 20px">&nbsp;</td>
        <td style="height: 20px; width: 34px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 31px; width: 237px"></td>
        <td style="height: 31px; width: 34px"></td>
        <td style="height: 31px"></td>
        <td style="height: 31px"></td>
        <td style="height: 31px"></td>
        <td style="height: 31px"></td>
    </tr>
</table>
</asp:Content>
