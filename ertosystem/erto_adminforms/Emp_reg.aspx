<%@ Page Title="" Language="C#" MasterPageFile="~/erto_adminforms/Site1.Master" AutoEventWireup="true" CodeBehind="Emp_reg.aspx.cs" Inherits="ertosystem.erto_adminforms.Emp_reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 137px;
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            text-align: center;
            height: 20px;
            width: 137px;
        }
        .auto-style5 {
            width: 162px;
        }
        .auto-style6 {
            height: 22px;
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
        .auto-style11 {
            text-align: center;
            font-weight: 700;
            font-size: medium;
        }
        .auto-style20 {
            height: 25px;
            width: 162px;
        }
        .auto-style21 {
            width: 137px;
            height: 25px;
        }
        .auto-style22 {
            height: 25px;
        }
        .auto-style26 {
            width: 137px;
            height: 32px;
        }
        .auto-style27 {
            width: 162px;
            height: 32px;
        }
        .auto-style28 {
            height: 32px;
        }
        .auto-style29 {
            width: 137px;
        }
        .auto-style30 {
            height: 22px;
            width: 137px;
        }
        .auto-style31 {
            height: 31px;
            width: 137px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style29">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center" style="text-align: center">&nbsp;</td>
        <td class="auto-style11" colspan="2" style="text-align: center"><strong>Employee Registration</strong></td>
        <td colspan="1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style6"></td>
        <td class="auto-style30"></td>
        <td style="height: 22px">&nbsp;</td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
        <td style="height: 22px"></td>
    </tr>
    <tr>
        <td id="lbempname" class="auto-style20"></td>
        <td id="lbempname" class="auto-style20">Name</td>
        <td class="auto-style21">
            <asp:TextBox ID="tbempname" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter name" ForeColor="#CC0000" ControlToValidate="tbempname"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
    </tr>
    <tr>
        <td id="lbempdob" class="auto-style20"></td>
        <td id="lbempdob" class="auto-style20">DOB</td>
        <td class="auto-style21">
            <asp:TextBox ID="tbempdob" runat="server" Width="158px" TextMode="Date"></asp:TextBox>
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter date of birth" ForeColor="#CC0000" ControlToValidate="tbempdob"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
    </tr>
    <tr>
        <td id="lbempdob" class="auto-style27"></td>
        <td id="lbempdob" class="auto-style27">
            <asp:Label ID="lbempgender" runat="server" Text="Gender"></asp:Label>
        </td>
        
        <td class="auto-style26">
            <asp:RadioButton ID="rbempmale" runat="server" Text="Male" />
            <asp:RadioButton ID="rbempfemale" runat="server" Text="Female" />
            </td>
        <td class="auto-style28">
            </td>
        <td class="auto-style28"></td>
        <td class="auto-style28"></td>
        <td class="auto-style28"></td>
    </tr>
    <tr>
        <td id="lbempaddress" class="auto-style20"></td>
        <td id="lbempaddress" class="auto-style20">Address</td>
        <td class="auto-style21">
            <asp:TextBox ID="tbempaddress" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter address" ForeColor="#CC0000" ControlToValidate="tbempaddress"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
    </tr>
    <tr>
        <td id="lbempmobile" class="auto-style20"></td>
        <td id="lbempmobile" class="auto-style20">Mobile number</td>
        <td class="auto-style21">
            <asp:TextBox ID="tbempmobile" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter mobile number" ForeColor="#CC0000" ControlToValidate="tbempmobile"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
    </tr>
    <tr>
        <td id="lbempemail" class="auto-style20"></td>
        <td id="lbempemail" class="auto-style20">Email</td>
        <td class="auto-style21">
            <asp:TextBox ID="tbempemail" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter email." ForeColor="#CC0000" ControlToValidate="tbempemail"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbempemail" ErrorMessage="Enter a valid email id." ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
    </tr>
    <tr>
        <td id="lbempqual" class="auto-style20"></td>
        <td id="lbempqual" class="auto-style20">Educational Qualification</td>
        <td class="auto-style21">
            <asp:TextBox ID="tbempqual" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please enter qualification" ControlToValidate="tbempqual" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
    </tr>
        <tr>
        <td id="lbempdoj" class="auto-style20"></td>
        <td id="lbempdoj" class="auto-style20">Date of Join</td>
        <td class="auto-style21">
            <asp:TextBox ID="tbempdoj" runat="server" Width="158px" TextMode="Date"></asp:TextBox>
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter date of join" ForeColor="#CC0000" ControlToValidate="tbempdoj"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
    </tr>
    <tr>
        <td id="lbempphoto" class="auto-style20"></td>
        <td id="lbempphoto" class="auto-style20">Photo</td>
        <td class="auto-style21">
            <asp:FileUpload ID="FileUpload3" runat="server" Width="158px" Height="27px" />
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please upload photo" ForeColor="#CC0000" ControlToValidate="FileUpload3"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
    </tr>
    <tr>
        <td id="lbempusername" class="auto-style20"></td>
        <td id="lbempusername" class="auto-style20">Username</td>
        <td class="auto-style21">
            <asp:Label ID="empid" runat="server"></asp:Label>
        </td>
        <td class="auto-style22">
            </td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
    </tr>
    <tr>
        <td id="lbemppassword" class="auto-style20"></td>
        <td id="lbemppassword" class="auto-style20">Password</td>
        <td class="auto-style21">
            <asp:TextBox ID="tbemppassword" runat="server" TextMode="Password" Width="158px"></asp:TextBox>
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter password" ForeColor="#CC0000" ControlToValidate="tbemppassword"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
    </tr>
    
    <tr>
        <td style="text-align: center;" class="auto-style8">
            &nbsp;</td>
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
            &nbsp;</td>
        <td class="auto-style9">
            <asp:Button ID="submit2_btn" runat="server" OnClick="submit2_btn_Click" Text="SUBMIT" />
        </td>
        <td class="auto-style4">
            <asp:Button ID="send2_btn" runat="server" Text="SEND" Width="59px" />
        </td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style10"></td>
        <td class="auto-style31"></td>
        <td style="height: 31px"></td>
        <td style="height: 31px"></td>
        <td style="height: 31px"></td>
        <td style="height: 31px"></td>
    </tr>
</table>
</asp:Content>
