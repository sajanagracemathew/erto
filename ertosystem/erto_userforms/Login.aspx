<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ertosystem.erto_userforms.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style21 {
            height: 82px;
            width: 207px;
            background-color: #FFFFFF;
        }
        .auto-style37 {
            height: 40px;
            width: 207px;
            background-color: #FFFFFF;
        }
        .auto-style41 {
            height: 26px;
            width: 207px;
            background-color: #FFFFFF;
        }
        .auto-style45 {
            height: 37px;
            width: 207px;
            background-color: #FFFFFF;
        }
        .auto-style49 {
            height: 23px;
            width: 207px;
            background-color: #FFFFFF;
        }
        .auto-style50 {
            width: 649px;
        }
        .auto-style52 {
            height: 40px;
            width: 679px;
            background-color: #FFFFFF;
        }
        .auto-style53 {
            height: 26px;
            width: 679px;
            background-color: #FFFFFF;
        }
        .auto-style54 {
            height: 37px;
            width: 679px;
            background-color: #FFFFFF;
        }
        .auto-style55 {
            height: 23px;
            width: 679px;
            background-color: #FFFFFF;
        }
        .auto-style56 {
            height: 82px;
            width: 679px;
            background-color: #FFFFFF;
        }
        </style>
    <style type="text/css">
    #wrapper {
        width:382px;
        margin:0 0px 0 auto;
        font-family:Verdana, sans-serif;
        height: 264px;
    }
    legend {
        color:#0481b1;
        font-size:16px;
        padding:0 10px;
        background:#fff;
        -moz-border-radius:4px;
        box-shadow: 0 1px 5px rgba(4, 129, 177, 0.5);
        padding:5px 10px;
        text-transform:uppercase;
        font-family:Helvetica, sans-serif;
        font-weight:bold;
    }
    fieldset {
        border-radius:4px;
        background: #fff; 
        background: -moz-linear-gradient(#fff, #f9fdff);
        background: -o-linear-gradient(#fff, #f9fdff);
        background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#fff), to(#f9fdff)); /
        background: #fff;
        padding:20px;
        height: 215px;
        width: 381px;
    }
    input,
    textarea {
        color: #373737;
        background: #fff;
        border: 1px solid #CCCCCC;
        color: #aaa;
        font-size: 14px;
        line-height: 1.2em;
        margin-bottom:15px;

        -moz-border-radius:4px;
        -webkit-border-radius:4px;
        border-radius:4px;
        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1) inset, 0 1px 0 rgba(255, 255, 255, 0.2);
    }
    input[type="text"],
    input[type="password"]{
        padding: 8px 6px;
        height: 22px;
        width:280px;
    }
    input[type="text"]:focus,
    input[type="password"]:focus {
        background:#f5fcfe;
        text-indent: 0;
        z-index: 1;
        color: #373737;
        -webkit-transition-duration: 400ms;
        -webkit-transition-property: width, background;
        -webkit-transition-timing-function: ease;
        -moz-transition-duration: 400ms;
        -moz-transition-property: width, background;
        -moz-transition-timing-function: ease;
        -o-transition-duration: 400ms;
        -o-transition-property: width, background;
        -o-transition-timing-function: ease;
        width: 380px;
        
        border-color:#ccc;
        box-shadow:0 0 5px rgba(4, 129, 177, 0.5);
        opacity:0.6;
    }
    input[type="submit"]{
        background: #222;
        border: none;
        text-shadow: 0 -1px 0 rgba(0,0,0,0.3);
        text-transform:uppercase;
        color: #eee;
        cursor: pointer;
        font-size: 15px;
        margin: 5px 0;
        padding: 5px 22px;
        -moz-border-radius: 4px;
        border-radius: 4px;
        -webkit-border-radius:4px;
        -webkit-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        -moz-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
    }
    textarea {
        padding:3px;
        width:96%;
        height:100px;
    }
    textarea:focus {
        background:#ebf8fd;
        text-indent: 0;
        z-index: 1;
        color: #373737;
        opacity:0.6;
        box-shadow:0 0 5px rgba(4, 129, 177, 0.5);
        border-color:#ccc;
    }
    .small {
        line-height:14px;
        font-size:12px;
        color:#999898;
        margin-bottom:3px;
    }
    #form1 {
        height: 248px;
        width: 366px;
        margin-right: 4px;
        margin-bottom: 0px;
    }
        .auto-style65 {
            height: 40px;
            width: 748px;
            background-color: #FFFFFF;
        }
        .auto-style66 {
            height: 26px;
            width: 748px;
            background-color: #FFFFFF;
        }
        .auto-style67 {
            height: 37px;
            width: 748px;
            background-color: #FFFFFF;
        }
        .auto-style68 {
            height: 23px;
            width: 748px;
            background-color: #FFFFFF;
        }
        .auto-style69 {
            height: 82px;
            width: 748px;
            background-color: #FFFFFF;
        }
        .auto-style70 {
            font-weight: bold;
            text-align: center;
            margin-left: 90;
            margin-top: 13px;
        }
        .auto-style74 {
            height: 73px;
            width: 748px;
            background-color: #FFFFFF;
        }
        .auto-style75 {
            height: 73px;
            width: 679px;
            background-color: #FFFFFF;
        }
        .auto-style76 {
            height: 73px;
            width: 207px;
            background-color: #FFFFFF;
        }
        .auto-style77 {
            height: 55px;
            width: 748px;
            background-color: #FFFFFF;
        }
        .auto-style78 {
            height: 55px;
            width: 679px;
            background-color: #FFFFFF;
        }
        .auto-style79 {
            height: 55px;
            width: 207px;
            background-color: #FFFFFF;
        }
        .auto-style80 {
            text-align: right;
        }
        .auto-style81 {
            width: 100%;
            height: 586px;
            margin-bottom: 0px;
        }
        .auto-style82 {
            text-align: left;
        }
        .auto-style83 {
            width: 361px;
            height: 245px;
        }
        .auto-style84 {
            width: 377px;
            height: 306px;
            margin-top: 0px;
        }
        </style>
</head>
<body style="height: 633px">
    
       
        <table class="auto-style81">
            <tr>
                <td class="auto-style77"></td>
                <td rowspan="8" style="border-style: none; border-color: #00D0F1; background-color: #999999" class="auto-style50">
                    <div id="warpper">
                        <form id="form2" runat="server" class="auto-style84">
                            <fieldset class="auto-style83">
                    <legend><div><strong>LogIn</strong></div></legend>
                    <div><asp:Label ID="lbloginusername" runat="server" Text=" Username"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="tbloginusername" runat="server" Height="16px" Width="264px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbloginusername" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator></div>
                    
                   <div><asp:Label ID="lbloginpassword" runat="server" Text="Password"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="tbloginpassword" runat="server" TextMode="Password" Height="16px" Width="263px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbloginpassword" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator></div> 
                    <div class="auto-style82"> 
                                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#CC0000" NavigateUrl="~/erto_userforms/forgetpassword.aspx">Forgot Password?</asp:HyperLink>
                                </div>
                   <div class="auto-style80"> <strong>
                    <asp:Button ID="Login_btn" runat="server" CssClass="auto-style70" OnClick="Login_btn_Click" Text="Login" Width="100px" Height="31px" />
                    </strong></div>
                   <div> <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label></div>
                                </fieldset>
                            </form>
                        </div>
                    
                    
         
                </td>
                <td class="auto-style78"></td>
                <td class="auto-style79"></td>
            </tr>
            <tr>
                <td class="auto-style74"></td>
                <td class="auto-style75"></td>
                <td class="auto-style76"></td>
            </tr>
            <tr>
                <td class="auto-style65"></td>
                <td class="auto-style52"></td>
                <td class="auto-style37"></td>
            </tr>
            <tr>
                <td class="auto-style66"></td>
                <td class="auto-style53"></td>
                <td class="auto-style41"></td>
            </tr>
            <tr>
                <td class="auto-style69"></td>
                <td class="auto-style56"></td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style67"></td>
                <td class="auto-style54"></td>
                <td class="auto-style45"></td>
            </tr>
            <tr>
                <td class="auto-style68"></td>
                <td class="auto-style55"></td>
                <td class="auto-style49"></td>
            </tr>
            <tr>
                <td class="auto-style69"></td>
                <td class="auto-style56"></td>
                <td class="auto-style21"></td>
            </tr>
        </table>
    
</body>
</html>
