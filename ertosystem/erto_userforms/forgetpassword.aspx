 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetpassword.aspx.cs" Inherits="ertosystem.erto_userforms.forgetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <center><br /><br aria-setsize="50px" />
            Enter Your Register Email Id:<asp:TextBox ID="tbemail" runat="server" Width="151px"></asp:TextBox><br /><br /><br/>
            <asp:Button ID="getpass_btn" runat="server" Text="Get Your Password" OnClick="getpass_btn_Click"></asp:Button><br /><br />
            <asp:Label ID="lbmsg" runat="server"></asp:Label>
        </center>
        </div>
    </form>
</body>
</html>
