<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ertosystem.erto_homeforms.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 235px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 235px;
            height: 23px;
        }
        .auto-style7 {
            height: 208px;
        }
        .auto-style8 {
            width: 235px;
            height: 208px;
        }
        .auto-style9 {
            width: 403px;
        }
        .auto-style10 {
            height: 23px;
            width: 403px;
        }
        .auto-style11 {
            height: 208px;
            width: 403px;
        }
        .auto-style12 {
            margin-top: 0px;
        }
        .auto-style13 {
            margin-left: 14px;
        }
        .auto-style14 {
            margin-left: 5px;
            margin-top: 10px;
        }
        .auto-style15 {
            height: 14px;
            width: 252px;
        }
        .auto-style17 {
            height: 24px;
            width: 252px;
        }
        .auto-style18 {
            height: 163px;
            width: 272px;
        }
        .auto-style20 {
            width: 252px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style10"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Login ID="Login1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style12" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="163px" TextLayout="TextOnTop" Width="283px">
                        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                        <LayoutTemplate>
                            <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;">
                                <tr>
                                    <td>
                                        <table cellpadding="0" class="auto-style18">
                                            <tr>
                                                <td align="center" class="auto-style17" style="color:White;background-color:#990000;font-size:0.9em;font-weight:bold;">Log In</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style20">
                                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                                    <asp:TextBox ID="UserName" runat="server" CssClass="auto-style14" Font-Size="0.8em" Height="17px" Width="112px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style15"></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style20">
                                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                                    <asp:TextBox ID="Password" runat="server" CssClass="auto-style13" Font-Size="0.8em" Height="17px" TextMode="Password" Width="111px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style20">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style20">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="auto-style20" style="color:Red;">
                                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False" Text="Forgot Password?"></asp:Literal>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" class="auto-style20">
                                                    <asp:Button ID="LoginButton" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" Text="Log In" ValidationGroup="Login1" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
                        <TextBoxStyle Font-Size="0.8em" />
                        <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                    </asp:Login>
                </td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
