<%@ Page Title="" Language="C#" MasterPageFile="~/erto_userforms/Site2.Master" AutoEventWireup="true" CodeBehind="vehicle_reg.aspx.cs" Inherits="ertosystem.erto_userforms.vehicle_reg1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            width: 241px;
            height: 29px;
        }
        .auto-style3 {
            width: 241px;
        }
        .auto-style4 {
            text-align: center;
            height: 29px;
            font-size: large;
        }
        .auto-style6 {
            width: 241px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style11 {
            width: 197px;
        }
        .auto-style13 {
            width: 197px;
            text-align: center;
        }
        .auto-style14 {
            height: 29px;
        }
        .auto-style15 {
            width: 197px;
            height: 23px;
            text-align: center;
        }
        .auto-style22 {
            width: 165px;
        }
        .auto-style24 {
            width: 165px;
            height: 23px;
        }
        .auto-style25 {
            width: 241px;
            height: 27px;
        }
        .auto-style26 {
            width: 197px;
            height: 27px;
        }
        .auto-style27 {
            width: 165px;
            height: 27px;
        }
        .auto-style28 {
            height: 27px;
        }
        .auto-style29 {
            width: 241px;
            height: 18px;
        }
        .auto-style30 {
            width: 197px;
            height: 18px;
        }
        .auto-style31 {
            width: 165px;
            height: 18px;
        }
        .auto-style32 {
            height: 18px;
        }
        .auto-style33 {
            width: 241px;
            height: 28px;
        }
        .auto-style34 {
            width: 197px;
            height: 28px;
        }
        .auto-style35 {
            width: 165px;
            height: 28px;
        }
        .auto-style36 {
            height: 28px;
        }
        .auto-style37 {
            width: 241px;
            height: 29px;
        }
        .auto-style38 {
            width: 197px;
            height: 29px;
        }
        .auto-style39 {
            width: 165px;
            height: 29px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style4" colspan="2"><strong style="color: #666666">Vehicle Registration</strong></td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style25"></td>
                    <td class="auto-style26">
                        <asp:Label ID="lbveh_id" runat="server" Text="Vehicle_Id"></asp:Label>
                    </td>
                    <td class="auto-style27">
                        <asp:Label ID="veh_id1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style28"></td>
                </tr>
                <tr>
                    <td class="auto-style29"></td>
                    <td class="auto-style30">
                        <asp:Label ID="lbregname" runat="server" Text="Name(Name of the vehicle owner)"></asp:Label>
                    </td>
                    <td class="auto-style31">
                        <asp:TextBox ID="lbveh_owner1" runat="server" ReadOnly="true" Width="155px"></asp:TextBox>
                    </td>
                    <td class="auto-style32"></td>
                </tr>
                <tr>
                    <td class="auto-style33"></td>
                    <td class="auto-style34">
                        <asp:Label ID="lbregsod" runat="server" Text="Son/Wife/Daughter of"></asp:Label>
                    </td>
                    <td class="auto-style35">
                        <asp:TextBox ID="tbregswd" runat="server" Width="155px"></asp:TextBox>
                    </td>
                    <td class="auto-style36"></td>
                </tr>
                <tr>
                    <td class="auto-style33"></td>
                    <td class="auto-style34">
                        <asp:Label ID="lbregdob" runat="server" Text="DOB"></asp:Label>
                    </td>
                    <td class="auto-style35">
                        <asp:TextBox ID="lbownerdob1" runat="server" ReadOnly="True" Width="155px"></asp:TextBox>
                    </td>
                    <td class="auto-style36"></td>
                </tr>
                <tr>
                    <td class="auto-style33"></td>
                    <td class="auto-style34">
                        <asp:Label ID="lbregaddress" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style35">
                        <asp:TextBox ID="lbowneraddress1" runat="server" ReadOnly="True" Width="155px"></asp:TextBox>
                    </td>
                    <td class="auto-style36"></td>
                </tr>
                <tr>
                    <td class="auto-style33"></td>
                    <td class="auto-style34">
                        <asp:Label ID="lbaddressproof" runat="server" Text="Address proof"></asp:Label>
                    </td>
                    <td class="auto-style35">
                        <asp:FileUpload ID="FileUpload3" runat="server" Width="155px" />
                    </td>
                    <td class="auto-style36"></td>
                </tr>
                <tr>
                    <td class="auto-style33"></td>
                    <td class="auto-style34">
                        <asp:Label ID="lbvehtype" runat="server" Text="Vehicle Type"></asp:Label>
                    </td>
                    <td class="auto-style35">
                        <asp:DropDownList ID="dpvehtype" runat="server" Width="155px">
                            <asp:ListItem>2 wheeler</asp:ListItem>
                            <asp:ListItem>3 wheeler</asp:ListItem>
                            <asp:ListItem>4 wheeler</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style36"></td>
                </tr>
                <tr>
                    <td class="auto-style33"></td>
                    <td class="auto-style34">
                        <asp:Label ID="lbvehcompany" runat="server" Text="Vehicle Company"></asp:Label>
                    </td>
                    <td class="auto-style35">
                        <asp:TextBox ID="tbvehcompany" runat="server" Width="155px"></asp:TextBox>
                    </td>
                    <td class="auto-style36"></td>
                </tr>
                <tr>
                    <td class="auto-style37"></td>
                    <td class="auto-style38">
                        <asp:Label ID="lbvehmodel" runat="server" Text="Vehicle Model"></asp:Label>
                    </td>
                    <td class="auto-style39">
                        <asp:TextBox ID="tbvehmodel" runat="server" Width="155px"></asp:TextBox>
                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style33"></td>
                    <td class="auto-style34">
                        <asp:Label ID="lbvehmanuf" runat="server" Text="Vehicle Manufacture Year"></asp:Label>
                    </td>
                    <td class="auto-style35">
                        <asp:TextBox ID="tbvehmanuf" runat="server" Width="155px"></asp:TextBox>
                    </td>
                    <td class="auto-style36"></td>
                </tr>
                <tr>
                    <td class="auto-style33"></td>
                    <td class="auto-style34">
                        <asp:Label ID="lbareaname" runat="server" Text="Area name"></asp:Label>
                    </td>
                    <td class="auto-style35">
                        <asp:TextBox ID="tbareaname" runat="server" Width="155px"></asp:TextBox>
                    </td>
                    <td class="auto-style36"></td>
                </tr>
                <tr>
                    <td class="auto-style33"></td>
                    <td class="auto-style34">
                        <asp:Label ID="lbchassis" runat="server" Text="Chassis Number"></asp:Label>
                    </td>
                    <td class="auto-style35">
                        <asp:TextBox ID="tbchassis" runat="server" Width="155px"></asp:TextBox>
                    </td>
                    <td class="auto-style36"></td>
                </tr>
                <tr>
                    <td class="auto-style33"></td>
                    <td class="auto-style34">
                        <asp:Label ID="lbfitness" runat="server" Text="Fitness Certificate"></asp:Label>
                    </td>
                    <td class="auto-style35">
                        <asp:FileUpload ID="FileUpload2" runat="server" Width="155px" />
                    </td>
                    <td class="auto-style36"></td>
                </tr>
                <tr>
                    <td class="auto-style33"></td>
                    <td class="auto-style34">
                        <asp:Label ID="lbregdate" runat="server" Text="Registration Date"></asp:Label>
                    </td>
                    <td class="auto-style35">
                        <asp:TextBox ID="tbregdate" runat="server" Width="155px"></asp:TextBox>
                    </td>
                    <td class="auto-style36"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style15"><strong>
                        <asp:Button ID="register_btn" runat="server" Text="Register" Width="73px" OnClick="register_btn_Click" ForeColor="#666666" />
                        </strong></td>
                    <td class="auto-style24"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>  
</asp:Content>
