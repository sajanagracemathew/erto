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
        <td class="text-center" colspan="2" style="text-align: center"><strong>USER REGISTRATION</strong></td>
        <td colspan="1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 237px; height: 22px"></td>
        <td style="height: 22px; width: 34px"></td>
        <td style="height: 22px">&nbsp;</td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
    </tr>
    <tr>
        <td id="lbname" style="width: 237px">Name</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbname" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter name" ForeColor="#CC0000" ControlToValidate="tbname"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbdob" style="width: 237px">DOB</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbdob" runat="server" Width="158px" TextMode="Date"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter date of birth" ForeColor="#CC0000" ControlToValidate="tbdob"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbaddress" style="width: 237px">Address</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbaddress" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter address" ForeColor="#CC0000" ControlToValidate="tbaddress"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbcity" style="width: 237px">City</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbcity" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter city" ForeColor="#CC0000" ControlToValidate="tbcity"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbmobile" style="width: 237px; height: 22px">Mobile number</td>
        <td style="width: 34px; height: 22px">
            <asp:TextBox ID="tbmobile" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td style="height: 22px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter mobile number" ForeColor="#CC0000" ControlToValidate="tbmobile"></asp:RequiredFieldValidator>
        </td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
    </tr>
    <tr>
        <td id="lbemail" style="width: 237px">Email</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbemail" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter email." ForeColor="#CC0000" ControlToValidate="tbemail"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbemail" ErrorMessage="Enter a valid email id." ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbphoto" style="width: 237px; height: 27px;">Photo</td>
        <td style="width: 34px; height: 27px;">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="158px" Height="27px" />
        </td>
        <td style="height: 27px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please upload photo" ForeColor="#CC0000" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
        </td>
        <td style="height: 27px"></td>
        <td style="height: 27px"></td>
        <td style="height: 27px"></td>
    </tr>
    <tr>
        <td id="lbusername" style="width: 237px; height: 20px">Username</td>
        <td style="height: 20px; width: 34px">
            <asp:TextBox ID="tbusername" runat="server" Width="158px" OnTextChanged="tbusername_TextChanged"></asp:TextBox>
        </td>
        <td style="height: 20px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please enter username" ForeColor="#CC0000" ControlToValidate="tbusername"></asp:RequiredFieldValidator>
        </td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td id="lbpassword" style="width: 237px">Password</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbpassword" runat="server" TextMode="Password" Width="158px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter password" ForeColor="#CC0000" ControlToValidate="tbpassword"></asp:RequiredFieldValidator>
        </td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td id="lbconfirm" style="width: 237px; height: 20px">Confirm password</td>
        <td style="height: 20px; width: 34px">
            <asp:TextBox ID="tbconfirm" runat="server" TextMode="Password" Width="158px"></asp:TextBox>
        </td>
        <td style="height: 20px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please enter confirm password." ForeColor="#CC0000" ControlToValidate="tbconfirm"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbpassword" ControlToValidate="tbconfirm" ErrorMessage="Both password must be same" ForeColor="#CC0000"></asp:CompareValidator>
            .</td>
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
