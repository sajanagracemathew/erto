<%@ Page Title="" Language="C#" MasterPageFile="~/erto_adminforms/Site1.Master" AutoEventWireup="true" CodeBehind="Rto_reg.aspx.cs" Inherits="ertosystem.erto_adminforms.Rto_reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 34px;
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            width: 135px;
        }
        .auto-style5 {
            height: 22px;
            width: 135px;
        }
        .auto-style6 {
            height: 27px;
            width: 135px;
        }
        .auto-style7 {
            height: 20px;
            width: 135px;
        }
        .auto-style8 {
            height: 31px;
            width: 135px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td class="auto-style4">&nbsp;</td>
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
        <td class="auto-style5"></td>
        <td style="height: 22px; width: 34px"></td>
        <td style="height: 22px">&nbsp;</td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
    </tr>
    <tr>
        <td id="lbrtoname" class="auto-style4">Name</td>
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
        <td id="lbrtodob" class="auto-style4">DOB</td>
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
        <td id="lbrtoaddress" class="auto-style4">Address</td>
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
        <td id="lbrtomobile" class="auto-style5">Mobile number</td>
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
        <td id="lbrtoemail" class="auto-style4">Email</td>
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
        <td id="lbrtodoj" class="auto-style4">Date of Join</td>
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
        <td id="lbrtophoto" class="auto-style6">Photo</td>
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
        <td id="lbrtousername" class="auto-style7">Username</td>
        <td style="height: 20px; width: 34px" id="rtoid">
            <asp:Label ID="rtoid" runat="server"></asp:Label>
        </td>
        <td style="height: 20px">
            &nbsp;</td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td id="lbrtopassword" class="auto-style4">Password</td>
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
        <td id="lbrtoconfirm" class="auto-style7">&nbsp;</td>
        <td style="height: 20px; width: 34px">
            &nbsp;</td>
        <td style="height: 20px">
            &nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td style="height: 20px; width: 34px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center;" class="auto-style7">
            <asp:Button ID="submit1_btn" runat="server" Text="SUBMIT" Width="67px" OnClick="submit1_btn_Click" />
        </td>
        <td style="text-align: center;" class="auto-style2">
            <asp:Button ID="send_btn" runat="server" Text="SEND" Width="61px" />
        </td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td class="auto-style7"></td>
        <td style="width: 34px; height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td style="height: 20px; width: 34px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td style="height: 31px; width: 34px"></td>
        <td style="height: 31px"></td>
        <td style="height: 31px"></td>
        <td style="height: 31px"></td>
        <td style="height: 31px"></td>
    </tr>
</table>
</asp:Content>

   



