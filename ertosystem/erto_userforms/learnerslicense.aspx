<%@ Page Title="" Language="C#" MasterPageFile="~/erto_userforms/Site2.Master" AutoEventWireup="true" CodeBehind="learnerslicense.aspx.cs" Inherits="ertosystem.erto_userforms.learnerslicense" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 199px;
        }
        .auto-style2 {
            width: 190px;
        }
        .auto-style3 {
            width: 182px;
        }
        .auto-style4 {
            width: 199px;
            height: 32px;
        }
        .auto-style5 {
            width: 190px;
            height: 32px;
        }
        .auto-style6 {
            width: 182px;
            height: 32px;
        }
        .auto-style7 {
            height: 32px;
        }
        .auto-style8 {
            width: 190px;
            text-align: center;
        }
        .auto-style9 {
            text-align: left;
            color: #666666;
            height: 35px;
        }
        .auto-style10 {
            width: 182px;
            text-align: center;
        }
        .auto-style12 {
            text-align: left;
            color: #666666;
            width: 159px;
            height: 35px;
        }
        .auto-style13 {
            width: 159px;
        }
        .auto-style14 {
            width: 159px;
            height: 32px;
        }
        .auto-style15 {
            width: 159px;
            height: 51px;
        }
        .auto-style16 {
            width: 199px;
            height: 51px;
        }
        .auto-style17 {
            width: 190px;
            height: 51px;
        }
        .auto-style18 {
            width: 182px;
            height: 51px;
        }
        .auto-style19 {
            height: 51px;
        }
        .auto-style20 {
            width: 159px;
            height: 30px;
        }
        .auto-style21 {
            width: 199px;
            height: 30px;
        }
        .auto-style22 {
            width: 190px;
            text-align: center;
            height: 30px;
        }
        .auto-style23 {
            width: 182px;
            height: 30px;
        }
        .auto-style24 {
            height: 30px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <strong>&nbsp;&nbsp;&nbsp; LEARNER&#39;S LICENSE</strong></p>
    <p>
        &nbsp;&nbsp;
        A candidate is required to appear for test with following documents</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp; 1.Age proof</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp; 2.Address proof</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp; 3.Passport size photographs</p>
    <table class="nav-justified">
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style9" colspan="4"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; APPLY FOR LEARNER&#39;S TEST</strong></td>
        </tr>
        <tr>
            <td class="auto-style15">
                </td>
            <td class="auto-style16">
                <asp:Label ID="lbuserid" runat="server" Text="User_Id"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="tbuserid" runat="server" OnTextChanged="TextBox1_TextChanged" ReadOnly="True" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:Label ID="lbadhar" runat="server" Text="Aadhaar No"></asp:Label>
            </td>
            <td class="auto-style19">
                <asp:TextBox ID="tbadhar" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbadhar" ErrorMessage="Please enter Aadhaar no" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="lbname" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="tbname" runat="server" OnTextChanged="TextBox1_TextChanged" ReadOnly="True" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="lbdob" runat="server" Text="DOB"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="tbdob" runat="server" OnTextChanged="TextBox1_TextChanged" ReadOnly="True" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Age proof/Address proof(ID/Aadhaar card)"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="proofupload" runat="server" Width="150px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="proofupload" ErrorMessage="Please upload proof" ForeColor="#CC0000"></asp:RequiredFieldValidator>
&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="lbaddress" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="tbaddress" runat="server" Height="41px" OnTextChanged="TextBox1_TextChanged" ReadOnly="True" TextMode="MultiLine" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:Label ID="lbdate" runat="server" Text="Date"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="tbdate" runat="server" OnTextChanged="TextBox1_TextChanged" ReadOnly="True" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="lbcentre" runat="server" Text="Test Centre"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddcentre" runat="server" Height="16px" Width="151px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Thiruvananthapuram</asp:ListItem>
                    <asp:ListItem>kollam</asp:ListItem>
                    <asp:ListItem>Pathanamthitta</asp:ListItem>
                    <asp:ListItem>Alappuzha</asp:ListItem>
                    <asp:ListItem>Kottayam</asp:ListItem>
                    <asp:ListItem>Idukki</asp:ListItem>
                    <asp:ListItem>Ernakulam</asp:ListItem>
                    <asp:ListItem>Thrissur</asp:ListItem>
                    <asp:ListItem>Palakkad</asp:ListItem>
                    <asp:ListItem>Malappuram</asp:ListItem>
                    <asp:ListItem>Kozhikode</asp:ListItem>
                    <asp:ListItem>Wayanad</asp:ListItem>
                    <asp:ListItem>Kannur</asp:ListItem>
                    <asp:ListItem>Kasaragod</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddcentre" ErrorMessage="Please select centre" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
            <td class="auto-style21"></td>
            <td class="auto-style22">
                <asp:Button ID="apply_btn" runat="server" ForeColor="#333333" OnClick="apply_btn_Click" Text="Apply" Width="76px" />
            </td>
            <td class="auto-style23">
                </td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
