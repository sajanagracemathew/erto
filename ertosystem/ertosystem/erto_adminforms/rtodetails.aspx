<%@ Page Title="" Language="C#" MasterPageFile="~/erto_adminforms/Site1.Master" AutoEventWireup="true" CodeBehind="rtodetails.aspx.cs" Inherits="ertosystem.erto_adminforms.rtodetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #000000;
            text-align: center;
        }
        .auto-style2 {
            margin-left: 105px;
            margin-top: 3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table border="0" >
        <tr>
            <td height="15px"></td>
        </tr>
        <tr>
            <td height="10px" class="auto-style1"><strong>RTO DETAILS</strong></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gdvStudent" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="Username" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style2" GridLines="Vertical" Width="1043px">       
                      <AlternatingRowStyle BackColor="#DCDCDC" />
                      <Columns>  
                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"  />                        
                                        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                        <asp:BoundField DataField="Mobile_number" HeaderText="Mobile_number" SortExpression="Mobile_number" />
                                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                        <asp:BoundField DataField="DOJ" HeaderText="DOJ" SortExpression="DOJ" />
                                        <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />
                                        <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        </Columns> 
                      <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                      <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                      <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                      <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                      <SortedAscendingHeaderStyle BackColor="#0000A9" />
                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                      <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView> 
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myConn %>" SelectCommand="SELECT [Name], [DOB], [Gender], [Address], [Mobile_number], [Email], [DOJ], [Photo], [Username], [Password] FROM [rtoregistration_table]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
