<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="user_reg.aspx.cs" Inherits="ertosystem.erto_userforms.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td style="width: 201px; height: 14px;"></td>
        <td style="width: 185px; height: 14px;"></td>
        <td style="width: 191px; height: 14px;" class="modal-sm"></td>
        <td style="height: 14px"></td>
    </tr>
    <tr>
        <td class="text-center" style="text-align: center; width: 201px;">&nbsp;</td>
        <td class="text-center" colspan="2" style="text-align: center"><strong>&nbsp;<span style="font-size: large; color: #666666;">Registration</span></strong></td>
        <td colspan="1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 201px; height: 24px">&nbsp;</td>
        <td style="width: 185px; height: 24px"></td>
        <td style="height: 24px; width: 191px"></td    padding-top: 0px;>
        <td style="height: 24px"></td>
    </tr>
    <tr>
        <td id="lbname" style="width: 201px; height: 29px;"></td>
        <td id="lbname" style="width: 185px; height: 29px;">
            <asp:Label ID="lbname" runat="server" Text="Name"></asp:Label>
        </td>
        <td style="width: 191px; height: 29px;">
            <asp:TextBox ID="tbname" runat="server" Width="170px" ForeColor="Black"></asp:TextBox>
        </td>
        <td style="height: 29px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter name" ForeColor="#CC0000" ControlToValidate="tbname"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbdob" style="width: 201px; height: 29px;"></td>
        <td id="lbdob" style="width: 185px; height: 29px;">DOB</td>
        <td style="width: 191px; height: 29px;">
            <asp:TextBox ID="tbdob" runat="server" Width="170px" TextMode="Date" ForeColor="Black"></asp:TextBox>
        </td>
        <td style="height: 29px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter date of birth" ForeColor="#CC0000" ControlToValidate="tbdob"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbdob" style="width: 201px; height: 27px;"></td>
        <td id="lbdob" style="width: 185px; height: 27px;">
            <asp:Label ID="lbgender" runat="server" Text="Gender"></asp:Label>
        </td>
        <td style="width: 191px; height: 27px;">
            <asp:RadioButton ID="rbmale" runat="server" Text="Male" />
            <asp:RadioButton ID="rbfemale" runat="server" Text="Female" />
        </td>
        <td style="height: 27px">
            &nbsp;</td>
    </tr>
    <tr>
        <td id="lbaddress" style="width: 201px; height: 29px;"></td>
        <td id="lbaddress" style="width: 185px; height: 29px;">Address</td>
        <td style="width: 191px; height: 29px;">
            <asp:TextBox ID="tbaddress" runat="server" Width="170px" ForeColor="Black" Height="51px" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td style="height: 29px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter address" ForeColor="#CC0000" ControlToValidate="tbaddress"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbcity" style="width: 201px; height: 29px;"></td>
        <td id="lbcity" style="width: 185px; height: 29px;">City</td>
        <td style="width: 191px; height: 29px;">
            <asp:TextBox ID="tbcity" runat="server" Width="170px" ForeColor="Black"></asp:TextBox>
        </td>
        <td style="height: 29px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter city" ForeColor="#CC0000" ControlToValidate="tbcity"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbmobile" style="width: 201px; height: 29px"></td>
        <td id="lbmobile" style="width: 185px; height: 29px">Mobile number</td>
        <td style="width: 191px; height: 29px">
            <asp:TextBox ID="tbmobile" runat="server" Width="170px" ForeColor="Black"></asp:TextBox>
        </td>
        <td style="height: 29px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter mobile number" ForeColor="#CC0000" ControlToValidate="tbmobile"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbemail" style="width: 201px; height: 6px;"></td>
        <td id="lbemail" style="width: 185px; height: 6px;">Email</td>
        <td style="width: 191px; height: 6px;">
            <asp:TextBox ID="tbemail" runat="server" Width="170px" ForeColor="Black"></asp:TextBox>
        </td>
        <td style="height: 6px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter email." ForeColor="#CC0000" ControlToValidate="tbemail"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbemail" ErrorMessage="Enter a valid email id." ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td id="lbphoto" style="width: 201px; height: 27px;"></td>
        <td id="lbphoto" style="width: 185px; height: 27px;">Photo</td>
        <td style="width: 191px; height: 27px;">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="170px" Height="27px" ForeColor="Black" />
        </td>
        <td style="height: 27px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please upload photo" ForeColor="#CC0000" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbusername" style="width: 201px; height: 29px"></td>
        <td id="lbusername" style="width: 185px; height: 29px">Username</td>
        <td style="height: 29px; width: 191px">
            <asp:TextBox ID="tbusername" runat="server" Width="170px" ForeColor="Black"></asp:TextBox>
        </td>
        <td style="height: 29px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please enter username" ForeColor="#CC0000" ControlToValidate="tbusername"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbpassword" style="width: 201px; height: 30px;"></td>
        <td id="lbpassword" style="width: 185px; height: 30px;">Password</td>
        <td style="width: 191px; height: 30px;">
            <asp:TextBox ID="tbpassword" runat="server" TextMode="Password" Width="170px" ForeColor="Black"></asp:TextBox>
        </td>
        <td style="height: 30px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter password" ForeColor="#CC0000" ControlToValidate="tbpassword"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbconfirm" style="width: 201px; height: 20px">&nbsp;</td>
        <td id="lbconfirm" style="width: 185px; height: 20px">Confirm password</td>
        <td style="height: 20px; width: 191px">
            <asp:TextBox ID="tbconfirm" runat="server" TextMode="Password" Width="170px" ForeColor="Black"></asp:TextBox>
        </td>
        <td style="height: 20px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please enter confirm password." ForeColor="#CC0000" ControlToValidate="tbconfirm"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbpassword" ControlToValidate="tbconfirm" ErrorMessage="Both password must be same" ForeColor="#CC0000"></asp:CompareValidator>
            </td>
    </tr>
    <tr>
        <td style="width: 201px; height: 20px">&nbsp;</td>
        <td style="width: 185px; height: 20px">&nbsp;</td>
        <td style="height: 20px; width: 191px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 201px; height: 20px">&nbsp;</td>
        <td style="width: 185px; height: 20px">&nbsp;</td>
        <td style="height: 20px; width: 191px">
            <asp:Button ID="submit_btn" runat="server" Text="SUBMIT" Width="77px" OnClick="submit_btn_Click" ForeColor="#666666" />
        </td>
        <td style="height: 20px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 201px; height: 20px">&nbsp;</td>
        <td style="width: 185px; height: 20px">&nbsp;</td>
        <td style="width: 191px; height: 20px">
            <asp:Label ID="lbsuccess" runat="server" style="color: #009900"></asp:Label>
        </td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td style="width: 201px; height: 20px">&nbsp;</td>
        <td style="width: 185px; height: 20px">&nbsp;</td>
        <td style="width: 191px; height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
    </tr>
    </table>
</asp:Content>
