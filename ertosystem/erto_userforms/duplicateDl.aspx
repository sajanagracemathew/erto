<%@ Page Title="" Language="C#" MasterPageFile="~/erto_userforms/Site2.Master" AutoEventWireup="true" CodeBehind="duplicateDl.aspx.cs" Inherits="ertosystem.erto_userforms.duplicateDl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        <strong>Issue of Duplicate Driving License</strong></p>
    <p class="auto-style2">
        <br />
    </p>
    <p class="auto-style1">
        <asp:Label ID="labellicenseno" runat="server" Text="License No"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="textboxlicenseno" runat="server" CssClass="col-xs-offset-0"></asp:TextBox>
    </p>
    <p class="auto-style1">
        <asp:Label ID="labelname" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="textboxname" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style1">
        <asp:Label ID="labeldob" runat="server" Text="DOB"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="textboxdob" runat="server"></asp:TextBox>
    </p>
    <p>
    </p>
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        <asp:Button ID="dlduplicate_btn" runat="server" OnClick="Button1_Click" Text="Apply Duplicate" Width="132px" />
    </p>
    <p class="auto-style1">
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
