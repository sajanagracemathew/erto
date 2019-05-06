<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testInstructions.aspx.cs" Inherits="ertosystem.testInstructions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Test </title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js" type="text/javascript"></script>

        <script>
            function StartTest(popUpPage) {
                window.open(popUpPage, 'null', 'toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=0,fullscreen=1');
            }
        </script>
   
    <style type="text/css">
        .auto-style1 {
            width: 1021px;
        }
        .auto-style2 {
            width: 1021px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style3 {
            font-weight: normal;
        }
        .auto-style4 {
            font-size: medium;
        }
        .auto-style5 {
            width: 108%;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
   <div style=" text-align :center; " class="auto-style5">  
                
                        <table width="1000" border="2" cellpadding="10" style="height: 272px" >  
                            <tr>  
                                <td style="text-align:center;" class="auto-style1">  
                                    <b>  
                                       <asp:Label ID="lbstatus" runat="server" 
                                       BackColor="#3333CC" BorderColor="Red" Font-Bold="True" 
                                       Font-Size="16pt" 
                                        ForeColor="White">RTO Test</asp:Label>  
                                      </b>  
                                </td>  
                            </tr>  
                            <tr>  
                                <td class="auto-style2">Instructions About this Test: <br />
                                    <span class="auto-style3"><span class="auto-style4">Total of 20 questions.</span><br class="auto-style4" />
                                    <span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The time limit is 20 minutes.</span><br class="auto-style4" />
                                    <span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Click the &quot;Submit&quot; button to submit your test.</span></span></td>  
                            </tr>  
                            <tr>  

                                <td style="text-align: center;" class="auto-style1">  
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                                    <asp:Button ID="btnStartTest" Text="Start Test" runat="server" 
                                        OnClientClick="return StartTest('default2.aspx');"
                                         BorderColor="#FF6600" BorderWidth="4px" Height="43px" Width="142px" OnClick="btnStartTest_Click" />  
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="home_btn" runat="server" Height="28px" OnClick="home_btn_Click" Text="Home" Width="77px" />
                                </td>  
                            </tr>  
                        </table>  
                  
            </div>  
    </form>
</body>
</html>
