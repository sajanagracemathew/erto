<%@ Page Title="" Language="C#" MasterPageFile="~/erto_userforms/Site2.Master" AutoEventWireup="true" CodeBehind="testresult.aspx.cs" Inherits="ertosystem.erto_userforms.testresult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #000000;
            font-size: medium;
        }
        .auto-style2 {
            margin-left: 360px;
        }
        .auto-style3 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="center">
        <br />
        <span class="auto-style1"><strong>TEST RESULT</strong></span></p>
    <p class="center">
        &nbsp;</p>
    <p class="auto-style2">
        <asp:Label ID="lbuserid" runat="server" CssClass="auto-style3" Text="User_id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbuserid" runat="server" ReadOnly="True"></asp:TextBox>
    </p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        <asp:Label ID="lbmarks" runat="server" Text="Total marks" CssClass="auto-style3"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;<asp:TextBox ID="tbscore" runat="server" ReadOnly="True"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbappln_no" runat="server" Text="LL Application No" Visible="False"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="tbappln_no" runat="server" ReadOnly="True" Visible="False" Width="138px"></asp:TextBox>
    &nbsp;<asp:Label ID="lbnote" runat="server" ForeColor="#336600" Text="(Notedown this number)" Visible="False"></asp:Label>
    </p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<strong><asp:TextBox ID="tbstatus" runat="server" Height="26px" ReadOnly="True" Width="391px"></asp:TextBox>
        </strong>&nbsp;&nbsp;
        <asp:TextBox ID="tbstatus1" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
    </p>
    <p class="auto-style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p class="auto-style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="llapply_btn" runat="server" BackColor="Silver" CssClass="col-xs-offset-0" ForeColor="#333333" Text="APPLY" Visible="False" Width="148px" OnClick="llapply_btn_Click" />
    </p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        <br />
    </p>
</asp:Content>
