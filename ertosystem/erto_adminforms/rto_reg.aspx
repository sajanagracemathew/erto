<%@ Page Title="" Language="C#" MasterPageFile="~/erto_adminforms/Site1.Master" AutoEventWireup="true" CodeBehind="Rto_reg.aspx.cs" Inherits="ertosystem.erto_adminforms.Rto_reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 190px;
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            width: 182px;
        }
        .auto-style5 {
            height: 22px;
            width: 182px;
        }
        .auto-style6 {
            height: 27px;
            width: 182px;
        }
        .auto-style7 {
            height: 20px;
            width: 182px;
        }
        .auto-style8 {
            height: 31px;
            width: 182px;
        }
        .auto-style9 {
            width: 1511px;
        }
        .auto-style10 {
            width: 190px;
        }
        .auto-style11 {
            height: 22px;
            width: 190px;
        }
        .auto-style12 {
            height: 27px;
            width: 190px;
        }
        .auto-style13 {
            height: 31px;
            width: 190px;
        }
        .auto-style14 {
            font-size: large;
            color: #000000;
        }
        .auto-style15 {
            height: 28px;
        }
        .auto-style16 {
            height: 28px;
            width: 182px;
        }
        .auto-style17 {
            height: 28px;
            width: 190px;
        }
        .auto-style18 {
            width: 183px;
        }
        .auto-style19 {
            height: 22px;
            width: 183px;
        }
        .auto-style20 {
            height: 28px;
            width: 183px;
        }
        .auto-style21 {
            height: 27px;
            width: 183px;
        }
        .auto-style22 {
            height: 20px;
            width: 183px;
        }
        .auto-style23 {
            height: 31px;
            width: 183px;
        }
        .auto-style24 {
            text-align: center;
            font-weight: 700;
            width: 182px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style9">
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style18">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style24" style="text-align: center">&nbsp;</td>
        <td class="auto-style14" colspan="2" style="text-align: center"><strong style="color: #666666">RTO Officer Registration</strong></td>
        <td colspan="1">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style19"></td>
        <td class="auto-style11"></td>
        <td style="height: 22px">&nbsp;</td>
    </tr>
    <tr>
        <td id="lbrtoname" class="auto-style16"></td>
        <td id="lbrtoname" class="auto-style20">Name</td>
        <td class="auto-style17">
            <asp:TextBox ID="tbrtoname" runat="server" Width="165px"></asp:TextBox>
        </td>
        <td class="auto-style15">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter name" ForeColor="#CC0000" ControlToValidate="tbrtoname"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbrtodob" class="auto-style16"></td>
        <td id="lbrtodob" class="auto-style20">DOB</td>
        <td class="auto-style17">
            <asp:TextBox ID="tbrtodob" runat="server" Width="165px" TextMode="Date"></asp:TextBox>
        </td>
        <td class="auto-style15">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter date of birth" ForeColor="#CC0000" ControlToValidate="tbrtodob"></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td id="lbrtodob" class="auto-style4">
            &nbsp;</td>
        <td id="lbrtodob" class="auto-style18">
            <asp:Label ID="lbrtogender" runat="server" Text="Gender"></asp:Label>
        </td>
        <td class="auto-style10">
            <asp:RadioButton ID="rbrtomale" runat="server" Text="Male" />
            <asp:RadioButton ID="rbrtofemale" runat="server" Text="Female" />
            </td>
        <td>
            &nbsp;</td>
    </tr>

    <tr>
        <td id="lbrtoaddress" class="auto-style16"></td>
        <td id="lbrtoaddress" class="auto-style20">Address</td>
        <td class="auto-style17">
            <asp:TextBox ID="tbrtoaddress" runat="server" Width="165px"></asp:TextBox>
        </td>
        <td class="auto-style15">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter address" ForeColor="#CC0000" ControlToValidate="tbrtoaddress"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbrtomobile" class="auto-style16"></td>
        <td id="lbrtomobile" class="auto-style20">Mobile number</td>
        <td class="auto-style17">
            <asp:TextBox ID="tbrtomobile" runat="server" Width="165px"></asp:TextBox>
        </td>
        <td class="auto-style15">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter mobile number" ForeColor="#CC0000" ControlToValidate="tbrtomobile"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbrtoemail" class="auto-style4">&nbsp;</td>
        <td id="lbrtoemail" class="auto-style18">Email</td>
        <td class="auto-style10">
            <asp:TextBox ID="tbrtoemail" runat="server" Width="165px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter email." ForeColor="#CC0000" ControlToValidate="tbrtoemail"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbrtoemail" ErrorMessage="Enter a valid email id." ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
        <tr>
        <td id="lbrtodoj" class="auto-style16"></td>
        <td id="lbrtodoj" class="auto-style20">Date of Join</td>
        <td class="auto-style17">
            <asp:TextBox ID="tbrtodoj" runat="server" Width="165px" TextMode="Date"></asp:TextBox>
        </td>
        <td class="auto-style15">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter date of join" ForeColor="#CC0000" ControlToValidate="tbrtodoj"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbrtophoto" class="auto-style6">&nbsp;</td>
        <td id="lbrtophoto" class="auto-style21">Photo</td>
        <td class="auto-style12">
            <asp:FileUpload ID="FileUpload2" runat="server" Width="165px" Height="27px" />
        </td>
        <td style="height: 27px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please upload photo" ForeColor="#CC0000" ControlToValidate="FileUpload2"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbrtousername" class="auto-style16"></td>
        <td id="lbrtousername" class="auto-style20">Username</td>
        <td id="rtoid" class="auto-style17">
            <asp:TextBox ID="rtoid" runat="server" ReadOnly="True" Width="165px"></asp:TextBox>
        </td>
        <td class="auto-style15">
            </td>
    </tr>
    <tr>
        <td id="lbrtopassword" class="auto-style16"></td>
        <td id="lbrtopassword" class="auto-style20">Password</td>
        <td class="auto-style17">
            <asp:TextBox ID="tbrtopassword" runat="server" TextMode="Password" Width="165px"></asp:TextBox>
        </td>
        <td class="auto-style15">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter password" ForeColor="#CC0000" ControlToValidate="tbrtopassword"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbrtoconfirm" class="auto-style7">&nbsp;</td>
        <td id="lbrtoconfirm" class="auto-style22">&nbsp;</td>
        <td class="auto-style2">
            &nbsp;</td>
        <td style="height: 20px">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style22">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center;" class="auto-style7">
            &nbsp;</td>
        <td style="text-align: center;" class="auto-style22">
            <asp:Button ID="submit1_btn" runat="server" Text="SUBMIT" Width="67px" OnClick="submit1_btn_Click" ForeColor="#666666" />
        </td>
        <td style="text-align: center;" class="auto-style2">
            <asp:Button ID="send_btn" runat="server" Text="SEND" Width="61px" ForeColor="#666666" />
        </td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style22"></td>
        <td class="auto-style2"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style22">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style23"></td>
        <td class="auto-style13"></td>
        <td style="height: 31px"></td>
    </tr>
</table>
</asp:Content>

   



