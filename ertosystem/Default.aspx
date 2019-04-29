<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ertosystem._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="jumbotron">
    
        <div id="logo-container">
       <asp:Image ID="Image1" runat="server" width="500px" Height="250px" ImageUrl="~/Photos/home.jpg"  />
            </div>
    </div>
    
    <div class="row">
        <div class="col-md-4">
            <h2>
                
                Our Pages</h2>
            <p>
                <ul class="footer_list">
                <li>Home</li>
                <li>About Us</li>
                <li>User Registration</li>
                <li>Contact Us</li>
                </ul>
                
            </p>
            
        </div>
        <div class="col-md-4">
            <h2>Our Services</h2>
            <p>
                <ul>
                    <li>Registration</li>
                    <li>Learner's License</li>
                    <li>Driving License</li>
                    <li>Renewal of License</li>
                    <li>Transfer&NOC</li>
                </ul>
            </p>
            
        </div>
        <div class="col-md-4">
            <h2>About Us</h2>
            <p>
                <marquee direction="up" behavior="scroll" scrollamount="1" scrolldelay="50">
                E-RTO has been designed to automate the process of registration
                of vehicle,issuing driving license and other services.System can make the daily 
                activities efficient and providing the fast response to store and retrieve information.
                </marquee>
            </p>
            
        </div>
    </div>

</asp:Content>
