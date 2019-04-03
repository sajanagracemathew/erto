<%@ Page Title="" Language="C#" MasterPageFile="~/erto_userforms/Site2.Master" AutoEventWireup="true" CodeBehind="vehicle_reg.aspx.cs" Inherits="ertosystem.erto_userforms.vehicle_reg1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            width: 166px;
            height: 56px;
        }
        .auto-style4 {
            text-align: center;
            height: 56px;
            font-size: large;
        }
        .auto-style14 {
            height: 29px;
            width: 279px;
        }
        .auto-style32 {
            height: 18px;
            width: 279px;
        }
        .auto-style36 {
            height: 28px;
            width: 279px;
        }
        .auto-style37 {
            width: 166px;
            height: 29px;
        }
        .auto-style48 {
            height: 30px;
            width: 279px;
        }
        .auto-style50 {
            width: 210px;
            height: 30px;
        }
        .auto-style51 {
            width: 210px;
            height: 18px;
        }
        .auto-style52 {
            width: 210px;
            height: 28px;
        }
        .auto-style53 {
            width: 210px;
            height: 29px;
            text-align: center;
        }
        .auto-style60 {
            width: 166px;
            height: 30px;
        }
        .auto-style61 {
            width: 166px;
            height: 18px;
        }
        .auto-style62 {
            width: 166px;
            height: 28px;
        }
        .auto-style67 {
            width: 173px;
            height: 30px;
        }
        .auto-style68 {
            width: 173px;
            height: 18px;
        }
        .auto-style69 {
            width: 173px;
            height: 28px;
        }
        .auto-style70 {
            width: 173px;
            height: 29px;
        }
        .auto-style71 {
            width: 155px;
            height: 30px;
        }
        .auto-style72 {
            width: 155px;
            height: 18px;
        }
        .auto-style73 {
            width: 155px;
            height: 28px;
        }
        .auto-style74 {
            width: 155px;
            height: 29px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style4" colspan="4"><strong style="color: #666666">Vehicle Registration</strong></td>
                </tr>
                <tr>
                    <td class="auto-style60"></td>
                    <td class="auto-style67">
                        <asp:Label ID="lbveh_id" runat="server" Text="Vehicle_Id"></asp:Label>
                    </td>
                    <td class="auto-style50">
                        <asp:Label ID="veh_id1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style71">
                        <asp:Label ID="lbdistrict" runat="server" Text="District"></asp:Label>
                    </td>
                    <td class="auto-style48">
                        <asp:DropDownList ID="ddistrict" runat="server" Width="174px" OnSelectedIndexChanged="ddistrict_SelectedIndexChanged">
                            <asp:ListItem>--Select District--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style60"></td>
                    <td class="auto-style67">
                        <asp:Label ID="lbuserid" runat="server" Text="User_Id"></asp:Label>
                    </td>
                    <td class="auto-style50">
                        <asp:TextBox ID="tbuserid" runat="server" ReadOnly="True" Width="165px"></asp:TextBox>
                    </td>
                    <td class="auto-style71">
                        <asp:Label ID="lbvehtype" runat="server" Text="Vehicle Type"></asp:Label>
                    </td>
                    <td class="auto-style48">
                        <asp:DropDownList ID="dpvehtype" runat="server" Width="172px" Height="29px">
                            <asp:ListItem>--Select Type--</asp:ListItem>
                            <asp:ListItem>2wheeler</asp:ListItem>
                            <asp:ListItem>3wheeler</asp:ListItem>
                            <asp:ListItem>4wheeler</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style61"></td>
                    <td class="auto-style68">
                        <asp:Label ID="lbregname" runat="server" Text="Name(Name of the vehicle owner)"></asp:Label>
                    </td>
                    <td class="auto-style51">
                        <asp:TextBox ID="lbveh_owner1" runat="server" ReadOnly="true" Width="165px"></asp:TextBox>
                    </td>
                    <td class="auto-style72">
                        <asp:Label ID="lbvehcompany" runat="server" Text="Vehicle Company"></asp:Label>
                    </td>
                    <td class="auto-style32">
                        <asp:TextBox ID="tbvehcompany" runat="server" Width="165px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style60"></td>
                    <td class="auto-style67">
                        <asp:Label ID="lbregsod" runat="server" Text="Son/Wife/Daughter of"></asp:Label>
                    </td>
                    <td class="auto-style50">
                        <asp:TextBox ID="tbregswd" runat="server" Width="165px"></asp:TextBox>
                    </td>
                    <td class="auto-style71">
                        <asp:Label ID="lbvehmodel" runat="server" Text="Vehicle Model"></asp:Label>
                    </td>
                    <td class="auto-style48">
                        <asp:TextBox ID="tbvehmodel" runat="server" Width="165px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style60"></td>
                    <td class="auto-style67">
                        <asp:Label ID="lbregdob" runat="server" Text="DOB"></asp:Label>
                    </td>
                    <td class="auto-style50">
                        <asp:TextBox ID="lbownerdob1" runat="server" ReadOnly="True" Width="165px"></asp:TextBox>
                    </td>
                    <td class="auto-style71">
                        <asp:Label ID="lbvehmanuf" runat="server" Text="Vehicle Manufacture Year"></asp:Label>
                    </td>
                    <td class="auto-style48">
                        <asp:TextBox ID="tbvehmanuf" runat="server" Width="165px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style62"></td>
                    <td class="auto-style69">
                        <asp:Label ID="lbregaddress" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style52">
                        <asp:TextBox ID="lbowneraddress1" runat="server" ReadOnly="True" Width="165px" Height="49px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="auto-style73">
                        <asp:Label ID="lbareaname" runat="server" Text="Area name"></asp:Label>
                    </td>
                    <td class="auto-style36">
                        <asp:TextBox ID="tbareaname" runat="server" Width="165px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style60"></td>
                    <td class="auto-style67">
                        <asp:Label ID="lbaddressproof" runat="server" Text="Address proof"></asp:Label>
                    </td>
                    <td class="auto-style50">
                        <asp:FileUpload ID="FileUpload3" runat="server" Width="165px" />
                    </td>
                    <td class="auto-style71">
                        <asp:Label ID="lbchassis" runat="server" Text="Chassis Number"></asp:Label>
                    </td>
                    <td class="auto-style48">
                        <asp:TextBox ID="tbchassis" runat="server" Width="165px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td class="auto-style67">
                        <asp:Label ID="lbregdate" runat="server" Text="Registration Date"></asp:Label>
                    </td>
                    <td class="auto-style50">
                        <asp:TextBox ID="tbregdate" runat="server" Width="165px"></asp:TextBox>
                    </td>
                    <td class="auto-style71">
                        <asp:Label ID="lbfitness" runat="server" Text="Fitness Certificate"></asp:Label>
                    </td>
                    <td class="auto-style48">
                        <asp:FileUpload ID="FileUpload2" runat="server" Width="169px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style60"></td>
                    <td class="auto-style67">
                        &nbsp;</td>
                    <td class="auto-style50">
                        &nbsp;</td>
                    <td class="auto-style71"></td>
                    <td class="auto-style48">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60"></td>
                    <td class="auto-style67">
                        &nbsp;</td>
                    <td class="auto-style50">
                        &nbsp;</td>
                    <td class="auto-style71"></td>
                    <td class="auto-style48">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style37"></td>
                    <td class="auto-style70">
                        &nbsp;</td>
                    <td class="auto-style53">
                        <strong>
                        <asp:Button ID="register_btn" runat="server" Text="Register" Width="73px" OnClick="register_btn_Click" ForeColor="#666666" />
                        </strong>
                    </td>
                    <td class="auto-style74"></td>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60"></td>
                    <td class="auto-style67">
                        &nbsp;</td>
                    <td class="auto-style50">
                        &nbsp;</td>
                    <td class="auto-style71"></td>
                    <td class="auto-style48">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60"></td>
                    <td class="auto-style67">
                        &nbsp;</td>
                    <td class="auto-style50">
                        &nbsp;</td>
                    <td class="auto-style71"></td>
                    <td class="auto-style48">&nbsp;</td>
                </tr>
                </table>  
</asp:Content>
