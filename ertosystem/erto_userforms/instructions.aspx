﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="instructions.aspx.cs" Inherits="ertosystem.erto_userforms.instructions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Test </title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js" type="text/javascript"></script>

        <script>
            function StartTest(popUpPage) {
                window.open(popUpPage, 'null', 'toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=0,fullscreen=yes');
            }
        </script>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>

</head>
<body>
    
    <form id="form1" runat="server">
   <div style=" text-align :center; width:100%">

                        <table width="1000" border="2" cellpadding="10" style="height: 272px" >
                            <tr>
                                <td style="text-align:center;">
                                    <b>
                                       <asp:Label ID="lbstatus" runat="server"
                                       BackColor="Black" BorderColor="Red" Font-Bold="True"
                                       Font-Size="16pt"
                                        ForeColor="#0066FF">CODER BABA Online Test</asp:Label>
                                      </b>
                                    <asp:Label ID="lbtest" runat="server" Text="RTO Test"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;"><b>Start You online Asp.Net Test</b></td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <asp:Button ID="btnStartTest" Text="Start Test" runat="server"
                                        OnClientClick="return StartTest('default2.aspx');"
                                         BorderColor="#FF6600" BorderWidth="4px" Height="43px" Width="142px" />
                                </td>
                            </tr>
                        </table>

            </div>
    </form>
</body>
</html>


