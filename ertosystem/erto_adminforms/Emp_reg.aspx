<%@ Page Title="" Language="C#" MasterPageFile="~/erto_adminforms/Site1.Master" AutoEventWireup="true" CodeBehind="Emp_reg.aspx.cs" Inherits="ertosystem.erto_adminforms.Emp_reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 20px;
        }
        .auto-style5 {
            width: 224px;
            height: 18px;
        }
        .auto-style6 {
            height: 22px;
            width: 224px;
        }
        .auto-style8 {
            height: 20px;
            width: 224px;
        }
        .auto-style9 {
            text-align: center;
            height: 20px;
            width: 224px;
        }
        .auto-style10 {
            height: 31px;
            width: 224px;
        }
        .auto-style11 {
            text-align: center;
            font-weight: 700;
            font-size: large;
            color: #000000;
        }
        .auto-style20 {
            height: 25px;
            width: 224px;
        }
        .auto-style22 {
            height: 25px;
        }
        .auto-style27 {
            width: 224px;
            height: 32px;
        }
        .auto-style28 {
            height: 32px;
        }
        .auto-style32 {
            width: 1406px;
        }
        .auto-style33 {
            width: 210px;
            height: 18px;
        }
        .auto-style34 {
            height: 22px;
            width: 210px;
        }
        .auto-style35 {
            height: 25px;
            width: 210px;
        }
        .auto-style36 {
            width: 210px;
            height: 32px;
        }
        .auto-style37 {
            height: 20px;
            width: 210px;
        }
        .auto-style38 {
            text-align: center;
            height: 20px;
            width: 210px;
        }
        .auto-style39 {
            height: 31px;
            width: 210px;
        }
        .auto-style40 {
            text-align: center;
            font-weight: 700;
            width: 224px;
        }
        .auto-style41 {
            width: 180px;
            height: 18px;
        }
        .auto-style42 {
            height: 22px;
            width: 180px;
        }
        .auto-style43 {
            height: 25px;
            width: 180px;
        }
        .auto-style44 {
            width: 180px;
            height: 32px;
        }
        .auto-style45 {
            height: 20px;
            width: 180px;
        }
        .auto-style46 {
            text-align: center;
            height: 20px;
            width: 180px;
        }
        .auto-style47 {
            height: 31px;
            width: 180px;
        }
        .auto-style48 {
            height: 18px;
        }
        .auto-style49 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style32">
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style33"></td>
        <td class="auto-style41"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style40" style="text-align: center">&nbsp;</td>
        <td class="auto-style11" colspan="2" style="text-align: center"><strong style="color: #666666">Employee Registration</strong></td>
        <td colspan="1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style34"></td>
        <td class="auto-style42"></td>
        <td class="auto-style49"></td>
    </tr>
    <tr>
        <td id="lbempname" class="auto-style20"></td>
        <td id="lbempname" class="auto-style35">Name</td>
        <td class="auto-style43">
            <asp:TextBox ID="tbempname" runat="server" Width="165px"></asp:TextBox>
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter name" ForeColor="#CC0000" ControlToValidate="tbempname"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbempdob" class="auto-style20"></td>
        <td id="lbempdob" class="auto-style35">DOB</td>
        <td class="auto-style43">
            <asp:TextBox ID="tbempdob" runat="server" Width="165px" TextMode="Date"></asp:TextBox>
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter date of birth" ForeColor="#CC0000" ControlToValidate="tbempdob"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbempdob" class="auto-style27"></td>
        <td id="lbempdob" class="auto-style36">
            <asp:Label ID="lbempgender" runat="server" Text="Gender"></asp:Label>
        </td>
        
        <td class="auto-style44">
            <asp:RadioButton ID="rbempmale" runat="server" Text="Male" />
            <asp:RadioButton ID="rbempfemale" runat="server" Text="Female" />
            </td>
        <td class="auto-style28">
            </td>
    </tr>
    <tr>
        <td id="lbempaddress" class="auto-style20"></td>
        <td id="lbempaddress" class="auto-style35">Address</td>
        <td class="auto-style43">
            <asp:TextBox ID="tbempaddress" runat="server" Width="165px" Height="47px" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter address" ForeColor="#CC0000" ControlToValidate="tbempaddress"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbempmobile" class="auto-style20"></td>
        <td id="lbempmobile" class="auto-style35">Mobile number</td>
        <td class="auto-style43">
            <asp:TextBox ID="tbempmobile" runat="server" Width="165px"></asp:TextBox>
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter mobile number" ForeColor="#CC0000" ControlToValidate="tbempmobile"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbempemail" class="auto-style20"></td>
        <td id="lbempemail" class="auto-style35">Email</td>
        <td class="auto-style43">
            <asp:TextBox ID="tbempemail" runat="server" Width="165px"></asp:TextBox>
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter email." ForeColor="#CC0000" ControlToValidate="tbempemail"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbempemail" ErrorMessage="Enter a valid email id." ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td id="lbempqual" class="auto-style20"></td>
        <td id="lbempqual" class="auto-style35">Educational Qualification</td>
        <td class="auto-style43">
            <asp:TextBox ID="tbempqual" runat="server" Width="165px"></asp:TextBox>
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please enter qualification" ControlToValidate="tbempqual" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
        <td id="lbempdoj" class="auto-style20"></td>
        <td id="lbempdoj" class="auto-style35">Date of Join</td>
        <td class="auto-style43">
            <asp:TextBox ID="tbempdoj" runat="server" Width="165px" TextMode="Date"></asp:TextBox>
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter date of join" ForeColor="#CC0000" ControlToValidate="tbempdoj"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbempphoto" class="auto-style20"></td>
        <td id="lbempphoto" class="auto-style35">Photo</td>
        <td class="auto-style43">
            <asp:FileUpload ID="FileUpload3" runat="server" Width="165px" Height="27px" />
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please upload photo" ForeColor="#CC0000" ControlToValidate="FileUpload3"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td id="lbempusername" class="auto-style20"></td>
        <td id="lbempusername" class="auto-style35">Username</td>
        <td class="auto-style43">
            <asp:TextBox ID="empid" runat="server" ReadOnly="True" Width="165px"></asp:TextBox>
        </td>
        <td class="auto-style22">
            </td>
    </tr>
    <tr>
        <td id="lbemppassword" class="auto-style20"></td>
        <td id="lbemppassword" class="auto-style35">Password</td>
        <td class="auto-style43">
            <asp:TextBox ID="tbemppassword" runat="server" TextMode="Password" Width="165px"></asp:TextBox>
        </td>
        <td class="auto-style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter password" ForeColor="#CC0000" ControlToValidate="tbemppassword"></asp:RequiredFieldValidator>
        </td>
    </tr>
    
    <tr>
        <td style="text-align: center;" class="auto-style8">
            &nbsp;</td>
        <td style="text-align: center;" class="auto-style37">
            &nbsp;</td>
        <td style="text-align: center;" class="auto-style45">
            &nbsp;</td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td class="auto-style9">
            &nbsp;</td>
        <td class="auto-style38">
            <asp:Button ID="submit2_btn" runat="server" OnClick="submit2_btn_Click" Text="SUBMIT" ForeColor="#666666" />
        </td>
        <td class="auto-style46">
            <asp:Button ID="send2_btn" runat="server" Text="SEND" Width="59px" ForeColor="#666666" />
        </td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style37">&nbsp;</td>
        <td class="auto-style45">&nbsp;</td>
        <td style="height: 20px">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style39"></td>
        <td class="auto-style47"></td>
        <td style="height: 31px"></td>
    </tr>
</table>
</asp:Content>
