<%@ Page Title="" Language="C#" MasterPageFile="~/erto_adminforms/Site1.Master"  AutoEventWireup="true" CodeBehind="rto_reg.aspx.cs" Inherits="ertosystem.erto_adminforms.rto_reg" %>
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
        <td class="text-center" colspan="2" style="text-align: center"><strong>RTO OFFICER REGISTRATION</strong></td>
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
        <td id="lbrtoname" style="width: 237px">Name</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbrtoname" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter name" ForeColor="#CC0000" ControlToValidate="tbrtoname"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbrtodob" style="width: 237px">DOB</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbrtodob" runat="server" Width="158px" TextMode="Date"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter date of birth" ForeColor="#CC0000" ControlToValidate="tbrtodob"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbrtoaddress" style="width: 237px">Address</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbrtoaddress" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter address" ForeColor="#CC0000" ControlToValidate="tbrtoaddress"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbrtomobile" style="width: 237px; height: 22px">Mobile number</td>
        <td style="width: 34px; height: 22px">
            <asp:TextBox ID="tbrtomobile" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td style="height: 22px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter mobile number" ForeColor="#CC0000" ControlToValidate="tbrtomobile"></asp:RequiredFieldValidator>
        </td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
    </tr>
    <tr>
        <td id="lbrtoemail" style="width: 237px">Email</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbrtoemail" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter email." ForeColor="#CC0000" ControlToValidate="tbrtoemail"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbrtoemail" ErrorMessage="Enter a valid email id." ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
        <tr>
        <td id="lbrtodoj" style="width: 237px">Date of Join</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbrtodoj" runat="server" Width="158px" TextMode="Date"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter date of join" ForeColor="#CC0000" ControlToValidate="tbrtodoj"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbrtophoto" style="width: 237px; height: 27px;">Photo</td>
        <td style="width: 34px; height: 27px;">
            <asp:FileUpload ID="FileUpload2" runat="server" Width="158px" Height="27px" />
        </td>
        <td style="height: 27px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please upload photo" ForeColor="#CC0000" ControlToValidate="FileUpload2"></asp:RequiredFieldValidator>
        </td>
        <td style="height: 27px"></td>
        <td style="height: 27px"></td>
        <td style="height: 27px"></td>
    </tr>
    <tr>
        <td id="lbrtousername" style="width: 237px; height: 20px">Username</td>
        <td style="height: 20px; width: 34px">
            <asp:TextBox ID="tbrtousername" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td style="height: 20px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please enter username" ForeColor="#CC0000" ControlToValidate="tbrtousername"></asp:RequiredFieldValidator>
        </td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td id="lbrtopassword" style="width: 237px">Password</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbrtopassword" runat="server" TextMode="Password" Width="158px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter password" ForeColor="#CC0000" ControlToValidate="tbrtopassword"></asp:RequiredFieldValidator>
        </td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td id="lbrtoconfirm" style="width: 237px; height: 20px">Confirm password</td>
        <td style="height: 20px; width: 34px">
            <asp:TextBox ID="tbrtoconfirm" runat="server" TextMode="Password" Width="158px"></asp:TextBox>
        </td>
        <td style="height: 20px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please enter confirm password." ForeColor="#CC0000" ControlToValidate="tbrtoconfirm"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbrtopassword" ControlToValidate="tbrtoconfirm" ErrorMessage="Both password must be same" ForeColor="#CC0000"></asp:CompareValidator>
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
        <td style="width: 237px; height: 20px; text-align: center;">
            <asp:Button ID="submit1_btn" runat="server" Text="SUBMIT" />
        </td>
        <td style="height: 20px; width: 34px; text-align: center;">
            <asp:Button ID="send_btn" runat="server" Text="SEND" Width="61px" />
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
