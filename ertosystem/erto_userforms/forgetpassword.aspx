 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetpassword.aspx.cs" Inherits="ertosystem.erto_userforms.forgetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <center><br /><br aria-setsize="50px" />
            Enter Your Registered Email Id:<asp:TextBox ID="tbemail" runat="server" Width="151px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbemail" ErrorMessage="Please enter mail id" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br /><br /><br/>
            <asp:Button ID="getpass_btn" runat="server" Text="Get Your Password" OnClick="getpass_btn_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="home_btn" runat="server" CssClass="auto-style1" OnClick="home_btn_Click" Text="Home" Width="68px" />
            <br /><br />
            <asp:Label ID="lbmsg" runat="server"></asp:Label>
        </center>
        </div>
    </form>
</body>
</html>
