<%@ Page Title="" Language="C#" MasterPageFile="~/erto_adminforms/Site1.Master" AutoEventWireup="true" CodeBehind="Emp_reg.aspx.cs" Inherits="ertosystem.erto_adminforms.Emp_reg" %>
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
            text-align: center;
        }
        .auto-style5 {
            width: 162px;
        }
        .auto-style6 {
            height: 22px;
            width: 162px;
        }
        .auto-style7 {
            height: 27px;
            width: 162px;
        }
        .auto-style8 {
            height: 20px;
            width: 162px;
        }
        .auto-style9 {
            text-align: center;
            height: 20px;
            width: 162px;
        }
        .auto-style10 {
            height: 31px;
            width: 162px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td style="width: 34px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center" colspan="2" style="text-align: center"><strong>EMPLOYEE REGISTRATION</strong></td>
        <td colspan="1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td style="height: 22px; width: 34px"></td>
        <td style="height: 22px">&nbsp;</td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
    </tr>
    <tr>
        <td id="lbempname" class="auto-style5">Name</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbempname" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter name" ForeColor="#CC0000" ControlToValidate="tbempname"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbempdob" class="auto-style5">DOB</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbempdob" runat="server" Width="158px" TextMode="Date"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter date of birth" ForeColor="#CC0000" ControlToValidate="tbempdob"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbempaddress" class="auto-style5">Address</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbempaddress" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter address" ForeColor="#CC0000" ControlToValidate="tbempaddress"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbempmobile" class="auto-style6">Mobile number</td>
        <td style="width: 34px; height: 22px">
            <asp:TextBox ID="tbempmobile" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td style="height: 22px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter mobile number" ForeColor="#CC0000" ControlToValidate="tbempmobile"></asp:RequiredFieldValidator>
        </td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
    </tr>
    <tr>
        <td id="lbempemail" class="auto-style5">Email</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbempemail" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter email." ForeColor="#CC0000" ControlToValidate="tbempemail"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbempemail" ErrorMessage="Enter a valid email id." ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbempqual" class="auto-style5">Educational Qualification</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbempqual" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please enter qualification" ControlToValidate="tbempqual" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
        <tr>
        <td id="lbempdoj" class="auto-style5">Date of Join</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbempdoj" runat="server" Width="158px" TextMode="Date"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter date of join" ForeColor="#CC0000" ControlToValidate="tbempdoj"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="lbempphoto" class="auto-style7">Photo</td>
        <td style="width: 34px; height: 27px;">
            <asp:FileUpload ID="FileUpload3" runat="server" Width="158px" Height="27px" />
        </td>
        <td style="height: 27px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please upload photo" ForeColor="#CC0000" ControlToValidate="FileUpload3"></asp:RequiredFieldValidator>
        </td>
        <td style="height: 27px"></td>
        <td style="height: 27px"></td>
        <td style="height: 27px"></td>
    </tr>
    <tr>
        <td id="lbempusername" class="auto-style8">Username</td>
        <td style="height: 20px; width: 34px">
            <asp:Label ID="empid" runat="server"></asp:Label>
        </td>
        <td style="height: 20px">
            &nbsp;</td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td id="lbemppassword" class="auto-style5">Password</td>
        <td style="width: 34px">
            <asp:TextBox ID="tbemppassword" runat="server" TextMode="Password" Width="158px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter password" ForeColor="#CC0000" ControlToValidate="tbemppassword"></asp:RequiredFieldValidator>
        </td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    
    <tr>
        <td style="text-align: center;" class="auto-style8">
            &nbsp;</td>
        <td style="text-align: center;" class="auto-style2">
            &nbsp;</td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td class="auto-style9">
            <asp:Button ID="submit2_btn" runat="server" OnClick="submit2_btn_Click" Text="SUBMIT" />
        </td>
        <td style="width: 34px; height: 20px" class="auto-style4">
            <asp:Button ID="send2_btn" runat="server" Text="SEND" Width="59px" />
        </td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td style="height: 20px; width: 34px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td style="height: 31px; width: 34px"></td>
        <td style="height: 31px"></td>
        <td style="height: 31px"></td>
        <td style="height: 31px"></td>
        <td style="height: 31px"></td>
    </tr>
</table>
</asp:Content>
